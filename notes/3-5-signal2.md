# 3.5 Signal II

> 接着上次的说

## Textbook

* 8.5 (still...)

## Outline

* 写自己的信号处理程序
* 讨厌的并行错误
* 等待某个信号的到来

## Handler

### Is it safe?

应该记在心里：信号处理函数可能被在任何地方中断掉——被调度、插入另一个信号处理函数。

每一个信号处理函数都应该 a) 做好被其他信号处理函数中断的准备；b) 不要把自己上层信号处理函数的状态弄乱。

### Guidelines

遵循下面的准则，可以减少你遇上 Nasty Bugs 的可能性：

* 越短越好，快速返回。

甚至可以仅仅设置一个标识位，就返回。一个庞大的 Handler 毫无疑问会增加 Concurrency Bugs 出现的可能。

* 只调用异步信号安全的函数。

Async-Signal-Safe。那些状态具有原子性，不会被打断的函数。

像是 `printf` 之类的函数就不是安全的。打断了的话，就不能保证打印出有意义的结果了。

> 因为 `printf` 是流式打印的；一个个解读传入的 Format String Token；读出来一个 `write` 一部分。这能安全才有鬼。

下面这里整理了所有「安全的」函数——也就是说，如果 Handler 里面没有用到这之外的函数，那么他就是信号安全的。

![image-20201124135508177](3-5-signal2.assets/image-20201124135508177.png)

> 但是用这些函数能做到的事情…非常有限。甚至没有办法安全地打印一个非字符串的类型。

## Safe I/O Package

安全的 I/O 包包…

```c
#include <csapp.h>

ssize_t sio_putl(long v);
ssize_t sio_puts(char s[]);
// returns number of bytes transferred if OK, -1 on error
void sio_error(long v);
// returns nothing
```

其实现方法其实也没啥大不了的。就是先把要打印的东西转成字节流放到 `char buf[]` 里。

```c
ssize_t sio_puts(char s[]) /* Put string */
{ 
	return write(STDOUT_FILENO, s, sio_strlen(s));
}

ssize_t sio_putl(long v) /* Put long */
{
	char s[128];
	sio_ltoa(v, s, 10); /* Based on K&R itoa() */
	return sio_puts(s);
}

void sio_error(char s[]) /*Put error message and exit */
{
 	sio_puts(s);
	_exit(1);
}
```

因为 `write` 走系统调用，那肯定不会被打断（那是 OS Kernel 的事情…）

* 保护好 `errno`。

在你能拿到 `errno` 的第一时间，就把它保存到内存中。否则，随时被打断的层叠 Handler 都可能会改写 `errno`。在你的 Handler 结束时，把 `errno` 还原。

就像 Callee-saved Register 一样，你有责任保护好 `errno`。否则，如果在你之前处理的 Handler 出现了问题，你要负全责。

## Concurrency Bug

> Very Nasty!

```c
/* WARNING: This code is buggy */
void handler( int sig ) {
    int   olderrno = errno;
    pid_t pid;

    while ( ( pid = waitpid( -1, NULL, 0 ) > 0 ) > 0 ) { /*reap a zombie child */
        deletejob( pid );                                /*delete the child from the job list*/
    }
    if ( errno != ECHILD )
        sio_error(“waitpid error ”);
    errno = olderrno;
}
```

对于这个 Handler，我们看看这么利用的话会如何：

```c
int main( int argc, char** argv ) {
    int pid;

    Signal( SIGCHLD, handler );
    initjobs(); /* initialize the job list */

    while ( 1 ) {
        if ( ( pid = Fork() ) == 0 ) { /*Child process */
            Execve(“/ bin / ls”, argv, NULL );
        }
        addjob( pid ); /* Parent process adds the child to the job list */
    }
    exit( 0 );
}
```

假如我们在 `addjob` 和 `deletejob` 时被中断了，会如何？

这就引出了第三条 Guideline：

* 在读、写全局变量之前，先 Block 掉所有的 Signals。
	* （当然，读完了得 Unblock 掉，还原原来的屏蔽列表。）

```c
Sigprocmask( SIG_BLOCK, &mask_all, &prev_all );
addjob( pid ); /* Add the child to the job list */
Sigprocmask( SIG_SETMASK, &prev_all, NULL );
```

```c
SigProcmask( SIG_BLOCK, &mask_all, &prev_all );
deletejob( pid ); /*delete the child from the job list*/
SigProcmask( SIG_SETMASK, &prev_all, NULL );
```

这样，就不会出现「读写全局变量」的时候，出现「突然被打断」的情形了。

除此之外，在 `Fork()` 前后，也应该防止 `SIG_CHLD` 信号的传入。否则，可能出现「同一个信号被父子双方接受」这样的大问题。

* 把全局变量用 `volatile` 修饰，以免其被放入寄存器。

> 因为如果走 Signal Handler 的路数，寄存器的值难保不会被破坏的。

* 如果是需要原子计数的全局信号量，用 `sig_atomic_t`，而不是普通的 `flag++`。

> 大家都知道 `a++` 这种操作不是原子的。但 `sig_atomic_t` 则提供了原子的信号量增减。

## Waiting for you

> 特意，只等待你

我想要特地等待某个信号的来临。如果他不来，我就什么都不干。该怎么实现？

### Have a Good Sleep

很简单：一个全局信号量 `pid`。初始设定为 0。

主循环（Mainloop）里这么写：

```c
while (!pid) {
    sleep(1);
}
```

Handler 里这么写：

```c
void handler(int sig) {
    pid = 1;
}
```

 这样，在信号到来前主循环大部份时间都在睡觉。OS 不会为了他耗费多少时间的。

问题也很显然：就算我的 Handler 现在来了，可能还得睡 1 秒钟才能反应。响应太慢了。

调整 `sleep` 时间呢？长了响应不及时；慢了就在 Loop 中浪费了太多时间。

总归是不好。

### `sigsuspend`

```c
#include <signal.h>
int sigsuspend(const sigset_t *mask);
// returns −1
```

传入一系列 `mask`，并且挂起当前的进程，直到 `sigset_t *mask` 中的某一个信号来到为止。

他的返回值根本不重要；但，还是象征性地返回一个 -1。

> 注意：如果来到的信号会让当前进程 Terminate，那么 `sigsuspend` 并不会返回；因为整个程序都完蛋了。

> 如果来到的信号有一个自定义的 Handler，那么会先执行 Handler，再返回 `sigsuspend`。

这样，只要把 `sigsuspend` 写在主函数里，就会一直等待着，等待 `mask` 的到来。

