include 'emu8086.inc'
.model small
.stack 100h
.data

    temp1st     dw ?
    addNumb     dw ?
    checkEO     dw ?

.code 


call pthis
db 0ah,0dh, 'Enter first number: ',0
call scan_num                                  

mov ax,cx                                      
mov temp1st,ax


call pthis
db 0ah,0dh, 'Enter second number: ',0
call scan_num                                  


mov ax,temp1st
add ax,cx 


call pthis
db 0ah,0dh, 'Addition of two input: ',0
call print_num                                 

mov addNumb,ax 

mov ax,temp1st
mul cx


call pthis
db 0ah,0dh, 'Multiplication of two input: ',0
call print_num                                 


mov cx,addNumb
div cx                                         

call pthis
db 0ah,0dh, 'Quotient: ',0

call print_num


mov checkEO,ax                                 


mov ax,dx 
call pthis
db 0ah,0dh, 'Remainder: ',0

call print_num 
     


call pthis
db 0ah,0dh, 'The Quotient is: ',0

mov ax,checkEO    
test ax,1 
jz print_e

jmp print_o

print_e:
    mov ah,2
    mov dl,'E'
    int 21h
    
    jmp exit
    

print_o:     
    mov ah,2 
    mov dl,'O' 
    int 21h 
     
     
     
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