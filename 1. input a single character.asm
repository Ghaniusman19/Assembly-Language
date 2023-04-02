;PROGRAM TO input a single character     
 .model small
 .stack 100h
 .data
   
 .code
 main proc far 
    mov ax,@data
    mov ds,ax
       mov dl, 'a'
       ; service number to print output single character on screen
       mov ah,02h
       int 21h
       mov ah,4ch
       int 21h        
 
 main endp
 end main   