CSEG segment
org 100h 
.code 
Start: 

Int_21h_vect dd ?                       

mov ah, 35h                           ; Получаем вектор прерывания 21h
mov al, 21h 
int 21h 

mov word ptr Int_21h_vect, bx         ; Записываем смещение 21h перрывания
mov word ptr Int_21h_vect+2, es       ; Записываем сегмент 21h прерывания

mov ah, 9                             
mov dx, offset ms
call dword ptr cs:[Int_21h_vect]      ; Вызов 21h прерывания через переменную
int 20h 



ms db 'Everything is fine$' 

CSEG ends
end Start
