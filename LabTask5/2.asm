.model small
.stack 100h
.code

mov ah,1
int 21h

test al,1                  ;checks if the number is even or odd
jz print_e                 ;if the number is even, go to print_e

jmp print_o                ;if the number is odd, go to print_o

jmp exit


print_o:
mov ah,2
mov dl,'O'
int 21h
jmp exit

print_e:
mov ah,2
mov dl,'E'
int 21h



exit:
mov ah,4ch
int 21h
