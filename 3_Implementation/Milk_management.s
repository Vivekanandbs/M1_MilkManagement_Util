	.file	"Milk_management.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"enter 1.for Buffalo's milk \n 2.for cow's milk "
.LC1:
	.string	"%d"
.LC2:
	.string	"Enter Quantity of milk \n "
.LC3:
	.string	"%f"
.LC4:
	.string	"Enter value of fat \n "
.LC5:
	.string	"Invalid Input"
	.text
	.globl	Adding_Data
	.type	Adding_Data, @function
Adding_Data:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	jne	.L2
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	jmp	.L6
.L2:
	movl	-12(%rbp), %eax
	cmpl	$2, %eax
	jne	.L4
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	jmp	.L6
.L4:
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L6:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Adding_Data, .-Adding_Data
	.section	.rodata
	.align 8
.LC6:
	.string	"Quantity of Buffalo's Milk :%f \n"
.LC7:
	.string	"Quantity of Cow's Milk :%f \n"
.LC8:
	.string	"Total milk sold %f \n"
	.text
	.globl	Quantity_Of_Milk
	.type	Quantity_Of_Milk, @function
Quantity_Of_Milk:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movss	8(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-24(%rbp), %rax
	movss	8(%rax), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Quantity_Of_Milk, .-Quantity_Of_Milk
	.globl	Cost_Of_Milk
	.type	Cost_Of_Milk, @function
Cost_Of_Milk:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movss	4(%rax), %xmm1
	movss	.LC9(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rax
	movss	12(%rax), %xmm1
	movss	.LC10(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movss	8(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-8(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-24(%rbp), %rax
	movss	16(%rax), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Cost_Of_Milk, .-Cost_Of_Milk
	.section	.rodata
	.align 8
.LC11:
	.string	"\n Enter the 1.To input data \n 2.To get quantity of milk sold \n 3.To get total cost of milk \n 4.TO exit"
.LC12:
	.string	"Total Cost of Milk : %f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
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
.L17:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-40(%rbp), %eax
	cmpl	$4, %eax
	je	.L11
	cmpl	$4, %eax
	jg	.L12
	cmpl	$3, %eax
	je	.L13
	cmpl	$3, %eax
	jg	.L12
	cmpl	$1, %eax
	je	.L14
	cmpl	$2, %eax
	je	.L15
	jmp	.L12
.L14:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	Adding_Data
	jmp	.L16
.L15:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	Quantity_Of_Milk
	jmp	.L16
.L13:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	Cost_Of_Milk
	movd	%xmm0, %eax
	movl	%eax, -36(%rbp)
	cvtss2sd	-36(%rbp), %xmm0
	leaq	.LC12(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L16
.L11:
	movl	$0, %edi
	call	exit@PLT
.L12:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
.L16:
	jmp	.L17
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC9:
	.long	1086324736
	.align 4
.LC10:
	.long	1084227584
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
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
