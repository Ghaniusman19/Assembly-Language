;Program to reverse a string
.model small
.stack 100h
.data
    string db 'Usman'
.code
main proc far
     
      mov ax,@data
      mov ds,ax
      
      mov si,offset string
      
      mov cx,5
      
      L1:
         mov bx,[si]
         push bx
         inc si
     Loop L1
     
     mov cx,5
      L2:
         pop dx
         mov ah,02h
         int 21h
     Loop L2 
     
     mov ah,4ch
     int 21h
    
    main endp
end main