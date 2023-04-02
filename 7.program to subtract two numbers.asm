;Program to subtract two numbers
.model small
.stack 100h 
.data   
.code   
main proc far 
    mov ax ,@data
    mov ds,ax
       mov bl,6
       mov cl,3
       sub bl,cl
       
       add bl,48
       mov dl,bl
       mov ah,2
       int 21h
              
       mov ah,4ch
       int 21h       
              
    main endp
end main