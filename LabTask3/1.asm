.model small
.stack 100h
.data
 a db "hello$"            ; defines a string variable with "hello"

.code
mov ax,@data
mov ds,ax
 

lea dx,a                  
mov ah,9                  ; shows a string as output
int 21h
 
mov ah,2
mov dl,10                 ; creates new line segment
int 21h
mov dl,0dh                ; labels the space of new line
int 21h 
 

sub a[0],32               ; converts to upper-case
int 21h
sub a[1],32               ; converts to upper-case
int 21h
sub a[2],32               ; converts to upper-case
int 21h
sub a[3],32               ; converts to upper-case
int 21h
sub a[4],32               ; converts to upper-case





lea dx,a                  
mov ah,9                  ; shows a string as output with upper cases
int 21h


mov ah,4ch
int 21h