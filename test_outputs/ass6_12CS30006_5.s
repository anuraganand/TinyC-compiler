.LC0:
	.string	" "
.LC1:
	.string	"\n"
.LC2:
	.string	"Fibonacci Number using Matrix Multiplication O(logn)\n"
.LC3:
	.string	".\t"
	.text
	movl	$2, %eax
	movl	%eax, -4(%ebp)
	.globl	printMat
	.type	printMat, @function
printMat:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$64, %esp
	movl	$0, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
.L0:
	movl	$2, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	cmpl	%eax, -8(%ebp)
	jl		.L2
	jmp		.L7
	jmp		.L7
.L1:
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-8(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	jmp		.L0
.L2:
	movl	$0, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
.L3:
	movl	$2, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jl		.L5
	jmp		.L6
	jmp		.L6
.L4:
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-12(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	jmp		.L3
.L5:
	movl	-8(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	-12(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-40(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	(%ecx, %eax), %edx
	movl	%edx, -48(%ebp)
	movl	-48(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -52(%ebp)
	pushl	$.LC0
	call	prints
	addl	$4, %esp
	movl	%eax, -56(%ebp)
	jmp		.L4
.L6:
	pushl	$.LC1
	call	prints
	addl	$4, %esp
	movl	%eax, -60(%ebp)
	jmp		.L1
.L7:
	pushl	$.LC1
	call	prints
	addl	$4, %esp
	movl	%eax, -64(%ebp)
	leave
	ret
	.size	printMat, .-printMat
	movl	$2, %eax
	movl	%eax, -4(%ebp)
	movl	$2, %eax
	movl	%eax, -8(%ebp)
	.globl	copy
	.type	copy, @function
copy:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$64, %esp
	movl	$0, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
.L8:
	movl	$2, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jl		.L10
	jmp		.L15
	jmp		.L15
.L9:
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-12(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	jmp		.L8
.L10:
	movl	$0, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
.L11:
	movl	$2, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	cmpl	%eax, -16(%ebp)
	jl		.L13
	jmp		.L9
	jmp		.L14
.L12:
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-16(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	jmp		.L11
.L13:
	movl	-12(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-16(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -48(%ebp)
	movl	-44(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-12(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -52(%ebp)
	movl	-16(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -56(%ebp)
	movl	-52(%ebp), %eax
	movl	-56(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	(%ecx, %eax), %edx
	movl	%edx, -60(%ebp)
	movl	-44(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, (%ecx, %eax)
	jmp		.L12
.L14:
	jmp		.L9
.L15:
	leave
	ret
	.size	copy, .-copy
	movl	$2, %eax
	movl	%eax, -4(%ebp)
	movl	$2, %eax
	movl	%eax, -8(%ebp)
	.globl	mult
	.type	mult, @function
mult:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$144, %esp
	movl	$2, %eax
	movl	%eax, -28(%ebp)
	movl	$2, %eax
	movl	%eax, -32(%ebp)
	movl	$0, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
.L16:
	movl	$2, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jl		.L18
	jmp		.L27
	jmp		.L27
.L17:
	movl	-36(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-36(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -36(%ebp)
	jmp		.L16
.L18:
	movl	$0, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
.L19:
	movl	$2, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	cmpl	%eax, -40(%ebp)
	jl		.L21
	jmp		.L17
	jmp		.L26
.L20:
	movl	-40(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-40(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -40(%ebp)
	jmp		.L19
.L21:
	movl	-36(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -72(%ebp)
	movl	-40(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	-72(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -72(%ebp)
	movl	$0, %eax
	movl	%eax, -80(%ebp)
	movl	-72(%ebp), %eax
	movl	-80(%ebp), %edx
	movl	%edx, -24(%ebp, %eax)
	movl	$0, %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -44(%ebp)
.L22:
	movl	$2, %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jl		.L24
	jmp		.L20
	jmp		.L25
.L23:
	movl	-44(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	-44(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	jmp		.L22
.L24:
	movl	-36(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-40(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -100(%ebp)
	movl	-96(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	-36(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -104(%ebp)
	movl	-40(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -108(%ebp)
	movl	-104(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	-24(%ebp, %eax), %edx
	movl	%edx, -112(%ebp)
	movl	-36(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -116(%ebp)
	movl	-44(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -120(%ebp)
	movl	-116(%ebp), %eax
	movl	-120(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -116(%ebp)
	movl	-116(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	(%ecx, %eax), %edx
	movl	%edx, -124(%ebp)
	movl	-44(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -128(%ebp)
	movl	-40(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -132(%ebp)
	movl	-128(%ebp), %eax
	movl	-132(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -128(%ebp)
	movl	-128(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	(%ecx, %eax), %edx
	movl	%edx, -136(%ebp)
	movl	-124(%ebp), %eax
	movl	-136(%ebp), %edx
	imull	%edx, %eax
	movl	%eax, -140(%ebp)
	movl	-112(%ebp), %eax
	movl	-140(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -144(%ebp)
	movl	-96(%ebp), %eax
	movl	-144(%ebp), %edx
	movl	%edx, -24(%ebp, %eax)
	jmp		.L23
.L25:
	jmp		.L20
.L26:
	jmp		.L17
.L27:
	leal	-24(%ebp), %eax
	pushl	%eax
	movl	8(%ebp), %eax
	pushl	%eax
	call	copy
	addl	$8, %esp
	leave
	ret
	.size	mult, .-mult
	movl	$2, %eax
	movl	%eax, -4(%ebp)
	.globl	power
	.type	power, @function
power:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$112, %esp
	movl	$2, %eax
	movl	%eax, -24(%ebp)
	movl	$2, %eax
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
.L28:
	movl	$2, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	cmpl	%eax, -32(%ebp)
	jl		.L30
	jmp		.L38
	jmp		.L38
.L29:
	movl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-32(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	jmp		.L28
.L30:
	movl	$0, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, -36(%ebp)
.L31:
	movl	$2, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jl		.L33
	jmp		.L29
	jmp		.L37
.L32:
	movl	-36(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-36(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -36(%ebp)
	jmp		.L31
.L33:
	movl	-36(%ebp), %eax
	cmpl	%eax, -32(%ebp)
	je		.L34
	jmp		.L35
	jmp		.L36
.L34:
	movl	-32(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -64(%ebp)
	movl	-36(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -68(%ebp)
	movl	-64(%ebp), %eax
	movl	-68(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -64(%ebp)
	movl	$1, %eax
	movl	%eax, -72(%ebp)
	movl	-64(%ebp), %eax
	movl	-72(%ebp), %edx
	movl	%edx, -20(%ebp, %eax)
	jmp		.L32
.L35:
	movl	-32(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	-36(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -80(%ebp)
	movl	-76(%ebp), %eax
	movl	-80(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	$0, %eax
	movl	%eax, -84(%ebp)
	movl	-76(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%edx, -20(%ebp, %eax)
	jmp		.L32
.L36:
	jmp		.L32
.L37:
	jmp		.L29
.L38:
	movl	$0, %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	cmpl	%eax, 12(%ebp)
	jg		.L39
	jmp		.L42
	jmp		.L42
.L39:
	movl	$2, %eax
	movl	%eax, -92(%ebp)
	movl	12(%ebp), %eax
	movl	-92(%ebp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -96(%ebp)
	movl	$1, %eax
	movl	%eax, -100(%ebp)
	movl	-100(%ebp), %eax
	cmpl	%eax, -96(%ebp)
	je		.L40
	jmp		.L41
	jmp		.L41
.L40:
	movl	8(%ebp), %eax
	pushl	%eax
	leal	-20(%ebp), %eax
	pushl	%eax
	call	mult
	addl	$8, %esp
	jmp		.L41
.L41:
	movl	8(%ebp), %eax
	pushl	%eax
	movl	8(%ebp), %eax
	pushl	%eax
	call	mult
	addl	$8, %esp
	movl	$2, %eax
	movl	%eax, -104(%ebp)
	movl	12(%ebp), %eax
	movl	-104(%ebp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -108(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp		.L38
.L42:
	leal	-20(%ebp), %eax
	pushl	%eax
	movl	8(%ebp), %eax
	pushl	%eax
	call	copy
	addl	$8, %esp
	leave
	ret
	.size	power, .-power
	.globl	getFib
	.type	getFib, @function
getFib:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$160, %esp
	movl	$1, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	cmpl	%eax, 8(%ebp)
	jle		.L43
	jmp		.L44
	jmp		.L44
.L43:
	movl	8(%ebp), %eax
	leave
	ret
	jmp		.L44
.L44:
	movl	$2, %eax
	movl	%eax, -24(%ebp)
	movl	$2, %eax
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -36(%ebp)
	movl	$0, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-36(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -36(%ebp)
	movl	$1, %eax
	movl	%eax, -48(%ebp)
	movl	-36(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, -20(%ebp, %eax)
	movl	$0, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -56(%ebp)
	movl	$1, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -64(%ebp)
	movl	-56(%ebp), %eax
	movl	-64(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -56(%ebp)
	movl	$1, %eax
	movl	%eax, -68(%ebp)
	movl	-56(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%edx, -20(%ebp, %eax)
	movl	$1, %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	$0, %eax
	movl	%eax, -80(%ebp)
	movl	-80(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -84(%ebp)
	movl	-76(%ebp), %eax
	movl	-84(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	$1, %eax
	movl	%eax, -88(%ebp)
	movl	-76(%ebp), %eax
	movl	-88(%ebp), %edx
	movl	%edx, -20(%ebp, %eax)
	movl	$1, %eax
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	$1, %eax
	movl	%eax, -100(%ebp)
	movl	-100(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -104(%ebp)
	movl	-96(%ebp), %eax
	movl	-104(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -96(%ebp)
	movl	$0, %eax
	movl	%eax, -108(%ebp)
	movl	-96(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%edx, -20(%ebp, %eax)
	movl	$1, %eax
	movl	%eax, -112(%ebp)
	movl	8(%ebp), %eax
	movl	-112(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -116(%ebp)
	movl	-116(%ebp), %eax
	pushl	%eax
	leal	-20(%ebp), %eax
	pushl	%eax
	call	power
	addl	$8, %esp
	movl	$0, %eax
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -124(%ebp)
	movl	$0, %eax
	movl	%eax, -128(%ebp)
	movl	-128(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -132(%ebp)
	movl	-124(%ebp), %eax
	movl	-132(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %eax
	movl	-20(%ebp, %eax), %edx
	movl	%edx, -136(%ebp)
	movl	$0, %eax
	movl	%eax, -140(%ebp)
	movl	-140(%ebp), %eax
	movl	$8, %edx
	imull	%edx, %eax
	movl	%eax, -144(%ebp)
	movl	$1, %eax
	movl	%eax, -148(%ebp)
	movl	-148(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -152(%ebp)
	movl	-144(%ebp), %eax
	movl	-152(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -144(%ebp)
	movl	-144(%ebp), %eax
	movl	-20(%ebp, %eax), %edx
	movl	%edx, -156(%ebp)
	movl	-136(%ebp), %eax
	movl	-156(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -160(%ebp)
	movl	-160(%ebp), %eax
	leave
	ret
	leave
	ret
	.size	getFib, .-getFib
	.globl	main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$48, %esp
	pushl	$.LC2
	call	prints
	addl	$4, %esp
	movl	%eax, -4(%ebp)
	movl	$0, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L45:
	movl	$45, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	cmpl	%eax, -8(%ebp)
	jl		.L47
	jmp		.L48
	jmp		.L48
.L46:
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-8(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	jmp		.L45
.L47:
	movl	-8(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -24(%ebp)
	pushl	$.LC3
	call	prints
	addl	$4, %esp
	movl	%eax, -28(%ebp)
	movl	-8(%ebp), %eax
	pushl	%eax
	call	getFib
	addl	$4, %esp
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -36(%ebp)
	pushl	$.LC1
	call	prints
	addl	$4, %esp
	movl	%eax, -40(%ebp)
	jmp		.L46
.L48:
	movl	$0, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	leave
	ret
	leave
	ret
	.size	main, .-main
