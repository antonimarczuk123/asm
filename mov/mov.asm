section .data
x1 db 123
x2 dw 1234
x3 dd 12345
x4 dq 123456
x5 dq 3.14

section .bss

section .text
global main

main:
    push rbp
    mov rbp, rsp
    
    mov rax, -1
    mov al, byte [x1]
    xor rax, rax
    mov al, byte [x1]
    
    mov rax, -1
    mov ax, word [x2]
    xor rax, rax
    mov ax, word [x2]
    
    mov rax, -1
    mov rax, qword [x4]
    
    movsd xmm0, [x5]
    
    mov rsp, rbp
    pop rbp
    
    ret