CSEG segment
org 100h
.code
Start:
jmp Init

Int_21h_proc proc      ; Procedure
cmp ah, 9
je Ok_09

jmp dword ptr cs:[Int_21h_vect]

Ok_09:
push ds
push dx
push cs
pop ds

mov dx, offset My_string
pushf

call dword ptr cs:[Int_21h_vect]

pop dx
pop ds
iret

Int_21h_vect dd ?

My_string db 'My string$'
int_21h_proc endp           ; End procedure

Init:
mov ah, 35h
mov al, 21h
int 21h             

mov word ptr Int_21h_vect, bx
mov word ptr Int_21h_vect+2, es

mov ax, 2521h
mov dx, offset Int_21h_proc

int 21h

mov dx, offset Init
int 27h

CSEG ends
end Start

