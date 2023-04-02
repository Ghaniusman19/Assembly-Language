;program to print the input number is equal to or not equal to given number in program
.model small
.stack 100h
.data 
    msg1 db 'Number is equal$'
    msg2 db 'Number is not equal$'
.code 
    main proc far
        
     mov ax,@data
     mov ds,ax
     
 mov dl,'3'
 
 mov ah,01h
 int 21h
 
 cmp al,dl
 je L1
 
    mov dx,offset msg2
    mov ah,09h
    int 21h
         
      mov ah,4ch
      int 21h   
         
    L1:
      mov dx,offset msg1
      mov ah,09h
      int 21h
      
      
      mov ah,4ch
      int 21h
      

    main endp
end main