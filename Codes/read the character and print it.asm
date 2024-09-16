.model small       ; Defines the small memory model where both code and data fit into one segment.
.stack 100h        ; Defines a stack segment of 256 bytes (100h in hexadecimal).
.data              ; Begins the data segment.

.code              ; Begins the code segment.
start:
    mov ax, @data  ; Load the address of the data segment into AX.
    mov ds, ax     ; Move the address in AX into DS to set up the data segment.

    ; Read a character from input with echo
    mov ah, 01h    ; Set AH to 01h - DOS function to read a character from input (with echo).
    int 21h        ; Call DOS interrupt 21h to read the character from the keyboard.

    ; Display the read character
    mov dl, al     ; Move the character read from input (stored in AL) to DL.
    mov ah, 02h    ; Set AH to 02h - DOS function to display a character.
    int 21h        ; Call DOS interrupt 21h to display the character in DL.

    ; Terminate the program
    mov ah, 4Ch    ; Set AH to 4Ch - DOS function to terminate the program.
    int 21h        ; Call DOS interrupt 21h to terminate the program.
end start          ; Marks the end of the program and sets the entry point to 'start'.
