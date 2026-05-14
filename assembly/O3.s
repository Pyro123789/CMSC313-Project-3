	.file	"main.c"
	.text
	.p2align 4
	.globl	isPrintable
	.type	isPrintable, @function
isPrintable:
.LFB23:
	.cfi_startproc
	endbr64
	subl	$32, %edi
	xorl	%eax, %eax
	cmpb	$94, %dil
	setbe	%al
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
	.section	.text.startup,"ax",@progbits
	.p2align 4
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
	movl	$16, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	.LC2(%rip), %r12
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
	movq	%rsp, %r13
	.p2align 4,,10
	.p2align 3
.L4:
	movq	stdin(%rip), %rdx
	movl	$17, %esi
	movq	%r13, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L14
	movl	%r14d, %edx
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	movq	%r13, %rbx
	movl	$2, %edi
	leaq	16(%rsp), %rbp
	movq	%r13, %r15
	call	__printf_chk@PLT
	leaq	.LC1(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L5:
	movzbl	(%r15), %edx
	movq	%r12, %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$1, %r15
	call	__printf_chk@PLT
	cmpq	%rbp, %r15
	jne	.L5
	leaq	.LC3(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L16:
	movl	$46, %edi
	addq	$1, %rbx
	call	putchar@PLT
	cmpq	%rbp, %rbx
	je	.L15
.L8:
	movzbl	(%rbx), %edi
	leal	-32(%rdi), %eax
	cmpb	$94, %al
	ja	.L16
	call	putchar@PLT
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L8
.L15:
	leaq	.LC4(%rip), %rdi
	addl	$16, %r14d
	call	puts@PLT
	jmp	.L4
.L14:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L17
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
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
.L17:
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
