.model small
.stack 100h
.code

mov ah,1
int 21h

cmp al,'1'
je print_o                 ;go to print_o if input is 1 

cmp al,'3'
je print_o                 ;go to print_o if input is 3

cmp al,'5'                 
je print_o                 ;go to print_o if input is 5


cmp al,'2'
je print_e                 ;go to print_o if input is 2

cmp al,'4'
je print_e                 ;go to print_o if input is 4

jmp exit                   ;go to exit if input is none of the above


print_o:                   ;function for printing 'O'
mov ah,2
mov dl,'O'
int 21h
jmp exit

print_e:                   ;function for printing 'E'
mov ah,2
mov dl,'E'
int 21h



exit:
mov ah,4ch
int 21h
