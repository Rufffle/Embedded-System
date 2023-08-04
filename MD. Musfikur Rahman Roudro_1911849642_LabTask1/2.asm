.model small
.stack 100h
.code

mov ah, 0AFh                ; set ah = AF (Hexa value)
mov bh, 5                   ; bh = 5
sub ah,bh                   ; ah - bh =  AF - 5 = AA

mov ah,4ch
int 21h
