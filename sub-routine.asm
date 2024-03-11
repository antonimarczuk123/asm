section .data

section .text
global main

my_sub_code:

    mov r9, rbp
    mov rbp, rsp

    push rax
    push rbx
    push rcx
    push rdx
    
    pop rdx
    pop rcx
    pop rbx
    pop rax
    
    mov rbp, r9

    ret

main:
    mov rbp, rsp; for correct debugging
    mov r10, $
    mov rax, 10
    mov rbx, 20
    mov rcx, 30
    mov rdx, 40
    
    call my_sub_code
    
    mov rax, 0
    
    ret