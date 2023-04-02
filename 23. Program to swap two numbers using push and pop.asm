;Program to swap two numbers using push and pop
.model small
.stack 100h
.data
.code
main proc far
    
    mov ax,'1'  ; copies 1 to stack
   
    mov bx,'2'  ;copies 2 to stack
    
    push ax
       
    push bx  
    
    pop ax  ;moves 2 from stack to ax
    
    pop bx  ;moves 1 from stack to bx
    
        mov dx,ax
        mov ah,02h
        int 21h
        
         mov dx,bx
        mov ah,02h
        int 21h
          
         mov ax,4ch
         int 21h 
          
    main endp
end main 