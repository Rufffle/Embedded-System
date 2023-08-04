.model small
.stack 100h
.code

mov ah,7            ; ah = 7
mov al,2            ; al = 2
sub al,ah           ; al - ah

mov ah,4ch
int 21h
