	.file	"main.c"
	.text
	.globl	isPrintable
	.type	isPrintable, @function
isPrintable:
.LFB23:
	.cfi_startproc
	endbr64
	subl	$32, %edi
	cmpb	$94, %dil
	setbe	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	isPrintable, .-isPrintable
	.section	.rodata.str1.1,"aMS",@progbits,1
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
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movl	$16, %r14d
	leaq	.LC0(%rip), %r15
	leaq	.LC2(%rip), %r13
	jmp	.L3
.L5:
	movl	$46, %edi
	call	putchar@PLT
.L6:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L13
.L7:
	movzbl	(%rbx), %edi
	leal	-32(%rdi), %eax
	cmpb	$94, %al
	ja	.L5
	movzbl	%dil, %edi
	call	putchar@PLT
	jmp	.L6
.L13:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	addl	$16, %r14d
.L3:
	movq	%rsp, %rdi
	movq	stdin(%rip), %rdx
	movl	$17, %esi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L14
	movl	%r14d, %edx
	movq	%r15, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	.LC1(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movq	%rsp, %rbx
	leaq	16(%rsp), %r12
	movq	%rbx, %rbp
.L4:
	movzbl	0(%rbp), %edx
	movq	%r13, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$1, %rbp
	cmpq	%r12, %rbp
	jne	.L4
	leaq	.LC3(%rip), %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	jmp	.L7
.L14:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L15
	movl	$0, %eax
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L15:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
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
