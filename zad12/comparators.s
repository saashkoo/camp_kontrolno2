	.file	"comparators.c"
	.text
	.globl	asc
	.type	asc, @function
asc:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC0(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L9
	movl	$0, %eax
	jmp	.L4
.L9:
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L10
	movl	$1, %eax
	jmp	.L4
.L10:
	movl	$-1, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	asc, .-asc
	.globl	desc
	.type	desc, @function
desc:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC0(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L19
	movl	$0, %eax
	jmp	.L14
.L19:
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L20
	movl	$-1, %eax
	jmp	.L14
.L20:
	movl	$1, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	desc, .-desc
	.globl	sum_num
	.type	sum_num, @function
sum_num:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC0(%rip), %xmm1
	andpd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC0(%rip), %xmm1
	andpd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L22
.L23:
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	addl	%edx, -8(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
.L22:
	cmpl	$0, -16(%rbp)
	jne	.L23
	jmp	.L24
.L25:
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	addl	%edx, -4(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
.L24:
	cmpl	$0, -12(%rbp)
	jne	.L25
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	sum_num, .-sum_num
	.globl	abbs
	.type	abbs, @function
abbs:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC0(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	.LC0(%rip), %xmm2
	andpd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC0(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L35
	movl	$0, %eax
	jmp	.L30
.L35:
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC0(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	.LC0(%rip), %xmm2
	andpd	%xmm2, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L36
	movl	$1, %eax
	jmp	.L30
.L36:
	movl	$-1, %eax
.L30:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	abbs, .-abbs
	.section	.rodata
	.align 16
.LC0:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC1:
	.long	2696277389
	.long	1051772663
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
