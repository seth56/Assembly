

section .data
    text db "What is your name? "
    len equ $ - text
    welcome db "Welcome, "
    xy db 0

section .bss
    name resb 16

section .text
    global _start
_start:
    call printf
    call getName
    call printName
    call quit

printf:
    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, len
    syscall
    ret

getName:
    mov rax, 0
    mov rdi, 0
    mov rsi, name 
    mov rdx, 16
    syscall
    ret

printName:
    mov rax, 1
    mov rdi, 1
    mov rsi, welcome
    mov rdx, 9
    syscall
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 16
    syscall
    ret

setZero:
    mov rax, 0
    mov rbx, 0
    mov rcx, 0
    mov rdx, 0

quit:
    mov rax, 1
    mov rbx, 0
    int 0x80