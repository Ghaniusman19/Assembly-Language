;Program to find an element and its index number
.model small
.stack 100h
.data 
    msg db 'Element is found at index: $'
    msg1 db 'Element not found. $'
    msg2 db 'Enter the element which you want to find: $'
    num db 0
    arr db 5,4,2,7,6
    
    displaystr macro st
        lea dx,st
        mov ah, 09h
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
          inc num
          loop again
          newline
          displaystr msg1
          jmp exit
          found:
          newline
          displaystr msg
          mov dl,num 
          add dl,48
          mov ah,02h
          int 21h
          exit:
          mov ah,4ch
          int 21h
          
        main endp
    end main