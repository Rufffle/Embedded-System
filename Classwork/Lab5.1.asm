.model small
.stack 100h
.code

mov ah,1
int 21h

cmp al,'1'
je b

cmp al,'2'
je c

jmp exit


b:
mov ah,2
mov dl,'O'
int 21h
jmp exit

c:
mov ah,2
mov dl,'E'
int 21h



exit:
mov ah,4ch
int 21h
