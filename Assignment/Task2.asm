
.model small
.stack 100h
.data 

prompt1 db 0dh,0ah,'Enter a binary number: $'
prompt2 db 0dh,0ah,'Decimal: $'
.code 


mov ax,@data
mov ds,ax

lea dx,prompt1
mov ah,9
int 21h



mov cx,16
xor bx,bx
mov ah,1
    
input:
    
    int 21h
    
    cmp al,0dh
    je endLoop
    
    and al,0fh
    shl bx,1
    or bl,al
    loop input
    
    
endLoop:

    lea dx,prompt2
    mov ah,9
    int 21h


    mov ax,bx



output:
    push bx
    push cx
    push dx
    
    cmp ax,0
    jge startConvertion
    
    push ax
     
    mov ah,2
    mov dl,":"
    int 21h 
     
    
    pop ax
    neg ax 
    
startConvertion:
    
    xor cx,cx
    mov bx,10
    
repeatNumber:
    
    xor dx,dx
    div bx
    push dx
    inc cx
    or ax,ax
    jne repeatNumber
        
    mov ah,2
    
displayNumber:
    
    pop dx
    or dl,30h
    int 21h
    loop displayNumber
        
pop dx
pop cx
pop bx

exit:
mov ah,4ch
int 21h 

