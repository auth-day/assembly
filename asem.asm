section .data

A equ 0x8                 ; А и В ссылаются на ячейку с адресом
B equ 0x10                ; аргументов функции в стеке
res: dq 0

section .text
global asem
asem:

push ebp                  ; пролог
mov ebp, esp

mov eax, dword [ebp+A]    ; сохранение младшей части числа
add eax, dword [ebp+B]

mov edx, dword [ebp+A+4]  ; сохранение старшей части числа
add edx, dword [ebp+B+4]

pop ebp                   ; эпилог
ret
