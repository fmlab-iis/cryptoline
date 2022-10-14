	.att_syntax
	.text
	.p2align	5
	.globl	_fqmul
	.globl	fqmul
_fqmul:
fqmul:
	movswl	%di, %eax
	movswl	%si, %ecx
	imull	%ecx, %eax
	imull	$62209, %eax, %ecx
	shll	$16, %ecx
	sarl	$16, %ecx
	imull	$3329, %ecx, %ecx
	subl	%ecx, %eax
	sarl	$16, %eax
	ret 
