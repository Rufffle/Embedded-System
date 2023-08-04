include 'emu8086.inc'
.model small
.stack 100h
.data

a db 5 dup(?)

.code 

mov ax,@data
mov ds,ax

mov dx,6
call get_string
lea bx,a

copy:
mov al,[di]
mov [bx],al

inc bx
inc di

cmp [di],0
jne copy

mov [bx],0

call pthis
db 0ah,0dh,0

lea si,a
call print_string



mov ah,4ch
int 21h

define_print_string
define_pthis
define_get_string
define_clear_screen 
define_scan_num 
define_print_num
define_print_num_uns