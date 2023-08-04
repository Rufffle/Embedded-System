include 'emu8086.inc'
.model small
.stack 100h
.data
a db 'this is a lab class',0
.code 
mov ax,@data
mov ds, ax

lea si,a
call print_string

call pthis

db 0ah,0dh, 'I am in sec 5',0


;mov dx,7
;call get_string

call clear_screen


call pthis
db 0ah,0dh, 'the class has ended',0

call scan_num
call pthis
db 0ah,0dh,0

mov ax,cx
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