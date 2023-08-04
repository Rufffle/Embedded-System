include 'emu8086.inc'
.model small
.stack 100h
.data

.code 

;call pthis
db 0ah,0dh, 'Enter your 1st number: ',0
call scan_num

mov ax,cx


call pthis
db 0ah,0dh, 'Enter your 2nd number: ',0
call scan_num

add ax,cx

call pthis
db 0ah,0dh, 'The summation is: ',0

call print_num


mov ah,4ch
int 21h

define_print_string
define_pthis
define_get_string
define_clear_screen 
define_scan_num 
define_print_num
define_print_num_uns