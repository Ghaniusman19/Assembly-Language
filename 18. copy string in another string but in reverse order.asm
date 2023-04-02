;program to copy string in another string but in reverse order
.model small
.stack 100h
.data  
    source  db 'Hello$'
    dest db 20 dup('$')
    
    ;macro of a new line
    newline macro
        mov dl,0dh
        mov ah,02h
        int 21h
        mov dl,0ah
        mov ah,02h
        int 21h
    endm
    
.code
    main proc far
        
        mov ax,@data
        mov ds,ax
        
        mov si,0
        
        again:
             cmp source[si],'$'
             je   exit
             mov bl,source[si]
             mov dest[si],bl
             inc si 
             jmp again
             
             
             exit:
               lea dx,dest
               mov ah,09h
               int 21h
               
               newline
               
               mov di,0
               mov cx,5
               
               loop1:
                    mov bx,[di]
                    push bx
                    inc di
               loop loop1
               
                mov cx,5
                      
               loop2:
                    pop dx
                    mov ah,02h
                    int 21h
               loop loop2 
               
               mov ah,4ch
               int 21h
               
        main endp
    end main