.model small
.stack 100
.data

.code    
    mov dl , 'I'     
    mov ah , 02h
    int 21h   
    
    mov dl , 'n'  
    mov ah , 02h
    int 21h  
    
    mov dl , 'a'
    mov ah , 02h
    int 21h   
    
    mov dl , 'm' 
    mov ah , 02h
    int 21h    
    
    mov dl , ' '
    mov ah , 02h
    int 21h
    
    mov dl , 'U'
    mov ah , 02h
    int 21h 
    
    mov dl , 'l'     
    mov ah , 02h
    int 21h   
    
    mov dl , ' '  
    mov ah , 02h
    int 21h  
    
    mov dl , 'H'
    mov ah , 02h
    int 21h   
    
    mov dl , 'a' 
    mov ah , 02h
    int 21h    
    
    mov dl , 's'
    mov ah , 02h
    int 21h
    
    mov dl , 's'
    mov ah , 02h
    int 21h 
    
    mov dl , 'a'
    mov ah , 02h
    int 21h
    
    mov dl , 'n'
    mov ah , 02h
    int 21h
 
    mov ah,4ch
    int 21h
 end