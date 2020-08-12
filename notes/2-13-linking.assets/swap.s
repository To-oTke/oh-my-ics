	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 16	sdk_version 11, 0
	.globl	_swap                   ## -- Begin function swap
	.p2align	4, 0x90
_swap:                                  ## @swap
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_bufp1@GOTPCREL(%rip), %rax
	movq	_buf@GOTPCREL(%rip), %rcx
	addq	$4, %rcx
	movq	%rcx, (%rax)
	movq	_bufp0(%rip), %rcx
	movl	(%rcx), %edx
	movl	%edx, -4(%rbp)
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movq	_bufp0(%rip), %rcx
	movl	%edx, (%rcx)
	movl	-4(%rbp), %edx
	movq	(%rax), %rax
	movl	%edx, (%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_bufp0                  ## @bufp0
	.p2align	3
_bufp0:
	.quad	_buf

	.comm	_bufp1,8,3              ## @bufp1
.subsections_via_symbols
