.model small
.stack 100h
.code

mov ah,2
mov cx,26
mov dl,41h           ;set dl value to 'A'

_loop:
int 21h 
inc dl               
mov bl,dl            ;stores updated value of dl to bl
dec cx

mov dl,10
int 21h
mov dl,0dh
int 21h

mov dl,bl            ;restores the value of dl after a line is created

jnz _loop


exit:
mov ah,4ch
int 21h