.model small
.stack 100h
.code

mov ah,9            ; ah = 9
inc al              ; al = al(0) + 1
dec bl              ; bl - bh(0) - 1    
mov bh,5            ; bh = 5

mov ah,4ch
int 21h
