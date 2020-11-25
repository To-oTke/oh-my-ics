# 3.7 I/O

## Outline

* Unix 的 I/O
* 记录文件元数据
* 目录
* 共享文件
* I/O 重定向

## Textbook

* 10.1
* 10.2
* 10.3
* 10.4
* 10.6
* 10.7
* 10.8
* 10.9

## I, and O

### Who's in, who's out?

Input/Output，「一种在内存和外部设备之间拷贝数据的过程」。

通常我们以 CPU 为心，把从「外部设备」到「内存」的过程叫做 Input（例如，从键盘读取输入）；把「内存」到「外部设备」的过程叫做 Output（例如，把数据输出到显示器上）。

### System Call

任何一个合理可用的操作系统都应该提供「读取输入」和「打印输出」的功能。在 Unix 而言，这些事宜通过「系统调用」实现。

例如，对这个超简单的小程序来说：

```c++
#include <iostream>

using namespace std;

int main()
{
	cout << "Hello, world!" << endl;
}
```

用 `strace` 跟踪一下她所进行的系统调用：

```shell
yue@ubuntu:~/Desktop$ strace ./foolish 
execve("./foolish", ["./foolish"], 0x7ffe53fbe930 /* 52 vars */) = 0
brk(NULL)                               = 0x5588fbd6f000
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=69905, ...}) = 0
mmap(NULL, 69905, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f27d37de000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libstdc++.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0p\217\t\0\0\0\0\0"..., 832) = 832
fstat(3, {st_mode=S_IFREG|0644, st_size=1956680, ...}) = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f27d37dc000
mmap(NULL, 1971648, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f27d35fa000
mprotect(0x7f27d368f000, 1294336, PROT_NONE) = 0
mmap(0x7f27d368f000, 991232, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x95000) = 0x7f27d368f000
mmap(0x7f27d3781000, 299008, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x187000) = 0x7f27d3781000
mmap(0x7f27d37cb000, 57344, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1d0000) = 0x7f27d37cb000
mmap(0x7f27d37d9000, 9664, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7f27d37d9000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\200l\2\0\0\0\0\0"..., 832) = 832
fstat(3, {st_mode=S_IFREG|0755, st_size=2000480, ...}) = 0
mmap(NULL, 2008696, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f27d340f000
mmap(0x7f27d3434000, 1519616, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x25000) = 0x7f27d3434000
mmap(0x7f27d35a7000, 299008, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x198000) = 0x7f27d35a7000
mmap(0x7f27d35f0000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1e0000) = 0x7f27d35f0000
mmap(0x7f27d35f6000, 13944, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7f27d35f6000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libm.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\0\362\0\0\0\0\0\0"..., 832) = 832
fstat(3, {st_mode=S_IFREG|0644, st_size=1365096, ...}) = 0
mmap(NULL, 1364240, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f27d32c1000
mmap(0x7f27d32d0000, 679936, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0xf000) = 0x7f27d32d0000
mmap(0x7f27d3376000, 618496, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0xb5000) = 0x7f27d3376000
mmap(0x7f27d340d000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x14b000) = 0x7f27d340d000
close(3)                                = 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libgcc_s.so.1", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\0203\0\0\0\0\0\0"..., 832) = 832
fstat(3, {st_mode=S_IFREG|0644, st_size=100736, ...}) = 0
mmap(NULL, 103504, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f27d32a7000
mmap(0x7f27d32aa000, 69632, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x3000) = 0x7f27d32aa000
mmap(0x7f27d32bb000, 16384, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x14000) = 0x7f27d32bb000
mmap(0x7f27d32bf000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x17000) = 0x7f27d32bf000
close(3)                                = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f27d32a5000
arch_prctl(ARCH_SET_FS, 0x7f27d32a5f40) = 0
mprotect(0x7f27d35f0000, 12288, PROT_READ) = 0
mprotect(0x7f27d32bf000, 4096, PROT_READ) = 0
mprotect(0x7f27d340d000, 4096, PROT_READ) = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f27d32a3000
mprotect(0x7f27d37cb000, 45056, PROT_READ) = 0
mprotect(0x5588fb0d0000, 4096, PROT_READ) = 0
mprotect(0x7f27d381a000, 4096, PROT_READ) = 0
munmap(0x7f27d37de000, 69905)           = 0
brk(NULL)                               = 0x5588fbd6f000
brk(0x5588fbd90000)                     = 0x5588fbd90000
fstat(1, {st_mode=S_IFCHR|0620, st_rdev=makedev(136, 0), ...}) = 0
write(1, "Hello, world!\n", 14Hello, world!
)         = 14
exit_group(0)                           = ?
+++ exited with 0 +++
```

上面的全都不用看，唯有最後一行 `write(1, "Hello, world!\n", 14)` 真的在干活。

> 注意，`strace` 在分析系统调用时，真的会把这个程序跑一次。
>
> 所以，你看到混乱的 `write(1, "Hello, world!\n", 14Hello, world!
> )         = 14`，其实是 `write(1, "Hello, world!\n", 14)				 = 14` 和 `Hello, world!\n` 混一块了…

`write` 不仅仅可以打印到屏幕（设置第一个参数为 `1`，也就是 `sysout`），还可以通过提供不同的 `fd` 来写到其他文件里。`read` 同理。可以从键盘读，也可以从任何文件读。

## File System

文件系统…您去看看 CSE 好啦。

总归记住一点，不要把「文件夹」叫做文件夹，因为它并不是包含着所有的、其内部所有文件的「文件夹」。

只是书的目录而已。目录只是引用了其中的文件。

> 当然，和真实世界的书不同，或许循着目录找到的东西是另一个目录…这个另说。

