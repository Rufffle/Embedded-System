include 'emu8086.inc'
.model small
.stack 100h
.data
    inputData dw ?
    
.code

    call pthis
    db 0ah,0dh, 'Enter a decimal number: ',0
    call scan_num 
    
    mov ax,cx
    mov ds,ax
    
    
    call pthis
    db 0ah,0dh, 'Binary: ',0
    
    
    mov cx,0
    mov dx,0
    
    convertData:
      
      cmp ax,0
      je printDeci
      
      mov bx,2
      div bx
      
      push dx
      inc cx
      xor dx,dx
      
      jmp convertData
      
      
    printDeci:
      
      cmp cx,0
      je exit
      
      pop dx
      add dx,48
      
      mov ah,02h
                
      int 21h
      dec cx
      jmp printDeci
      
    exit:
    
      mov ax,4ch
      int 21h          
      

define_print_string
define_pthis
define_scan_num 
define_print_num
define_print_num_uns      
  