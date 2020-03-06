# 1.4 Encoding

## Outline

* Virtual Memory
* Byte Ordering
* Representing Strings and Code
* Integer Encoding

## Virtual Memory

所谓「虚拟内存」。

### Abstraction

总是要记得，「虚拟内存」并不是实际存在的。

他让单个程序「以为」自己能够独享大量、连续（原文是 monolithic，磐石般的）的内存空间——然而这个空间本身就是虚幻的。

> 实际的计算机系统上不可能只有一个程序，物理内存一定不会是这么分布的。

### Implementation

VM 这层抽象的实现同时包括硬件和软件层面。

#### Software Layer

软件上，大家都默认采用虚拟内存空间进行寻址。在编码的指令中，所有地址都是 VMA。

因此，被送到 CPU 里面的指令同样也是 VMA 地址。

#### Hardware Layer

但是 CPU 最终是要跟 Physical Main Memory 打交道的；

因此在 CPU 和 Memory 之间需要一个翻译器将 VMA 翻译成 PMA，从而去 Memory 中寻址。

#### Other Units

为了实现 VM 的抽象，必须要有支持 VM 模型的软件程式码。因此，编译器和运行时系统也需要对此提供支持。

### Memory Space

![image-20200306112411028](1-4-encoding.assets/image-20200306112411028.png)

对于每一个程序来说，虚拟内存空间都是这样的：从底向上，内存地址逐渐增长。而且都以为整个虚拟内存空间中只有自己和 Kernel 两部分。

> 实际上，每个进程都通过自己独立的 Page Table 映射到了不同的物理内存页中。

## Byte Ordering

上面讲到了…内存空间的事宜。那么，在内存中放什么东西、怎么放东西，又有什么讲究呢？

### Gulliver's Travels

黑童话《格列佛游记》里的故事…Little-Endian 国和 Big-Endian 国为了决定从哪头敲碎鸡蛋而世代交恶，爆发内战。

这两个词倒是传承下来了。

### Ordering Bytes

主要有三种主流的方式。

#### Little Endian

小端：把较低位的字节放在较低的地址位处。

> Intel 采用这种方法。

#### Big Endian

大端：把较低位的字节放在较高的地址位处。

> Sun 和 IBM 采用这种方法。

#### Bi-Endian

比较新潮的处理器可以被配置为使用小端法和大端法中的任意一种。

> 如，ARM 处理器就可以通过置 System Control Register 中的特定一 Bit 来决定是使用大端法还是小端法。

> 例如，「汉」字的 Unicode 编码是 `6C49`。称 `6C` 为高位字节，`49` 为低位字节。
>
> 那么，大端法就会将其编码为 `6C 49`，即高位 `6C` 放在低地址位处；`49` 则放在高地址位处。
>
> 小端法反过来，是 `49 6C`。

> 注意无论大端小端，一个字节内的比特位排列顺序是不会变的。总是符合我们直觉的「由高位到低位依次书写」。

> 注意无论大端小端，字符串（也就是 Byte Span）的排列顺序也是固定的。地址位符合直觉地从索引 0 处向后递增。

## Accessing an Object

### Transportability

上面提到的「虚拟内存」也好，「字节序列」也好，在我们写代码的时候几乎都不需要关心。

因为实际上标准库和编译器会为我们处理不同机器的字节序事宜，而操作系统则会为我们解决虚拟内存的映射问题。

我们不能也不应该去插手这些机器相关的事情。这会损害可移植性。

### Pointer

在 C/C++ 里，要访问一块内存空间里的内容，需要用到一个名为「指针」的对象。

#### What's a pointer?

也就是一个特殊的对象而已。这里面包含两件信息：一是他指向对象的内存地址；二是他指向对象的类型。

声明为 `int *` 的指针类型意思是它指向的是 `int` 类型。或者可以用 Swift 的风格，写成 `Pointer<int>`。

#### Pointer to Pointer

另外，别忘了指针本身也就是个对象。因此，指针也可以指向指针——`int **` 也就是 `Pointer<Pointer<int>>`。

> 如果按照 C++11 之前的标准，或许还得写成 `Pointer<Pointer<int> >`。

考虑到类型系统在被编译之後会完全丢失，所以实际上在汇编代码里，指针就仅仅表现为一个内存地址而已。

#### `show_bytes` Function

上面提到过，字节序对于程序来说是不透明的。但是标准又有一样保证：字符串（对 C 来说，`char[]`）的字节序始终和字符位置保持一致。

因此，我们只要把任意类型的指针转化成 `char *`，并把它作为 `char[]` 进行读取，就能得到其真正的内存布局了。

```c
#include "show_bytes.h"
#include <stdio.h>

void show_bytes( byte_pointer start, size_t len ) {
    size_t i;
    for ( i = 0; i < len; i++ )
        printf( "0x%p\t0x%.2x\n", start + i, start[ i ] );
    printf( "\n" );
}
```

用这个实用程序，可以看到不同机器下的实际内存布局。

![image-20200306121404475](1-4-encoding.assets/image-20200306121404475.png)

