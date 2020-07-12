	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 16	sdk_version 10, 16
	.globl	_cmp                    ## -- Begin function cmp
	.p2align	4, 0x90
_cmp:                                   ## @cmp
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-4(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	movl	$1, %eax
	movl	$4294967295, %ecx       ## imm = 0xFFFFFFFF
	cmoval	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
