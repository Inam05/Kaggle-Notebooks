.model small
.stack 100  

.data
    msg db "Enter a character : $ "             
    msg2 db 10,13," You entered the character : $" 
    
.code                        
       
  mov ax , @data
  mov ds,ax 
 
  lea dx , msg
  mov ah , 09h 
  int 21h
    
  mov ah, 01h
  int 21h   
  mov bl , al 
  lea dx, msg2
  
  mov ah , 09h
  int 21h
  
  mov ah, 02h 
  mov dl , bl 
  int 21h 
 
  mov ah,4ch
  int 21h
end