.LC0:
	.string	"Longest Increasing Subsequence\n"
.LC1:
	.string	"Enter number of elements ( < 50)\n"
.LC2:
	.string	"Enter array elements\n"
.LC3:
	.string	"Length of LIS is "
.LC4:
	.string	"\n"
	.text
	.globl	lis
	.type	lis, @function
lis:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$336, %esp
	movl	$50, %eax
	movl	%eax, -204(%ebp)
	movl	$0, %eax
	movl	%eax, -220(%ebp)
	movl	-220(%ebp), %eax
	movl	%eax, -216(%ebp)
	movl	$0, %eax
	movl	%eax, -224(%ebp)
	movl	-224(%ebp), %eax
	movl	%eax, -208(%ebp)
.L0:
	movl	12(%ebp), %eax
	cmpl	%eax, -208(%ebp)
	jl		.L2
	jmp		.L3
	jmp		.L3
.L1:
	movl	-208(%ebp), %eax
	movl	%eax, -228(%ebp)
	movl	-208(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -208(%ebp)
	jmp		.L0
.L2:
	movl	-208(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -232(%ebp)
	movl	$1, %eax
	movl	%eax, -236(%ebp)
	movl	-232(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	%edx, -200(%ebp, %eax)
	jmp		.L1
.L3:
	movl	$1, %eax
	movl	%eax, -240(%ebp)
	movl	-240(%ebp), %eax
	movl	%eax, -208(%ebp)
.L4:
	movl	12(%ebp), %eax
	cmpl	%eax, -208(%ebp)
	jl		.L6
	jmp		.L14
	jmp		.L14
.L5:
	movl	-208(%ebp), %eax
	movl	%eax, -244(%ebp)
	movl	-208(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -208(%ebp)
	jmp		.L4
.L6:
	movl	$0, %eax
	movl	%eax, -248(%ebp)
	movl	-248(%ebp), %eax
	movl	%eax, -212(%ebp)
.L7:
	movl	-208(%ebp), %eax
	cmpl	%eax, -212(%ebp)
	jl		.L9
	jmp		.L5
	jmp		.L13
.L8:
	movl	-212(%ebp), %eax
	movl	%eax, -252(%ebp)
	movl	-212(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -212(%ebp)
	jmp		.L7
.L9:
	movl	-208(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -256(%ebp)
	movl	-256(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	(%ecx, %eax), %edx
	movl	%edx, -260(%ebp)
	movl	-212(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -264(%ebp)
	movl	-264(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	(%ecx, %eax), %edx
	movl	%edx, -268(%ebp)
	movl	-268(%ebp), %eax
	cmpl	%eax, -260(%ebp)
	jg		.L10
	jmp		.L8
.L10:
	movl	-208(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -272(%ebp)
	movl	-272(%ebp), %eax
	movl	-200(%ebp, %eax), %edx
	movl	%edx, -276(%ebp)
	movl	-212(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -280(%ebp)
	movl	-280(%ebp), %eax
	movl	-200(%ebp, %eax), %edx
	movl	%edx, -284(%ebp)
	movl	$1, %eax
	movl	%eax, -288(%ebp)
	movl	-284(%ebp), %eax
	movl	-288(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -292(%ebp)
	movl	-292(%ebp), %eax
	cmpl	%eax, -276(%ebp)
	jl		.L11
	jmp		.L8
	jmp		.L12
.L11:
	movl	-208(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -296(%ebp)
	movl	-212(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -300(%ebp)
	movl	-300(%ebp), %eax
	movl	-200(%ebp, %eax), %edx
	movl	%edx, -304(%ebp)
	movl	$1, %eax
	movl	%eax, -308(%ebp)
	movl	-304(%ebp), %eax
	movl	-308(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -312(%ebp)
	movl	-296(%ebp), %eax
	movl	-312(%ebp), %edx
	movl	%edx, -200(%ebp, %eax)
	jmp		.L8
.L12:
	jmp		.L8
.L13:
	jmp		.L5
.L14:
	movl	$0, %eax
	movl	%eax, -316(%ebp)
	movl	-316(%ebp), %eax
	movl	%eax, -208(%ebp)
.L15:
	movl	12(%ebp), %eax
	cmpl	%eax, -208(%ebp)
	jl		.L17
	jmp		.L20
	jmp		.L20
.L16:
	movl	-208(%ebp), %eax
	movl	%eax, -320(%ebp)
	movl	-208(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -208(%ebp)
	jmp		.L15
.L17:
	movl	-208(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -324(%ebp)
	movl	-324(%ebp), %eax
	movl	-200(%ebp, %eax), %edx
	movl	%edx, -328(%ebp)
	movl	-328(%ebp), %eax
	cmpl	%eax, -216(%ebp)
	jl		.L18
	jmp		.L16
	jmp		.L19
.L18:
	movl	-208(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -332(%ebp)
	movl	-332(%ebp), %eax
	movl	-200(%ebp, %eax), %edx
	movl	%edx, -336(%ebp)
	movl	-336(%ebp), %eax
	movl	%eax, -216(%ebp)
	jmp		.L16
.L19:
	jmp		.L16
.L20:
	movl	-216(%ebp), %eax
	leave
	ret
	leave
	ret
	.size	lis, .-lis
	.globl	main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$288, %esp
	movl	$50, %eax
	movl	%eax, -204(%ebp)
	pushl	$.LC0
	call	prints
	addl	$4, %esp
	movl	%eax, -220(%ebp)
	pushl	$.LC1
	call	prints
	addl	$4, %esp
	movl	%eax, -224(%ebp)
	leal	-216(%ebp), %eax
	movl	%eax, -228(%ebp)
	movl	-228(%ebp), %eax
	pushl	%eax
	call	readi
	addl	$4, %esp
	movl	%eax, -232(%ebp)
	movl	-232(%ebp), %eax
	movl	%eax, -208(%ebp)
	pushl	$.LC2
	call	prints
	addl	$4, %esp
	movl	%eax, -236(%ebp)
	movl	$0, %eax
	movl	%eax, -240(%ebp)
	movl	-240(%ebp), %eax
	movl	%eax, -212(%ebp)
.L21:
	movl	-208(%ebp), %eax
	cmpl	%eax, -212(%ebp)
	jl		.L23
	jmp		.L24
	jmp		.L24
.L22:
	movl	-212(%ebp), %eax
	movl	%eax, -244(%ebp)
	movl	-212(%ebp), %eax
	movl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -212(%ebp)
	jmp		.L21
.L23:
	movl	-212(%ebp), %eax
	movl	$4, %edx
	imull	%edx, %eax
	movl	%eax, -248(%ebp)
	leal	-216(%ebp), %eax
	movl	%eax, -252(%ebp)
	movl	-252(%ebp), %eax
	pushl	%eax
	call	readi
	addl	$4, %esp
	movl	%eax, -256(%ebp)
	movl	-248(%ebp), %eax
	movl	-256(%ebp), %edx
	movl	%edx, -200(%ebp, %eax)
	jmp		.L22
.L24:
	pushl	$.LC3
	call	prints
	addl	$4, %esp
	movl	%eax, -260(%ebp)
	movl	-208(%ebp), %eax
	pushl	%eax
	leal	-200(%ebp), %eax
	pushl	%eax
	call	lis
	addl	$8, %esp
	movl	%eax, -264(%ebp)
	movl	-264(%ebp), %eax
	pushl	%eax
	call	printi
	addl	$4, %esp
	movl	%eax, -268(%ebp)
	pushl	$.LC4
	call	prints
	addl	$4, %esp
	movl	%eax, -272(%ebp)
	movl	$0, %eax
	movl	%eax, -276(%ebp)
	movl	-276(%ebp), %eax
	leave
	ret
	leave
	ret
	.size	main, .-main
