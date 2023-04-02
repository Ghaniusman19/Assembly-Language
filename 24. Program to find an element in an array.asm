;Program to find an element in an array
.model small
.stack 100h
.data
   msg db 'element found.$'
   msg1 db 'element not found.$'
   msg2 db 'Enter the element which you want to find: $'
   num db ?
   arr db 5, 4, 2, 7, 6
   
  displaystr macro st
    lea dx,st
    mov ah,09h
    int 21h
  endm
  
  newline macro
    mov dl,0dh
    mov ah,02h
    int 21h
    
    mov dl,0ah
    mov ah,02h
    int 21h
  endm
  
.code
main proc far 
    
      mov ax,@data
      mov ds,ax
      displaystr msg2
      mov ah,01h
      int 21h
      mov bl,al
      sub bl,48
      newline
      mov cx,5
      mov si,offset arr
      again:
      cmp bl,[si]
      je  found
      inc si
      loop again
      newline
      displaystr msg1
      jmp exit
      found:
      newline
      displaystr msg
      exit:
      mov ah,4ch
      int 21h
    
    main endp
end main