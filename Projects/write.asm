%include "../../Includes/linux64.inc"

section .data 
    q1 dq "Enter the path to the file: ", 0
    q2 dq "Enter text to insert into the file: ", 0
    nl db 10, 0
section .bss 
    path resb 100
    text resb 100
    fileContent resb 100
section .text 
    global _start
_start:
    ; get path/file
    input q1, path, 100 

    ; get text to write to the file
    input q2, text, 100

    ; open path/file
    mov rax, SYS_OPEN        
    mov rdi, path
    mov rsi, O_CREAT+O_RDWR+O_APPEND
    mov rdx, 7777o 
    syscall
    push rax  

    len text, rcx ; get length of text input
    dec rcx

    mov rax, SYS_WRITE ; call
    pop rdi ; file descriptor
    mov rsi, text ; buffer
    mov rdx, rcx ; count
    syscall 

    mov rax, SYS_CLOSE 
    mov rdi, rdi
    syscall 

    exit 0