# 1.7 Data Move

## Textbook

* 3.1

## Outline

* 用于数据搬移的指令

## Moving

### Trivial Moving

#### Format

一般化的移动指令可以写作：

```assembly
mov src, dest
```

其中，`src` 代表数据搬移的来源；`dest` 代表目的地。

> 注意 x86-64 的 `mov` 指令是 `src` 在左，`dest` 在右。AArch 刚好相反。

#### `src` and `dest`

`src` 和 `dest` 的可能格式包括：

* 立即数（Immediate）
  * 例如，`$42`
* 寄存器（Register）
  * 例如，`%rbx`
* 内存地址（Memory Address）
  * 例如，`(%rsp)`

#### Limitations

只有下面五种 `src` 和 `dest` 的类型组合是被允许的：

* Imm => Reg
  * 例如，`mov $8, %r9`
* Mem => Reg（Load）
  * 例如，`mov (%rsp), %rax`
* Reg => Reg
  * 例如，`mov %r10, %r11`
* Imm => Mem
  * 例如，`mov $42, (%rbp)`
* Reg => Mem（Store）
  * 例如，`mov %rax, (%rbp)`

被排除在外的四种情况也可以分析一下：

* 首先是三种「立即数」作为 `dest` 的。
  * 这肯定是不可能做到的
* 另一种是 Mem => Mem。
  * 这种情况被排除的原因是，CPU 跟 Memory 本身还是分立的。
  * 在一个时钟周期内，做不到把数据从 Memory 转移到 CPU，然后立即转移回内存中。

#### Normal Moving

注意，可以在 `mov` 後增加後缀来决定拷贝数据的长度。

* `mov`
  * 一般地，不指定拷贝长度
* `movb`
  * Move Byte，拷贝一个字节
* `movw`
  * Move Word，移动两个字节（一个字）
* `movl`
  * Move Long Word，移动四个字节（两个字）
* `movq`
  * Move Quad Word，移动八个字节（四个字）
* `movabsq`
  * Move Absolute Quad Word，移动八个字节（四个字）

> `movabsq` 存在的意义是，`movq` 无法处理 `src` 为八字节立即数的情况，而 `movabsq` 可以。

`movb`、`movw` 都只会设置自己被要求的低位，而不去改变 `dest` 的高位。但 `movl` 在设置低 32 位之後，会同时将高 32 位全部置为 0。

> 只有在使用 `movl` 指令时，才会有这个特殊情况。
>
> 这一现象被称为 Zero Extension。

#### Zero Extension

使用 `movz` 家族函数，可以将 `src` 中数据用 0 补长度後，拷贝扩展後的数字。

例如：`movzbw` 就是把 `src` 的一个 `byte` 值扩展为 `word`，并拷贝到 `dest`。

`movz` 家族函数一共有：

* `movzbw`
* `movzbl`
* `movzbq`
* `movzwl`
* `movzwq`

注意，这里没有 `movzlq`，因为 `movl` 本身就会把高 32 位置为 0。

#### Sign Extension

和 Zero Extension 类似，不过它补的位是 `src` 的最高位。这样补位可以保证原值的符号不变。

`movs` 家族函数一共有：

* `movsbw`
* `movsbl`
* `movsbq`
* `movswl`
* `movswq`
* `movslq`

因为 `movslq` 的语义和 `movl` 不同，因此这条指令单独列出。

#### Example

以下面的 C 代码为例：

```c
long exchange(long *xp, long y)
{
    long x = *xp;
    *xp = y;
    return x;
}
```

用 `-Og` 编译成汇编的结果是：

```assembly
	...
_exchange:                              ## @exchange
	.cfi_startproc
	pushq	%rbp
	movq	%rsp, %rbp
	
	movq	(%rdi), %rax
	movq	%rsi, (%rdi)
	
	popq	%rbp
	retq								## -- End function
    ...
```

可以观察出，第一个参数 `xp` 被放在 `%rdi` 里；第二个参数 `y` 被放在 `%rsi` 里。

跟我们的代码直接对应的汇编只有两句：

```assembly
	movq	(%rdi), %rax
	movq	%rsi, (%rdi)
```

第一句取出 `*xp` 并准备返回；第二句用 `y` 的值更新 `xp`。

简单明了，行数甚至和 C 代码一样（不

### Moving with offset

非常常见的一个场景就是：通过数组头指针和数组索引来访问某一地址。

假如按照上面的方式来索引，就必须先用一个临时寄存器、一次算术运算来寻址。很麻烦不是吗？

那我们来看看编译器是怎么处理的。

#### Example

```c
long a[16];

void f(){
	long i;
	for (i = 0; i < 16; i++)
		a[i]=i;
}
```

拜读汇编，可以看到关键代码是：

```assembly
	## ...
	## in a loop
	movq	%rax, (%rcx,%rax,8)
	incq	%rax
	## ...
```

`incq %rax` 代表把 `%rax` 的值递增 1。而上面这个 `movq` 的 `dest`…似乎不是我们见到的语法！

#### Memory with offset

实际上，要在 `mov` 中制定一个内存地址，不仅仅可以使用 `(%reg)`；所有内存寻址语法包括：

* `(%reg)`
  * 把 `%reg` 寄存器中的值视为一个内存地址
* `(%reg, $imm)`
  * 把 `%reg` 寄存器中的值加上偏移量 `$imm` 後视为一个内存地址
  * 注意这里的「加」是纯粹的数字加和
  * 和 C 里的指针加不一样，每个单位总是对应一字节
* `(%reg, $imm1, $imm2)`
  * 把 `%reg` 寄存器中的值加上偏移量 `$imm1 * $imm2` 後视为一个内存地址
  * 通常来说，把 `$imm1` 称为 `offset`（偏移量），把 `$imm2` 称为 `stride`（步长）

这里的语法就是第三种；`(%rcx,%rax,8)` 代表以 `%rcx` 的内容（也就是变量 `a`）为内存基地址，以 8 字节（也就是编译器决定的 `sizeof(long)`）为步长，移动 `%rax` 步的内存位置。

这里，就是 `long a` 数组的第 `i` 个元素所在的内存地址。

## Special Moving: Stack Ops

众所周知，Stack 数据类型的操作只有两种：1) 取出栈顶元素，并将栈顶指针回缩；2) 在栈顶元素上方新增一元素，并将栈顶指针扩张。

对于汇编中的这个「倒立栈」，两种操作的代码实现大概是这样：

```assembly
push_into_stack:
	subq $8, %rsp
	movq <src>, (%rsp)
	
pop_outta_stack:
	movq (%rsp), %rax
	addq $8, <dest>
```

因为默认 `%rsp` 中总是保存当前栈顶指针，因此这些代码是完全「上下文无关」的；只要提供 `<src>` 或者 `<dest>`，`push` 和 `pop` 就能够工作。

因此，Intel 直接把这两种操作实现成了指令，分别叫做 `pushq <src>` 和 `popq <dest>`，干的事基本就是上面这些。

也算是比较另类的一种 Moving 了。

