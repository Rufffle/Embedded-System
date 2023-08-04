include 'emu8086.inc'
.model small
.stack 100h
.data

.code 

call pthis
db 0ah,0dh, 'Enter your 1st number: ',0
call scan_num                                  ;takes input of 1st number

mov ax,cx                                      ;moves the value to 'ax'


call pthis
db 0ah,0dh, 'Enter your 2nd number: ',0
call scan_num                                  ;takes input of 2nd number

mul cx                                         ;multiplication = 1st number * 2nd number

call pthis
db 0ah,0dh, 'The multiplication is: ',0

call print_num                                 ;prints the output(multiplication)


call clear_screen

call pthis
db 0ah,0dh, 'Enter your 3rd number: ',0        ;takes input of 3rd number (divisor)
call scan_num

div cx                                         ;divison = multiplication / 3rd number

call pthis
db 0ah,0dh, 'The division is: ',0

call print_num                                 ;prints the output(divison)


mov ah,4ch
int 21h

define_print_string
define_pthis
define_get_string
define_clear_screen 
define_scan_num 
define_print_num
define_print_num_uns