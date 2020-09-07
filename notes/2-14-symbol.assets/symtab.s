	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 0
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	callq	_incr
	movl	$66, %eax
	movq	%rax, _bufp1(%rip)
	callq	_incr
	xorl	%eax, %eax
	movq	_ccc@GOTPCREL(%rip), %rcx
	movl	$4, (%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function incr
_incr:                                  ## @incr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	_incr.count(%rip), %eax
	addl	$1, %eax
	movl	%eax, _incr.count(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_bufp0                  ## @bufp0
	.p2align	3
_bufp0:
	.quad	_buf

.zerofill __DATA,__bss,_bufp1,8,3       ## @bufp1
	.comm	_ccc,4,2                ## @ccc
.zerofill __DATA,__bss,_incr.count,4,2  ## @incr.count
.subsections_via_symbols
