.LC0:
	.string	"l and h "
.LC1:
	.string	" "
.LC2:
	.string	"\n"
.LC3:
	.string	"l and r "
.LC4:
	.string	"\t\tQuick Sort Algorithm\n"
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
	.globl	partition
	.type	partition, @function
partition:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$128, %esp
	movl	16(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	(%ecx, %eax), %edx
	movl	%edx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	-20(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	pushl	$.LC0
	call	prints
	addl	$4, %esp
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -36(%ebp)
	pushl	$.LC1
	call	prints
	addl	$4, %esp
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -44(%ebp)
	pushl	$.LC2
	call	prints
	addl	$4, %esp
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
.L0:
	movl	$1, %eax
	movl	%eax, -52(%ebp)
	movl	16(%ebp), %eax
	movl	-52(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jle		.L2
	jmp		.L5
	jmp		.L5
.L1:
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-28(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -28(%ebp)
	jmp		.L0
.L2:
	movl	-28(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	(%ecx, %eax), %edx
	movl	%edx, -68(%ebp)
	movl	-4(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jle		.L3
	jmp		.L1
	jmp		.L4
.L3:
	movl	-16(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-16(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -80(%ebp)
	movl	-28(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -84(%ebp)
	movl	8(%ebp), %eax
	movl	-84(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	pushl	%eax
	movl	-80(%ebp), %eax
	pushl	%eax
	call	swap
	addl	$8, %esp
	jmp		.L1
.L4:
	jmp		.L1
.L5:
	movl	$1, %eax
	movl	%eax, -92(%ebp)
	movl	-16(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -100(%ebp)
	movl	8(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -104(%ebp)
	movl	16(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -108(%ebp)
	movl	8(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -112(%ebp)
	movl	-112(%ebp), %eax
	pushl	%eax
	movl	-104(%ebp), %eax
	pushl	%eax
	call	swap
	addl	$8, %esp
	movl	$1, %eax
	movl	%eax, -116(%ebp)
	movl	-16(%ebp), %eax
	movl	-116(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %eax
	leave
	ret
	leave
	ret
	.size	partition, .-partition
	.globl	quickSort
	.type	quickSort, @function
quickSort:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$48, %esp
	movl	16(%ebp), %eax
	cmpl	%eax, 12(%ebp)
	jl		.L6
	jmp		.L7
	jmp		.L7
.L6:
	pushl	$.LC3
	call	prints
	addl	$4, %esp
	movl	%eax, -4(%ebp)
	movl	12(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -8(%ebp)
	pushl	$.LC1
	call	prints
	addl	$4, %esp
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -16(%ebp)
	pushl	$.LC2
	call	prints
	addl	$4, %esp
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	pushl	%eax
	movl	12(%ebp), %eax
	pushl	%eax
	movl	8(%ebp), %eax
	pushl	%eax
	call	partition
	addl	$12, %esp
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$1, %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	-32(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	pushl	%eax
	movl	12(%ebp), %eax
	pushl	%eax
	movl	8(%ebp), %eax
	pushl	%eax
	call	quickSort
	addl	$12, %esp
	movl	$1, %eax
	movl	%eax, -40(%ebp)
	movl	-24(%ebp), %eax
	movl	-40(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	16(%ebp), %eax
	pushl	%eax
	movl	-44(%ebp), %eax
	pushl	%eax
	movl	8(%ebp), %eax
	pushl	%eax
	call	quickSort
	addl	$12, %esp
	jmp		.L7
.L7:
	leave
	ret
	.size	quickSort, .-quickSort
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
.L8:
	movl	12(%ebp), %eax
	cmpl	%eax, -4(%ebp)
	jl		.L10
	jmp		.L11
	jmp		.L11
.L9:
	movl	-4(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-4(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	jmp		.L8
.L10:
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
	pushl	$.LC1
	call	prints
	addl	$4, %esp
	movl	%eax, -28(%ebp)
	jmp		.L9
.L11:
	pushl	$.LC2
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
	pushl	$.LC4
	call	prints
	addl	$4, %esp
	movl	%eax, -4(%ebp)
	movl	$50, %eax
	movl	%eax, -208(%ebp)
	leal	-220(%ebp), %eax
	movl	%eax, -224(%ebp)
	movl	-224(%ebp), %eax
	pushl	%eax
	call	readi
	addl	$4, %esp
	movl	%eax, -228(%ebp)
	movl	-228(%ebp), %eax
	movl	%eax, -212(%ebp)
	movl	$0, %eax
	movl	%eax, -232(%ebp)
	movl	-232(%ebp), %eax
	movl	%eax, -216(%ebp)
.L12:
	movl	-212(%ebp), %eax
	cmpl	%eax, -216(%ebp)
	jl		.L14
	jmp		.L15
	jmp		.L15
.L13:
	movl	-216(%ebp), %eax
	movl	%eax, -236(%ebp)
	movl	-216(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -216(%ebp)
	jmp		.L12
.L14:
	movl	-216(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -240(%ebp)
	leal	-220(%ebp), %eax
	movl	%eax, -244(%ebp)
	movl	-244(%ebp), %eax
	pushl	%eax
	call	readi
	addl	$4, %esp
	movl	%eax, -248(%ebp)
	movl	-240(%ebp), %eax
	movl	-248(%ebp), %edx
	movl	%edx, -204(%ebp, %eax)
	jmp		.L13
.L15:
	pushl	$.LC5
	call	prints
	addl	$4, %esp
	movl	%eax, -252(%ebp)
	movl	-212(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -256(%ebp)
	pushl	$.LC2
	call	prints
	addl	$4, %esp
	movl	%eax, -260(%ebp)
	movl	$0, %eax
	movl	%eax, -264(%ebp)
	movl	$1, %eax
	movl	%eax, -268(%ebp)
	movl	-212(%ebp), %eax
	movl	-268(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -272(%ebp)
	movl	-272(%ebp), %eax
	pushl	%eax
	movl	-264(%ebp), %eax
	pushl	%eax
	leal	-204(%ebp), %eax
	pushl	%eax
	call	quickSort
	addl	$12, %esp
	pushl	$.LC6
	call	prints
	addl	$4, %esp
	movl	%eax, -276(%ebp)
	movl	-212(%ebp), %eax
	pushl	%eax
	leal	-204(%ebp), %eax
	pushl	%eax
	call	printArray
	addl	$8, %esp
	movl	$0, %eax
	movl	%eax, -280(%ebp)
	movl	-280(%ebp), %eax
	leave
	ret
	leave
	ret
	.size	main, .-main
