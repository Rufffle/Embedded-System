include "emu8086.inc"

.model small
.stack 100h
.data
.code


print "Enter a decimal number: "
call scan_num 
printn

print "Binary:"
mov bx,16  
mov dx,0 
mov di,0 

convertion:
shl cx,1
jc print1
  

putc '0'
inc dx    
dec bx
jnz convertion   

print1:
inc di 
putc '1'
dec bx
jnz convertion

    
printNumberOf1: 
mov ax ,di
printn
print "Number of 1's: "
call print_num 


exit:
mov ah,4ch
int 21h     

define_scan_num  
define_print_num
define_print_num_uns