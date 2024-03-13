extern printf

%macro prntf 2
    section .data
    %%msg   db  %1, 0
    %%fmt   db  "%s %ld"
    
    section .text
    mov     rdi,    %%fmt
    mov     rsi,    %%msg
    mov     rdx,    [%2]
    mov     rax,    0
    call    printf
%endmacro

section .data
number  dq  15

section .bss

section .text
global main
main:
    push    rbp
    mov     rbp,    rsp

    prntf   "Hello World!", number

    xor     rax,    rax
    mov     rsp,    rbp
    pop     rbp
    ret
    
    
    
    
    