include 'emu8086.inc'
.model small
.stack 100h
.data

.code

mov ah,1
int 21h 
xor ah,ah
mov bl,2  

div bl

cmp ah,0                     ;checks if remainder is zero(0) or not

jz even_number               

jmp odd_number
jmp exit

even_number:
call pthis
db 0ah,0dh, 'The number is Even.',0
jmp exit
        

odd_number:
call pthis
db 0ah,0dh, 'The number is Odd.',0
jmp exit


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