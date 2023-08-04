include 'emu8086.inc'
.model small
.stack 100h
.data
     
.code 

call pthis
db 0ah,0dh, 'Enter your number: ',0
call scan_num                                  ;takes input of number
mov ax,cx

call pthis
db 0ah,0dh, 'Enter your number: ',0
call scan_num                                  ;takes input of number
add ax,cx 

call pthis
db 0ah,0dh, 'Enter your number: ',0
call scan_num                                  ;takes input of number
add ax,cx

call pthis
db 0ah,0dh, 'Enter your number: ',0
call scan_num                                  ;takes input of number
add ax,cx

call pthis
db 0ah,0dh, 'Enter your number: ',0
call scan_num                                  ;takes input of number
add ax,cx

call pthis
db 0ah,0dh, 'Enter your number: ',0
call scan_num                                  ;takes input of number
add ax,cx

call pthis
db 0ah,0dh, 'Enter your number: ',0
call scan_num                                  ;takes input of number
add ax,cx

call pthis
db 0ah,0dh, 'Enter your number: ',0
call scan_num                                  ;takes input of number
add ax,cx

shr ax,3                                       ;divides the sum by 8 (2^3)


call pthis
db 0ah,0dh, 'The average is:  ',0
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