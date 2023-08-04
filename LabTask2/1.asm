.model small
.stack 100h
.code

mov ah, 1             ; takes input command
int 21h
mov bh, al            ; takes 1st input


mov ah, 2             ; takes output command
mov dl, 020h          ; shows space
int 21h               
mov dl, bh            ; shows output of 1st output
int 21h


mov ah, 4ch
int 21h