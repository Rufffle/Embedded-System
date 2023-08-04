.model small
.stack 100h
.data
 a db 5 dup(?), '$'       ; empty string variable a
 b db 5 dup(?), '$'       ; empty string variable b

.code
mov ax,@data
mov ds,ax
 
mov ah,1
int 21h
mov a[0],al               ; takes input
int 21h
mov a[1],al               ; takes input
int 21h
mov a[2],al               ; takes input
int 21h
mov a[3],al               ; takes input
int 21h
mov a[4],al               ; takes input


mov al,a[0]               ; copying to register
mov b[0],al               ; copying to empty string 
mov al,a[1]               ; copying to register
mov b[1],al               ; copying to empty string
mov al,a[2]               ; copying to register
mov b[2],al               ; copying to empty string
mov al,a[3]               ; copying to register
mov b[3],al               ; copying to empty string
mov al,a[4]               ; copying to register
mov b[4],al


mov ah,2
mov dl,10                 ; creates new line segment
int 21h
mov dl,0dh                ; labels the space of new line
int 21h


lea dx,b                  
mov ah,9                  ; shows b string as output
int 21h


mov ah,4ch
int 21h