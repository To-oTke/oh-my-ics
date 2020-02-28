# 1.3 Binary Operations

## The GNU C Compiler Toolchain

在我们用 GCC 的时候，我们在用什么？

我们前面已经提到过了，在我们编译一个 `.c` 文件的时候，实际上经历了「预处理」、「编译」、「汇编」、「链接」等多个步骤。每个步骤都有独立的程序进行处理。

### Source Program

以 `.c`、`.h` 结尾的源代码文件和头文件（通常）以一般 ASCII 编码格式储存。因此，我们的 Hello World 程序看起来是这样：

```python
#include <stdio.h>

int main() {
    printf("hello, world\n");
}
```

实际上是这样的一串字节序列：

![image-20200228111704733](1-3-bops.assets/image-20200228111704733.png)

当然，无论在什么计算机平台上，这段代码都无法作为可执行文件执行的。

### Modified Source Program

我们将 Source Program（纯文本形式）送入预处理器（Preprocessor）之后，预处理器将会清除注释、展开 Macro（宏），并给出一个「修改过的源代码文件」。

> 可以通过调用程序 `cpp` 或者 `gcc -E` 来单独应用预处理器。

同时，Preprocessor 还会生成形如 `#[file id] [file name] [line id]` 的文件 + 行号注释，以确保可以重定位到未经预处理的源代码文件中。

生成文件的扩展名为 `.i`，他和 Source Program 的编码方式一致，同样也是合法的 C 代码。

### Assembly Code

将上面已经去除注释和宏的预处理过後的代码交给编译器（狭义），就可以得到机器相关的汇编代码，后缀名为 `.s`。

> 可以通过调用程序 `cc1` 或者 `gcc -S` 来单独应用编译器（狭义）。

注意这里的汇编代码仍然是以 ASCII 码助记法表示的指令序列，类似于：

```assembly
multstore:
	pushq %rbx
	movq  %rdx,%rbx
	call  mult2
	movq  %rax, (%rbx)
	popq  %rbx
	ret
```

只不过这已经很接近于机器可执行的指令了。

### Relocatable Object File

上面的 Assembly Code 已经非常接近于机器指令了，只需要按照对应表将其转化为二进制的表示形式（再处理一些 LABEL 事宜），就可以直接成为二进制文件了。

> 可以通过调用程序 `as` 或者 `gcc -c` 来单独应用汇编器。

这一步大概是最没技术含量的了。

### Executable Object Code

Relocatable Object File 和 Executable 到底还差哪一步呢？Well，假如一个程序里完全没有用到任何库函数，仅仅使用了 C 语言本身的保证、System Call 和自己的实现，那就不需要进行任何链接（Link），自己就可以执行。

然而大部分程序都不是这样的，他们都或多或少地、静态或动态地引用了外部的库函数。而这些函数的实现都没有在源文件中以任何形式表现出来。

由 C 实现的库函数同样需要经历上面的过程，变成一个 ROF；而它们并不可能直接被执行（首先他们就没有 作为入口点的 `main` 函数）。所以，需要一个程序把不同的 ROF 给结合在一起，并且处理好他们之间互相调用的关系，最後生成一个真真正正可执行的文件。没有确定的后缀名。

这一步，就叫做链接。具体的操作会在后面的章节里具体讲到。

> 可以通过调用程序 `ld` 或者 `gcc -o` 来单独应用链接器。

总的步骤大概是这样。

![image-20200228114934865](1-3-bops.assets/image-20200228114934865.png)

