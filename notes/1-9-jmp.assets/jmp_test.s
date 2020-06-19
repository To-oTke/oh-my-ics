	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.globl	_test_if                ## -- Begin function test_if
	.p2align	4, 0x90
_test_if:                               ## @test_if
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	LBB0_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB0_3
LBB0_2:
	movq	$1, -8(%rbp)
LBB0_3:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_test_loop              ## -- Begin function test_loop
	.p2align	4, 0x90
_test_loop:                             ## @test_loop
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	jbe	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -8(%rbp)
	jmp	LBB1_1
LBB1_3:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_test_goto              ## -- Begin function test_goto
	.p2align	4, 0x90
_test_goto:                             ## @test_goto
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	jbe	LBB2_3
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_4
LBB2_3:
	jmp	LBB2_5
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -8(%rbp)
	jmp	LBB2_1
LBB2_5:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
