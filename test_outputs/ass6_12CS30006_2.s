.LC0:
	.string	"Fibonacci numbers (recursion)\n"
.LC1:
	.string	"First 20 fibonacci numbers are:\n"
.LC2:
	.string	"\n"
.LC3:
	.string	"Factorials of first 15 numbers are:\n"
	.text
	.globl	fib
	.type	fib, @function
fib:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$1, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	cmpl	%eax, 8(%ebp)
	jle		.L0
	jmp		.L1
	jmp		.L1
.L0:
	movl	8(%ebp), %eax
	leave
	ret
	jmp		.L1
.L1:
	movl	$1, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	pushl	%eax
	call	fib
	addl	$4, %esp
	movl	%eax, -16(%ebp)
	movl	$2, %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	pushl	%eax
	call	fib
	addl	$4, %esp
	movl	%eax, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	leave
	ret
	leave
	ret
	.size	fib, .-fib
	.globl	fact
	.type	fact, @function
fact:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$1, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	cmpl	%eax, 8(%ebp)
	jle		.L2
	jmp		.L3
	jmp		.L3
.L2:
	movl	$1, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	leave
	ret
	jmp		.L3
.L3:
	movl	$1, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	pushl	%eax
	call	fact
	addl	$4, %esp
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	imull	%edx, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	leave
	ret
	leave
	ret
	.size	fact, .-fact
	.globl	main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$288, %esp
	pushl	$.LC0
	call	prints
	addl	$4, %esp
	movl	%eax, -4(%ebp)
	movl	$20, %eax
	movl	%eax, -88(%ebp)
	movl	$20, %eax
	movl	%eax, -172(%ebp)
	pushl	$.LC1
	call	prints
	addl	$4, %esp
	movl	%eax, -180(%ebp)
	movl	$0, %eax
	movl	%eax, -184(%ebp)
	movl	-184(%ebp), %eax
	movl	%eax, -176(%ebp)
.L4:
	movl	$20, %eax
	movl	%eax, -188(%ebp)
	movl	-188(%ebp), %eax
	cmpl	%eax, -176(%ebp)
	jl		.L6
	jmp		.L7
	jmp		.L7
.L5:
	movl	-176(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	%eax, -192(%ebp)
	jmp		.L4
.L6:
	movl	-176(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -196(%ebp)
	movl	-176(%ebp), %eax
	pushl	%eax
	call	fib
	addl	$4, %esp
	movl	%eax, -200(%ebp)
	movl	-196(%ebp), %eax
	movl	-200(%ebp), %edx
	movl	%edx, -84(%ebp, %eax)
	jmp		.L5
.L7:
	movl	$0, %eax
	movl	%eax, -204(%ebp)
	movl	-204(%ebp), %eax
	movl	%eax, -176(%ebp)
.L8:
	movl	$20, %eax
	movl	%eax, -208(%ebp)
	movl	-208(%ebp), %eax
	cmpl	%eax, -176(%ebp)
	jl		.L10
	jmp		.L11
	jmp		.L11
.L9:
	movl	-176(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp		.L8
.L10:
	movl	-176(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -216(%ebp)
	movl	-216(%ebp), %eax
	movl	-84(%ebp, %eax), %edx
	movl	%edx, -220(%ebp)
	movl	-220(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -224(%ebp)
	pushl	$.LC2
	call	prints
	addl	$4, %esp
	movl	%eax, -228(%ebp)
	jmp		.L9
.L11:
	pushl	$.LC3
	call	prints
	addl	$4, %esp
	movl	%eax, -232(%ebp)
	movl	$0, %eax
	movl	%eax, -236(%ebp)
	movl	-236(%ebp), %eax
	movl	%eax, -176(%ebp)
.L12:
	movl	$15, %eax
	movl	%eax, -240(%ebp)
	movl	-240(%ebp), %eax
	cmpl	%eax, -176(%ebp)
	jl		.L14
	jmp		.L15
	jmp		.L15
.L13:
	movl	-176(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	%eax, -244(%ebp)
	jmp		.L12
.L14:
	movl	-176(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -248(%ebp)
	movl	-176(%ebp), %eax
	pushl	%eax
	call	fact
	addl	$4, %esp
	movl	%eax, -252(%ebp)
	movl	-248(%ebp), %eax
	movl	-252(%ebp), %edx
	movl	%edx, -168(%ebp, %eax)
	jmp		.L13
.L15:
	movl	$0, %eax
	movl	%eax, -256(%ebp)
	movl	-256(%ebp), %eax
	movl	%eax, -176(%ebp)
.L16:
	movl	$15, %eax
	movl	%eax, -260(%ebp)
	movl	-260(%ebp), %eax
	cmpl	%eax, -176(%ebp)
	jl		.L18
	jmp		.L19
	jmp		.L19
.L17:
	movl	-176(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	%eax, -264(%ebp)
	jmp		.L16
.L18:
	movl	-176(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -268(%ebp)
	movl	-268(%ebp), %eax
	movl	-168(%ebp, %eax), %edx
	movl	%edx, -272(%ebp)
	movl	-272(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -276(%ebp)
	pushl	$.LC2
	call	prints
	addl	$4, %esp
	movl	%eax, -280(%ebp)
	jmp		.L17
.L19:
	movl	$0, %eax
	movl	%eax, -284(%ebp)
	movl	-284(%ebp), %eax
	leave
	ret
	leave
	ret
	.size	main, .-main
