	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	_a@GOTPCREL(%rip), %rcx
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rax, (%rcx,%rax,8)
	incq	%rax
	cmpq	$16, %rax
	jne	LBB0_1
## %bb.2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.comm	_a,128,4                ## @a

.subsections_via_symbols
