.model small       ; Defines the memory model as 'small', which means code and data will each fit into one segment (64KB).
.stack 100         ; Allocates 100 bytes for the stack, used for temporary storage during program execution.
.data              ; Begins the data segment, where we declare and store variables.

msg1 db "Inam Ul Hassan$"   ; First string to print, ending with '$' for DOS interrupt.
newline db 13, 10, '$'     ; Carriage return (13) and line feed (10) to move to the next line, ending with '$'.
msg2 db "From Superior University Gold Campus$" ; Second string to print, ending with '$'.

.code              ; Begins the code segment, where the actual instructions of the program are written.
    mov ax, @data  ; Moves the segment address of the data segment into register 'ax'.
    mov ds, ax     ; Copies the value in 'ax' (the data segment address) into the data segment register 'ds'.

    mov dx, offset msg1 ; Load the offset address of the first string 'msg1' into register 'dx'.
    mov ah, 09h    ; Load the value '09h' (function code for printing a string) into register 'ah'.
    int 21h        ; DOS interrupt 21h is called to display the string pointed to by 'dx' (the 'msg1') on the screen.
    
    mov dx, offset newline ; Load the offset address of the 'newline' string to move to the next line.
    mov ah, 09h    ; Load the value '09h' (function code for printing a string) into register 'ah'.
    int 21h        ; DOS interrupt 21h is called to display the newline characters.
    
    mov dx, offset msg2 ; Load the offset address of the second string 'msg2' into register 'dx'.
    mov ah, 09h    ; Load the value '09h' (function code for printing a string) into register 'ah'.
    int 21h        ; DOS interrupt 21h is called to display the string pointed to by 'dx' (the 'msg2') on the screen.
    
    mov ah, 4ch    ; Load the value '4ch' (function code for terminating the program) into register 'ah'.
    int 21h        ; DOS interrupt 21h is called again to terminate the program and return control to the operating system.
end           ; Marks the end of the source code and sets the entry point to 'start'.
