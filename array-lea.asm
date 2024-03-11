section .data
x dq 10, 20, 30, 40

section .text
global main
main:
    mov rbp, rsp; for correct debugging
    
    mov rax, 0
    startloop:
        cmp rax, 4
        je endloop
        lea rbx, [x+8*rax]
        mov rcx, [rbx]
        inc rax
        jmp startloop
    endloop:
    
    ret