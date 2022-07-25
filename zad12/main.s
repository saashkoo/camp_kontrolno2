	.file	"main.c"
	.text
	.globl	generate
	.type	generate, @function
generate:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	call	rand@PLT
	cvtsi2sdl	%eax, %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-8(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	generate, .-generate
	.section	.rodata
.LC3:
	.string	"%lf "
.LC4:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	clock@PLT
	movl	%eax, %edi
	call	srand@PLT
	movl	$0, -140(%rbp)
	jmp	.L4
.L5:
	movsd	.LC1(%rip), %xmm0
	movq	.LC2(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	generate
	movq	%xmm0, %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -96(%rbp,%rdx,8)
	addl	$1, -140(%rbp)
.L4:
	cmpl	$9, -140(%rbp)
	jle	.L5
	movl	$0, -136(%rbp)
	jmp	.L6
.L7:
	movl	-136(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rax
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$1, -136(%rbp)
.L6:
	cmpl	$9, -136(%rbp)
	jle	.L7
	movl	$10, %edi
	call	putchar@PLT
	movq	asc@GOTPCREL(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	desc@GOTPCREL(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	sum_num@GOTPCREL(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	abbs@GOTPCREL(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-144(%rbp), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	qsort@PLT
	movl	$0, -132(%rbp)
	jmp	.L8
.L9:
	movl	-132(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rax
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$1, -132(%rbp)
.L8:
	cmpl	$9, -132(%rbp)
	jle	.L9
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	4290772992
	.long	1105199103
	.align 8
.LC1:
	.long	0
	.long	1077149696
	.align 8
.LC2:
	.long	0
	.long	-1070333952
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
