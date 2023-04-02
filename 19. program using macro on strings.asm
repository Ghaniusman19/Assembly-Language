;program using macro on strings
print macro p1
   mov dx,offset p1
   mov ah,09h
   int 21h
endm
.model small
.stack 100h
.data
    Str1 db 'Hello$'
    Str2 db ' It is a test program$'
.code
main proc far
    
    mov ax,@data
    mov ds,ax
    
    print Str1
    print Str2
    
    mov ah,4ch
    int 21h
    
    main endp
end main