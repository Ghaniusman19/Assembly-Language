;Program to convert small letter into capital letter
.model small
.stack 100h
.data
.code
main proc far
    mov ah,01h
    int 21h
    
    mov dl,al
    sub dl,32
    
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main