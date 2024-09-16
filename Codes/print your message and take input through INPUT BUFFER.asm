.model small
.stack 100h

.data
inputBuffer db 20 dup('$')  ; Define a buffer of 20 bytes initialized with '$'
prompt db 'Enter a string (max 19 characters): $'
newline db 13, 10, '$'     ; Carriage return and line feed for newline

.code
start:
    ; Set up the data segment
    mov ax, @data
    mov ds, ax

    ; Print prompt message
    mov dx, offset prompt
    mov ah, 09h
    int 21h

    ; Read input from user
    lea dx, inputBuffer    ; Load the address of the input buffer
    mov ah, 0Ah            ; DOS function 0Ah for buffered input
    int 21h                ; Call DOS interrupt to read input

    ; Print a newline
    mov dx, offset newline
    mov ah, 09h
    int 21h

    ; Print the input string
    mov dx, offset inputBuffer + 2  ; Offset to the actual input (skips the first 2 bytes)
    mov ah, 09h                    ; DOS function 09h to print a string
    int 21h                        ; Call DOS interrupt to print the string

    ; Terminate the program
    mov ah, 4Ch
    int 21h

end start
