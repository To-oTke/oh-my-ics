	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 16	sdk_version 11, 0
	.globl	_sumvec                 ## -- Begin function sumvec
	.p2align	4, 0x90
_sumvec:                                ## @sumvec
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$8, -12(%rbp)
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	-16(%rbp), %edx
	movl	%edx, -16(%rbp)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_1
LBB0_4:
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
