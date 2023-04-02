;Program to add two numbers 
.model small
.stack 100h
.code
.data
    main proc far
        mov bl,1
        mov cl,5
        add bl,cl
        
        add bl,48
        
        mov dl,bl
        mov ah,02h
        int 21h
        
        mov ah,4ch
        int 21h
        
                                     ;48=0
                                     ;49=1
                                     ;a=97
                                     ;A=65
main endp
    end main
  