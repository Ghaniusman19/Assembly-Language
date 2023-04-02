;Program to print capital letters from A to Z using loops  

.model small
.stack 100h
.data
.code
main proc far
    
    mov cx,26
    mov dx,65
    
    L1:
    
      mov ah,02h
      int 21h
         
      inc dx
    
    
    Loop L1 
    
    mov ah,4ch
    int 21h
    
    main endp
end main