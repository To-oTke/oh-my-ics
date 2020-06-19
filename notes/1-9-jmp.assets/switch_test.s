	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.globl	_foo                    ## -- Begin function foo
	.p2align	4, 0x90
_foo:                                   ## @foo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $edi killed $edi def $rdi
	leaq	LJTI0_0(%rip), %rax
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	$4, %edi
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	decl	%edi
	cmpl	$4, %edi
	ja	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movslq	(%rax,%rdi,4), %rcx
	addq	%rax, %rcx
	movl	$2, %edi
	jmpq	*%rcx
LBB0_3:
	xorl	%eax, %eax
	callq	_baz
	jmp	LBB0_6
LBB0_5:
	xorl	%eax, %eax
	callq	_bar
LBB0_6:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_1, LBB0_1-LJTI0_0
.set L0_0_set_5, LBB0_5-LJTI0_0
.set L0_0_set_3, LBB0_3-LJTI0_0
.set L0_0_set_4, LBB0_4-LJTI0_0
LJTI0_0:
	.long	L0_0_set_1
	.long	L0_0_set_5
	.long	L0_0_set_3
	.long	L0_0_set_3
	.long	L0_0_set_4
	.end_data_region
                                        ## -- End function

.subsections_via_symbols
