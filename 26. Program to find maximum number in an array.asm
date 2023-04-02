;Program to find maximum number in an array
.model small
.stack 100h
.data  
    arr db 1, 2, 3, 7, 5
    msg db 'Maximum number is:$'
.code
    main proc far
        mov ax,@data
        mov ds,ax
        
        mov si,offset arr
        mov bl,[si]
        mov cx,5
        L1:
        cmp bl,[si]
        jge  exit
        mov bl,[si]
        inc si
        exit:
        
        loop L1
        
        mov ah,09h
        lea dx,msg
        int 21h
        
        mov dl,bl
        add dl,48
        mov ah,02h
        int 21h
        
        mov ah,4ch
        int 21h
        main endp
    end main