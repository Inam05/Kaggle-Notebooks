.model small
.stack 100h

.data

.code
start:
    mov dl, 'A'
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h
end start
