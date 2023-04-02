;Program to print an array using loop
.model small
.stack 100h
.data 
     array db 'a','b','c' 
.code
main proc far
        
        mov ax,@data
        mov ds,ax
        
        mov si,offset array
        
        mov cx,3
        
        L1:
            mov dx,[si]
            mov ah,02h
            int 21h
            inc si
        
        Loop L1   
        
        mov ah,4ch
        int 21h
        
    main endp 
end main 