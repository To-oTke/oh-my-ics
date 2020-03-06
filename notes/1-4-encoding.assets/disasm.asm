darwin:	file format Mach-O 64-bit x86-64

Disassembly of section __TEXT,__text:
_sum:
       0:	55 	pushq	%rbp
       1:	48 89 e5 	movq	%rsp, %rbp
       4:	89 7d fc 	movl	%edi, -4(%rbp)
       7:	89 75 f8 	movl	%esi, -8(%rbp)
       a:	8b 75 fc 	movl	-4(%rbp), %esi
       d:	03 75 f8 	addl	-8(%rbp), %esi
      10:	89 f0 	movl	%esi, %eax
      12:	5d 	popq	%rbp
      13:	c3 	retq