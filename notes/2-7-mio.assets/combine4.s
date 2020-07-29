	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 16	sdk_version 11, 0
	.globl	_combine4               ## -- Begin function combine4
	.p2align	4, 0x90
_combine4:                              ## @combine4
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	_vec_length
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_get_vec_start
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	jle	LBB0_3
## %bb.1:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	addq	(%rax,%rdx,8), %rcx
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	LBB0_2
LBB0_3:
	movq	%rcx, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
