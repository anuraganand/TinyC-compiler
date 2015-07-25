.LC0:
	.string	" "
.LC1:
	.string	"\n"
.LC2:
	.string	"Bubble Sort Algorithm\n"
.LC3:
	.string	"Enter number of elements : "
.LC4:
	.string	"Enter array elements : \n"
.LC5:
	.string	"Input array: \n"
.LC6:
	.string	"Sorted array: \n"
	.text
	.globl	swap
	.type	swap, @function
swap:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	leave
	ret
	.size	swap, .-swap
	.globl	bubbleSort
	.type	bubbleSort, @function
bubbleSort:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$96, %esp
	movl	$0, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -4(%ebp)
.L0:
	movl	12(%ebp), %eax
	cmpl	%eax, -4(%ebp)
	jl		.L2
	jmp		.L9
	jmp		.L9
.L1:
	movl	-4(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-4(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	jmp		.L0
.L2:
	movl	$0, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -8(%ebp)
.L3:
	movl	12(%ebp), %eax
	movl	-4(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -24(%ebp)
	movl	$1, %eax
	movl	%eax, -28(%ebp)
	movl	-24(%ebp), %eax
	movl	-28(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	cmpl	%eax, -8(%ebp)
	jl		.L5
	jmp		.L1
	jmp		.L8
.L4:
	movl	-8(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-8(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	jmp		.L3
.L5:
	movl	-8(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	(%ecx, %eax), %edx
	movl	%edx, -44(%ebp)
	movl	$1, %eax
	movl	%eax, -48(%ebp)
	movl	-8(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	(%ecx, %eax), %edx
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jg		.L6
	jmp		.L4
	jmp		.L7
.L6:
	movl	-8(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -64(%ebp)
	movl	8(%ebp), %eax
	movl	-64(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -68(%ebp)
	movl	$1, %eax
	movl	%eax, -72(%ebp)
	movl	-8(%ebp), %eax
	movl	-72(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -80(%ebp)
	movl	8(%ebp), %eax
	movl	-80(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	pushl	%eax
	movl	-68(%ebp), %eax
	pushl	%eax
	call	swap
	addl	$8, %esp
	jmp		.L4
.L7:
	jmp		.L4
.L8:
	jmp		.L1
.L9:
	leave
	ret
	.size	bubbleSort, .-bubbleSort
	.globl	printArray
	.type	printArray, @function
printArray:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$0, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L10:
	movl	12(%ebp), %eax
	cmpl	%eax, -4(%ebp)
	jl		.L12
	jmp		.L13
	jmp		.L13
.L11:
	movl	-4(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-4(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	jmp		.L10
.L12:
	movl	-4(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	(%ecx, %eax), %edx
	movl	%edx, -20(%ebp)
	movl	-20(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -24(%ebp)
	pushl	$.LC0
	call	prints
	addl	$4, %esp
	movl	%eax, -28(%ebp)
	jmp		.L11
.L13:
	pushl	$.LC1
	call	prints
	addl	$4, %esp
	movl	%eax, -32(%ebp)
	leave
	ret
	.size	printArray, .-printArray
	.globl	main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$288, %esp
	pushl	$.LC2
	call	prints
	addl	$4, %esp
	movl	%eax, -4(%ebp)
	movl	$50, %eax
	movl	%eax, -208(%ebp)
	movl	$3, %eax
	movl	%eax, -216(%ebp)
	movl	-216(%ebp), %eax
	movl	%eax, -212(%ebp)
	pushl	$.LC3
	call	prints
	addl	$4, %esp
	movl	%eax, -232(%ebp)
	leal	-212(%ebp), %eax
	movl	%eax, -236(%ebp)
	movl	-236(%ebp), %eax
	pushl	%eax
	call	readi
	addl	$4, %esp
	movl	%eax, -240(%ebp)
	movl	-240(%ebp), %eax
	movl	%eax, -220(%ebp)
	pushl	$.LC4
	call	prints
	addl	$4, %esp
	movl	%eax, -244(%ebp)
	movl	$0, %eax
	movl	%eax, -248(%ebp)
	movl	-248(%ebp), %eax
	movl	%eax, -224(%ebp)
.L14:
	movl	-220(%ebp), %eax
	cmpl	%eax, -224(%ebp)
	jl		.L16
	jmp		.L17
	jmp		.L17
.L15:
	movl	-224(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -224(%ebp)
	movl	-224(%ebp), %eax
	movl	%eax, -252(%ebp)
	jmp		.L14
.L16:
	movl	-224(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -256(%ebp)
	leal	-212(%ebp), %eax
	movl	%eax, -260(%ebp)
	movl	-260(%ebp), %eax
	pushl	%eax
	call	readi
	addl	$4, %esp
	movl	%eax, -264(%ebp)
	movl	-256(%ebp), %eax
	movl	-264(%ebp), %edx
	movl	%edx, -204(%ebp, %eax)
	jmp		.L15
.L17:
	pushl	$.LC5
	call	prints
	addl	$4, %esp
	movl	%eax, -268(%ebp)
	movl	-220(%ebp), %eax
	pushl	%eax
	leal	-204(%ebp), %eax
	pushl	%eax
	call	printArray
	addl	$8, %esp
	movl	-220(%ebp), %eax
	pushl	%eax
	leal	-204(%ebp), %eax
	pushl	%eax
	call	bubbleSort
	addl	$8, %esp
	pushl	$.LC6
	call	prints
	addl	$4, %esp
	movl	%eax, -272(%ebp)
	movl	-220(%ebp), %eax
	pushl	%eax
	leal	-204(%ebp), %eax
	pushl	%eax
	call	printArray
	addl	$8, %esp
	movl	$0, %eax
	movl	%eax, -276(%ebp)
	movl	-276(%ebp), %eax
	leave
	ret
	leave
	ret
	.size	main, .-main
