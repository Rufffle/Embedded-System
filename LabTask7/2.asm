include 'emu8086.inc'
.model small
.stack 100h
.data

.code

mov ax,@data
mov ds,ax
mov cx,7                               ;sets the value to determine 7's factorial
mov bx,8                               ;sets the value to determine 8's factorial
mov ax,1

call pthis
db 0ah,0dh, 'Factorial of 7 = ',0 


factorial7:
mul cx
dec cx
cmp cx,1
jne factorial7
call print_num_uns  

call pthis
db 0ah,0dh, 'Factorial of 8 = ',0

mov cx,bx                              ;moves value to determine new number's(8) factorial
mov ax,1


factorial8:

mul cx
dec cx
cmp cx,1
jne factorial8
call print_num_uns

exit:
mov ah,4ch
int 21h


define_print_string
define_pthis
define_get_string
define_clear_screen 
define_scan_num 
define_print_num
define_print_num_uns