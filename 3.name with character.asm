;Program to print a name with characters
.model small
.stack 100h
.data
    
.code
    main proc far
        mov dl,'u'
        mov ah,2
        int 21h 
        
         ; mov dl,0dh
          ;mov ah,02h
          ;int 21h
          ;mov dl,0ah
          ;mov ah,02h
          ;int 21h   
          
        mov dl,'s'
        mov ah,2
        int 21h
        mov dl,'m'
        mov ah,2
        int 21h
         mov dl,'a'
        mov ah,2
        int 21h
         mov dl,'n'
        mov ah,2
        int 21h
        
        mov ah,4ch
        int 21h
        
        
main endp
    end main
    