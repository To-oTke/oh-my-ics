2.17 `malloc`

> 论「`malloc`」

## Textbook

* 9.9

## Outline

* C 标准库中的 `malloc`（当然还有 `free`）
* 动态的内存分配

## Dynamic Memory Allocation

### Intro

动态内存分配是很必要的。并不是所有的内存需要都可以在编译器确定下来。例如，网络上传来的一个数据包，其大小就是不确定的（需要根据包头动态分配）。

再例如 C 惯用法中，接收用户输入的缓冲区大概会这么写：

```c
char buf[I_BET_NO_ONE_WILL_INPUT_ANYTHING_GREATER_THAN_THIS];
```

这种做法由于其内存浪费（只输入几个字符而已，为什么却消耗 1024 字节的栈空间？）、以及比较严重的、涉及到栈溢出的安全问题（参见 ICS Lab 3），已经不怎么使用了。

目前稍微靠谱一点的可变字符串实现（例如 `std::basic_string`）都提供了安全的、动态、变长的功能。这些都基于内存的动态分配。

### Explicit & Implicit

显式好还是隐式好？

#### C: Explicit

在 C 中，要想申领一块动态分配的空间，就得使用 `size` 参数，调用 `xxxalloc` 家族的函数，得到一个 `void *` 指针。需要归还这部分空间时，用这个指针 `void *` 作为参数调用 `free` 即可。

只读写 `(void *)` 到 `(void *) + size` 区域内的内存是安全的；但是如果意外写出了这个区域（尤其是这块空间的边缘）很可能会导致严重问题。

可以看到，C 中对于动态内存分配没有多少包装：要多少就申请，用完了就归还。想要读写外部的内存也没人拦着，但是要承担挂掉的风险。

#### C++: Fusion

C++ 的 `new`（包括 `new []`） 和 `delete`（包括 `delete []`）基本也是这种基于指针和编程者自觉的套路。如果编程者忘记了（或者是恶意地这么干），想要弄崩内存分配机制简直太容易了。

不过，C++ 的功能实在太多，以至于我们可以用完全不同的手法来实现这一功能。其中的智能指针算是对于指针的一层封装。

她利用了 C++ 中关于类的隐式析构的规则：即，对于一个非内建类型的局部实例，在离开其作用域时，其析构函数会自动被调用。

这就允许我们写出这样的代码（示例）：

```c++
template<typename T>
class SmartPointer {
public:
    SmartPointer(T* p) : p(p) {}
    ~SmartPointer() {
        if (this->p != nullptr) {
            delete this->p;
        }
    }
private:
    // make it private and invisible to outside
    T* p;
}

some_scope {
    SmartPointer<int> smp(new int);
    
    // use smp in this scope
    
    // before leaving this scope
    // SmartPointer<T> will be destructed automatically
    // no need to worry about memory leak
}
```

实际上标准库的智能指针实现比这个实现复杂的多。但是大概说明了一种思路：有可能使用 C++ 实现隐式的内存自动释放。

> 实际上苹果之前对着 Objective-C 搞的 ARC（自动引用计数）那一套也跟这没两样。就是计算引用次数，在失效位置自动插入释放函数而已。

#### Others: Implicit

再高级一点的语言很多就没有手动管理内存的机制了，都是直接上 Garbage Collection（内存占了先占着，等没了再清理释放）。

这个就不是这门课该讨论的了（交给 Compilers）。

### Terminologies

#### Heap

动态分配的内存会被放置在堆（Heap）上。

![image-20200915113323366](2-17-malloc.assets/image-20200915113323366.png)

和逆向增长地址的 Stack（栈）不同，其内存地址一般是正向增长的。

#### Memory Leak

根据 Explicit DMA 的语法，调用 `free` 的参数必须是分配时得到的 `void *` 指针。换句话说，如果你弄丢了分配时的 `void *` 指针，那么你就永远没有办法归还这块内存了。

这个唤作「内存泄漏」，或者「記憶體流失」。

#### Double-Free

如果我们拿着一个指针 Free 了两次，就会产生「两次释放」错误。

第一次释放之后，保存着内存分配块的元数据已经改变了，再次对其进行 Free 会产生不可预知的情况，大部分情况下是 Segmentation Fault 告终。

#### Void-Free

如果拿一个并不是 `alloc` 来的地址去给 `free`（虚空释放），也会造成问题。如果精心捏造数据结构，可能会导致更糟糕的后果。

#### `sbrk`

`brk` 指的是运行时堆顶（即堆中字节的最高地址）的地址。

Linux 提供了 `sbrk()` 系统调用来调节 Heap 的大小。`

`Linux <=====> Memory Allocator <=====> User App`

`sbrk()` 是给 Memory Allocator 用的。用户不会直接用这个。 

## Implementation

### Usage

1. `#include <stdlib.h>`

总是包含必要的头文件。

2. `void *malloc(size_t size)`

`malloc` 函数的参数是一个无符号整数。指明要申请的内存的字节数。

> 注意千万不要不加检查地传一个有符号数；类似于 `-1`、`-2` 的小负整数在被隐式转换为 `size_t` 时会变得非常大，绝对能让 `malloc` 失败。

如果分配成功，则会返回一个非 `NULL` 的地址（其中的内容**不保证**全为 0）；如果分配失败，则会返回 `NULL`。

3. `void free(void *p)`

如果 `p` 是一个指向分配块的有效指针，那么 `free` 会将其释放。如果 `p` 是 `NULL`，则什么事都不会做。

如果 `p` 非 `NULL`，又不是一个合法的分配块，可能导致不可预计的结果。

> 论断：所有 `malloc` 返回值都可以安全地被传入 `free`。

类似于

```c
if (p != NULL) free(p);
```

这样的检查是没有意义的；因为 `free(NULL)` 是安全的，尽管实际上不会做任何事。

### Assumptions

作为一个内存分配器，你已经从 OS 方面拿到了一整块 Memory Chunk，而且随后还能任意增减其大小。

#### Requirements

现在，面对用户 App，你需要能够：

* 处理任何顺序的内存分配请求
* 尽可能及时地分配内存
* 尽量节约 Memory Chunk，少向 OS 要
* 只能在堆上分配
* 每个分配块要对齐
* 已经分配的块不能挪动
	* 除非所有者显式地调用 `realloc`

这些要求都不容易实现，有的甚至还相互冲突。

例如，Memory Chunk 的利用率和分配的时间就是相互矛盾的。

> 如果我们永远不释放内存，总是一连串向后分 Blocks，内存没了就找 OS 要，那分配时间肯定是相当快的（$O(1)$ 的）。
>
> 但是如果我们仔细检查每一种情况，分析出最佳的分配策略，这又会耽误太多的时间。

#### Definitions

我们量化地定义一下「效果」和「效率」：

* Throughput（吞吐量）
	* 单位时间内完成的请求数量。
	* 由于 `malloc` 不涉及到内存初始化，因此（在不引起 Chunk 重申请地情况下）可以认为分配耗时和要求分配的内存大小不直接相关。
* Memory Utilization（内存利用率）
	* 当前所有活跃请求所占用的内存，除以当前堆的大小
	* 在堆大部分空的时候，Memory Utilization 会很小，但这是因为大部分资源还处于空闲状态
	* 这个参量不能很好的衡量分配的有效性！
* Peak Memory Utilization
	* 当前所有活跃请求所占用的内存，除以「从堆底到最高分配位置的地址差 $H_k$」
	* 这样，就相当于衡量了「已被分配区段」的内存使用率，更好地体现了分配器算法的有效性。

#### Fragmentations

Peak Memory Utilization 会降低的原因是什么？毫无疑问是「碎片」。

我们将碎片分为两种：

* Internal Fragments

内部碎片，指的是由于「块内部对齐」、或是「保存块元数据信息」等造成的空间浪费。

很容易可以算出这些碎片的大小。

* External Fragments

指的是空余空间的碎片化。

例如，下面的分配状况会导致

![image-20200915124736906](2-17-malloc.assets/image-20200915124736906.png)

这一 `malloc` 无法直接完成，因为虽然空余空间足够，但却不连续（这可能是由于之前的分配顺序导致的），因此只好 `sbrk`。

这种「碎片」的大小就不太好量化，也不好优化了。

