.model small
.stack 100h
.code

mov ah, 1          ; takes input 
int 21h


mov bh, al         ; saves 1st input
int 21h
mov bl, al         ; saves 2nd input
int 21h
mov ch, al         ; saves 3rd input
         

mov ah, 2          ; prepares to show output
mov dl, 10         ; creates new line
int 21h
mov dl, 0dh        ; brings the line forth
int 21h
mov dl, ch         ; shows output of 3rd input
int 21h
mov dl, bh         ; shows output of 1st input
int 21h



         
         
mov ah, 4ch
int 21h