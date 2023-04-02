;Program to cancatinate two strings with a space in between them
.model small
.stack 100h
.data  
    source db 'Hello$'
    source2 db 'World$'
    source3 db 20 dup('$')
.code
    main proc far
                 mov ax,@data
                 mov ds,ax
                 
                 mov si,0
               again:  
                 cmp source[si],'$'
                 je   exit
                 mov bl,source[si]
                 mov source3[di],bl
                 inc si
                 jmp again
                 
               again2:  
                 cmp source2[si],'$'
                 jmp  exit1
                 mov bl,source[si]
                 mov source3[di],bl
                 inc si
                 jmp again2
                 
               exit:
                   mov ah,09h
                   int 21h
                   
               exit1: 
                  ;entering space
                   mov dl,32
                   mov ah,02h
                   int 21h
                
                   lea dx,source2
                   mov ah,09h
                   int 21h
                
                
                mov ah,4ch
                int 21h 
                      
    main endp
end main