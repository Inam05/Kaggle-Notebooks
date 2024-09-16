.model small       ; Defines the memory model as 'small', which means code and data will each fit into one segment (64KB).
.stack 100         ; Allocates 100 bytes for the stack, used for temporary storage during program execution.
.data              ; Begins the data segment, where we declare and store variables.

msg db "Hello World!!!!!$" ; Defines a string variable 'msg' in the data segment, ending with a '$' symbol to indicate the end of the string.

.code              ; Begins the code segment, where the actual instructions of the program are written.
    mov ax, @data  ; Moves the segment address of the data segment into register 'ax'.
    mov ds, ax     ; Copies the value in 'ax' (the data segment address) into the data segment register 'ds' to set up addressing for data.

    lea dx, msg    ; Load the effective address of the 'msg' string into register 'dx'. 'dx' will point to the start of the string.
    
    mov ah, 09h    ; Load the value '09h' (function code for printing a string) into register 'ah'. DOS interrupt 21h uses this code to display a string.
    int 21h        ; DOS interrupt 21h is called, and the function '09h' will display the string pointed to by 'dx' (the 'msg') on the screen.
    
    mov ah, 4ch    ; Load the value '4ch' (function code for terminating the program) into register 'ah'.
    int 21h        ; DOS interrupt 21h is called again, and the function '4ch' will terminate the program and return control to the operating system.
end                ; Marks the end of the source code.
