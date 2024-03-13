section .data
    message1        db  "Hello, World!",10,0
    message1_len    equ $-message1
    
    message2        db  "Enter Text: ",0
    message2_len    equ $-message2
    
    message3        db  "Your Input: ",0
    message3_len    equ $-message3
    
    input_lenght    equ 10
    
section .bss
    input   resb    input_lenght+1
    
section .text
global main

main:
    push    rbp
    mov     rbp,    rsp
    
    mov     rsi,    message1
    mov     rdx,    message1_len
    call    prints
    
    mov     rsi,    message2
    mov     rdx,    message2_len
    call    prints
    
    mov     rsi,    input   
    mov     rdx,    input_lenght
    call    reads
    
    mov     rsi,    message3
    mov     rdx,    message3_len
    call    prints
    
    mov     rsi,    input
    mov     rdx,    input_lenght
    call    prints
   
    leave
    ret
    
prints:
    push    rbp
    mov     rbp,    rsp
    
    mov     rax,    1
    mov     rdi,    1
    syscall
    
    leave
    ret
    
   
reads:
    push    rbp
    mov     rbp,    rsp
    
    mov     rax,    0
    mov     rdi,    0
    syscall
    
    leave
    ret 
   






