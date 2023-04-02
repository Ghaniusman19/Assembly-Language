;Write a program to input decimal number and convert it into binary
.model small
.stack 100h
.data
    msg db 'Enter the decimal number:$'
    msg1 db 0dh,0ah, 'Binary number is:$'
.code
    main proc 
            mov ax,@data
            mov ds,ax
                
            mov ah,09h
            lea dx,msg
            int 21h
            
            mov ah,01h
            int 21h
            
            sub al,48
            mov ah,0
            mov bx,2
            mov dx,0
            mov cx,0
          again:
            div bx
            push dx
            inc cx
            cmp ax,0
            jne  again
            
           mov ah,09h
           lea dx,msg1
           int 21h
           
           l1:
            pop dx
            add dx,48
            mov ah,02h
            int 21h
            loop l1:
            
            
            mov ah,4ch
            int 21h
            
                
            
        main endp
    end main