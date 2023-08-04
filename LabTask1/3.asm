.model small
.stack 100h
.code

mov ah, 0BBh                ; set ah = BB (Hexa value)
mov bh, 03                  ; bh = 03
add ah, bh                  ; ah + bh = BB + 03 = BE
mov bl, ah                  ; moves 'ah' value to 'bl'

mov ah,4ch
int 21h
