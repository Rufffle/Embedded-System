.model small   
.stack 100h  
.data

.code
    
        mov ax,1     
        mov cx,1    
       
nextFactorial:
       
        mul cx      
                    
        push ax      
        push cx      
           
        
        mov bx,10    
        mov cx,0     
        mov dx,0    

calculate:
                
        cmp ax,0     
        jz printNumber     
        
        div bx       
                     
        push dx     
        inc cx       
        mov dx,0     
        jmp calculate        
        
printNumber:
       cmp cx,0      
       jz nextNumber  
       
       pop dx        
       add dl,30h     
       
       mov ah,02h    
       int 21h
       loop printNumber    
       
nextNumber: 

       mov ah,02h   
       mov dl,0ah   
       int 21h      
       mov dl,0dh   
       int 21h      

       pop cx    
       pop ax    
       inc cx    
       cmp cx,9  
       jne nextFactorial 
                                                                        
          
exit:
        mov ah, 4ch    
        int 21h
