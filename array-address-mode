section .data
A dq 10,23,35,24,75,65,37,88,19
Atype equ 8

section .text
global main
main:
    mov rbp, rsp    ; for correct debugging  
    mov rbx, 0  
    
    startloop:
        cmp rbx, 9
        je endloop  ; if rbx == 9 goto endloop
        mov rax, [A+rbx*Atype]      
        inc rbx
        jmp startloop
    endloop:
            
    ret