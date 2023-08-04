include 'emu8086.inc'
.model small
.stack 100h
.data

.code

mov ax,3

shl ax,1

print "the output = "
call print_num   

mov ah,4ch
int 21h   


define_print_num 
define_print_num_uns