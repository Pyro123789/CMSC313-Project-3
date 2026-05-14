	.file	"main.c"
	.text
	.globl	isPrintable
	.type	isPrintable, @function
isPrintable:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$31, -4(%rbp)
	jbe	.L2
	cmpb	$126, -4(%rbp)
	ja	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	isPrintable, .-isPrintable
	.section	.rodata
.LC0:
	.string	"%08X"
.LC1:
	.string	" ~ "
.LC2:
	.string	" %02X"
.LC3:
	.string	" |"
.LC4:
	.string	"|"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -44(%rbp)
	jmp	.L5
.L12:
	addl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -40(%rbp)
	jmp	.L6
.L7:
	movl	-40(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -40(%rbp)
.L6:
	movl	-40(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L7
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -36(%rbp)
	jmp	.L8
.L11:
	movl	-36(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	isPrintable
	testl	%eax, %eax
	je	.L9
	movl	-36(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	jmp	.L10
.L9:
	movl	$46, %edi
	call	putchar@PLT
.L10:
	addl	$1, -36(%rbp)
.L8:
	movl	-36(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L11
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L5:
	movq	stdin(%rip), %rdx
	leaq	-32(%rbp), %rax
	movl	$17, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L12
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
