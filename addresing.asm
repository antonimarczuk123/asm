section .data
var dd 0x12345678

section .text
global main
main:
    mov rbp, rsp; for correct debugging

    mov rax, 0
    mov rbx, 0
    mov rcx, 0
    mov rdx, 0
    
    mov al, [var]
    mov bl, [var+1]
    mov cl, [var+2]
    mov dl, [var+3]
    
    ret