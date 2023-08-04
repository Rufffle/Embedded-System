.model small
.stack 100h
.data
 
 a db "The input: $"
 b db 0ah,0dh,"reverse: $"
 c db 0ah,0dh,"The Stack is empty. $"
 d db 0ah,0dh,"The given size exceeded. $"
 
.code

 mov ax,@data
 mov ds,ax

 mov ah,9
 lea dx,a
 int 21h

 mov cx,0

input:

 mov ah,1
 int 21h
 cmp al,0dh             ;checks when "Enter" is pressed
 je display
 
 xor ah,ah
 push ax  
 inc cx
 
 cmp cx,16              ;Checks if input in more than 15 single-key
 je fullStack       
 
 jmp input
 
 
display:
 cmp cx,0
 je emptyStack
 
 mov ah,9
 lea dx,b
 int 21h
 
reverse:
 pop dx
 mov ah,2
 int 21h
 loop reverse
 jmp exit
 
 
emptyStack:
 mov ah,9
 lea dx,c               ;Prints empty stack error
 int 21h
 jmp exit 
 
fullStack:
 mov ah,9
 lea dx,d               ;Prints full stack error
 int 21h

exit:
 mov ah,4ch
 int 21h
