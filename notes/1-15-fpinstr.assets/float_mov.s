	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 16	sdk_version 10, 16
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function set_float
LCPI0_0:
	.long	1078530000              ## float 3.14159012
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_set_float
	.p2align	4, 0x90
_set_float:                             ## @set_float
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
