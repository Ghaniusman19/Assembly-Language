;Program to display the length of the string 
.model small
.stack 100h
.data
    string db 'Enter a string: $'
    
   arr db 100 dup('$')
    
   string2 db 0dh,0ah, 'Length of string with spaces is : $'
    
    slen db 0
.code
main proc far
    
        mov ax,@data
        mov ds,ax
        
        mov dx,offset string
        mov ah,09h
        int 21h
        
        mov si,offset arr
      L1: 
       mov ah,01h
       int 21h
       
        mov [si],al
        cmp [si],13
        je exit 
        inc si
        inc slen       
        loop L1       
               
               
           exit: 
           mov dx,offset string2
           mov ah, 09h
           int 21h  
           
           mov dl,slen 
           add dl,48
           mov ah,02h
           int 21h  
           
           mov ah, 4ch
           int 21h
    main endp
end main