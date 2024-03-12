section .data
counter dq 10
x dq 1000000

section .text
global main
main:
    mov rbp, rsp; for correct debugging  
    mov rax, qword[x]
    mov rbx, qword[counter]   
    
    until:
        cmp rbx, 0
        je end_until
        dec rbx
        inc rax  
        jmp until
    end_until:
    
    ret