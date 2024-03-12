section .bss

section .data
    var1 db "Hello world",0ah,0

section .text
    global main
    extern printf

main:
    push var1
    call printf
    add esp,4
    ret