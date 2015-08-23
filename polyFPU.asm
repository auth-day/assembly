;double polya(double A, double B, double C, double D, double E, double X);

global	polyFPU

A	equ	0x08
B	equ	0x10
C	equ	0x18
D	equ	0x20
E	equ	0x28
iX	equ	0x30

section	.text
polyFPU:
	push	ebp
	mov	ebp, esp

;x*(x*(x*(A*x+B)+C)+D)+E
	fld	qword [ebp+A]

	fild	dword [ebp+iX]
	fmul
	fld	qword [ebp+B]
	fadd

	fild	dword [ebp+iX]
	fmul
	fld	qword [ebp+C]
	fadd

	fild	dword [ebp+iX]
	fmul
	fld	qword [ebp+D]
	fadd

	fild	dword [ebp+iX]
	fmul
	fld	qword [ebp+E]
	fadd

;	fild	dword [ebp+iX]

	mov	esp, ebp
	pop	ebp
	ret
