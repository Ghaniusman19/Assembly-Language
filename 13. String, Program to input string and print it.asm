;String, Program to input string and print it    
.model small
.stack 100h
.data   
     var1 db 100 dup('$')
.code
main proc far
       
        mov ax,@data
        mov ds,ax
        
        ;to access an array
        
        mov si,offset var1
        L1:
        mov ah,01h
        int 21h
         
        cmp al,32      ;13 is an ASCII code ofenter key
        je programend
        mov [si],al
        inc si
        jmp L1
        programend:  
           
            mov dx,offset var1  
            mov ah,09h 
            int 21h 
            
            mov ah,4ch
            int 21h
        
    main endp
end main