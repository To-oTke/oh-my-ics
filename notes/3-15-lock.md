# 3.15 Lock

## Lock

是简化版的「信号量」。是最大值仅为 1 的信号量。是状态只能在 0、1 之间切换的信号量。

### API

```c
pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
// or:
int rc = pthread_mutex_init(&lock, NULL);

pthread_mutex_lock(&lock);
balance = balance + 1;
pthread_mutex_unlock(&lock);
```

`mutex` 一般特指 Lock，因为它就是 **Mut**ual **Ex**clusion 的简称。

除了 P/V 以外，还有两个函数可用：

```c
int pthread_mutex_trylock(pthread_mutex_t *mutex);
int pthread_mutex_timedlock(pthread_mutex_t *mutex,
			         struct timespec *abs_timeout);
```

`trylock` 在 `mutex` 空闲的时候获取锁，并且返回「Set!」标识；如果 `mutex` 当前被占用，那么不等了立即返回「Occupied!」标识。

`timedlock` 呢，就是尝试一段时间拿锁；如果没拿到再返回。

都是很简朴的语法。

### Evaluating a Lock

如何衡量「锁」的好坏？这里有一些通用的判定要素：

* Fairness

公平吗？即，是否可能出现「大家同样是等，但是有的人特别倒霉，一直排不上号」的情况？

* Performance

对性能的影响大吗？即，如果我一个双核系统用了你的锁算法，结果居然比单核跑还慢了，那这肯定不能是一个好的锁算法。

### Various Locks

硬件锁。在单核心的时代，大家都是这么防止其他进程插入自己的执行流的：

```c
void lock() {
    DisableInterrupts();
}

void unlock() {
    EnableInterrupts(); 
}
```

众所周知，进程上下文的切换就是通过中断实现的。所以关闭了中断，意味着不会有人能夺走我的控制权。

这在多核心情况下显然是不行的。即使不出现中断，也可能有其他核心运行着的进程和你发生竞险。