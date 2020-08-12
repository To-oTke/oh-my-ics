# 2.13 Linking

## Textbook

* 7.1
* 7.2
* 7.3
* 7.4

## Outline

* 链接、及其作用
* 编译器的工作
* 静态链接的输入和输出

## Linking

### Intro

#### Monolithic Compile

想象一下到目前为止我们能理解的「编译」过程，这要求我们提供一个包含 `main` 函数的合法源文件（姑且称之为 `main.c`）。

其中可能包含有其他引入的 `.h` 头文件（`#include` 进来的），但在预处理阶段就被替换成了对应的文件内容。

因此，在这种观点下，是一个庞大的（Monolithic）源文件被交给编译器进行编译，生成可执行文件。

![image-20200812160708562](2-13-linking.assets/image-20200812160708562.png)

这种编译方式的缺点显而易见：由于不存在模块化，即便是进行了很小范围的更动都需要大规模的重编译。

同样是因为没有模块化，因此公共函数无法共享，或许每个可执行文件都要自带公共库（如 `printf` 的实现等），非常浪费。

#### Module-based Compile

理想中（实际上现实中也是这样啦），我们应该可以在不同的 `.c` 文件中写函数，然后把它们编译到同一个可执行文件中，且他们之间可以互相调用。

举个例子，我们可以这么写代码：

```c
/* main.c */
void swap();

int buf[2] = {1, 2};

int main()
{
    swap();
    return 0;
}
```

```c
/* swap.c */
extern int buf[];

int *bufp0 = &buf[0];
int *bufp1;

void swap()
{
    int temp;
    bufp1 = &buf[1];
    temp = *bufp0;
    *bufp0 = *bufp1;
    *bufp1 = temp;
}
```

然后将他们一同编译，得到一个可执行的程序。

说起来很容易，但是，这套流程具体该怎么实现？

### Separate Compilation

> 所谓的「分离式编译」。

#### Process

目前的编译步骤是，首先将每个源文件分离编译成「可重定位对象文件」（Relocatable Object Files），然后由专门的链接器将她们合成一个可执行文件。

这样区分的好处是，每个模块在单独编译成 ROF（`.o` 文件）之后，可以直接和其他 ROF 自由组合，不必再经过编译步骤。

![image-20200812162114012](2-13-linking.assets/image-20200812162114012.png)

#### Linker

那么，Linker 是啥？

将传入的 ROF 中所有的代码片段和数据片段打包成一个二进制文件，同时确认模块之间的相互调用，并修正这些调用的内存地址。

Linking 这个过程可以在编译时进行（直接生成可执行文件），也可以在加载时进行（在一个程序启动前加载库文件），也可以在程序执行时动态进行（动态装载库的能力）。

这一节我们先讨论「编译时进行」的、静态的链接过程。

#### Compiler's Drivers

首先，我们还是回到 `gcc` 工具链上来：

* `cpp`（Preprocessor）
	* C 预处理器
	* 对源文件进行预处理、清除注释、展开宏等操作
* `cc1`（Compiler）
	* C 编译器
	* 词法分析
	* 语法分析
	* 生成 AST
	* 分配寄存器
	* 流出汇编指令
* `as`（Assembler）
	* C 汇编器
	* 根据汇编指令生成二进制 ROF 文件
* `ld`（Linker）
	* 链接器
	* 将多个 ROF 文件合并生成单个可执行文件

如果我们手动代替 `gcc` 的职责、分别调用这些功能的话，大概应该这么写：

```shell
unix$ gcc -Og -o prog main.c swap.c 
unix$ cpp [other args] main.c /tmp/main.i  
unix$ cc1 /tmp/main.i main.c -Og [other args] -o /tmp/main.s 
unix$ as [other args] -o /tmp/main.o /tmp/main.s 
	# <similar process for swap.c>
unix$ ld -o prog [system obj files] /tmp/main.o /tmp/swap.o 
unix$
```

### Relocatable Object File

#### Example

依然以 `main.c`、`swap.c` 为例，这两个源文件会被编译成什么样子？

首先分析一下其中的函数、变量以及调用关系。

* 函数

	* 两个，`main()` 和 `swap()`。
	* 其中 `main()` 函数调用 `swap()`。

* 全局变量

	* `buf`、`bufp0`、`bufp1` 都是全局变量。

	* `buf`、`bufp0` 被赋予了初始值，而 `bufp1` 没有（他会被隐含地初始化为 0）。

	* > 是否有被赋非 0 初始值很重要，请留意。

#### Compile It!

为了方便观察，我们借助 `-S` 指令生成汇编代码来观察。

##### `swap.c`

观察 `swap.c` 中的三个全局变量被对待的方式，可以看到：

```assembly
	.section	__DATA,__data
	.globl	_bufp0                  ## @bufp0
	.p2align	3
_bufp0:
	.quad	_buf
	.comm	_bufp1,8,3              ## @bufp1
.subsections_via_symbols
```

三位都被声明在 `.section __DATA,__data` 区段。

`_bufp0`（对应源代码中的 `bufp0`）被用 `.globl` 修饰。

而在下方则是用 `_bufp0:` 定义，且赋予初值 `_buf` 的 `_bufp0` Label，以及 `.comm` 修饰的 `_bufp1`。

> 注意区别：`_bufp0: ...` 是定义全局变量，`.comm _bufp1,x,x` 也是定义全局变量，但是 `.quad _buf` 是引用 `_buf` 变量，将该内存位置对应的 64 位值搬移到指定的内存位置来。