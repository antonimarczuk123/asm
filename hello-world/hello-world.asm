section .data
    hello db 'Hello, World!', 10, 0 
    len equ $-hello
    
section .text
    global main
    
main:
    
    ;write 'Hello, World!' to stdout
    mov rax, 1      ;syscall number for sys_write
    mov rdi, 1      ;file descriptor stdout
    mov rsi, hello  ;address of text to display
    mov rdx, len    ;string length
    syscall
    
    ;exit the program
    mov rax, 60     ;syscall number for sys_exit
    xor rdi, rdi    ;return code 0
    syscall

    ret
