.model small
.stack 100h
.code

mov ah, 1             ; takes input command
int 21h
mov bh, al            ; takes 1st input
int 21h
mov bl, al            ; takes 2nd input
int 21h
mov ch, al            ; takes 3rd input


mov ah, 2             ; takes output command

mov dl, 0ah           ; creates new line for output
int 21h
mov dl, 0dh           ; labels both line
int 21h
mov dl, ch            ; shows output of 3rd output
int 21h
mov dl, bl            ; shows output of 2nd output
int 21h
mov dl, 020h          ; shows space on output
int 21h
mov dl, bh            ; shows output of 1st output
int 21h


mov ah, 4ch
int 21h