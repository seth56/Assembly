%include "../../Includes/linux64.inc"

section .data 
    file db "hi.txt", 0
    string db "This is my txt file!", 0
    nl db 10, 0
    dirname db "New Folder", 0
    seconds dq 5, 500000000  ; 5.5 seconds | first arg is seconds, second arg is nanoseconds (billionth of a second)

section .bss 
    fileContent resb 20

section .text 
    global _start
_start:
    ; create the file
    mov rax, SYS_OPEN  
    mov rdi, file
    mov rsi, O_CREAT+O_WRONLY
    mov rdx, 0x7777
    syscall
    ; write to the file
    mov rdi, rax 
    mov rax, SYS_WRITE 
    mov rsi, string 
    mov rdx, 20
    syscall
    ; close file
    mov rax, SYS_CLOSE 
    pop rdi
    syscall

    ; wait 5 seconds
    mov rax, SYS_NANOSLEEP 
    mov rdi, seconds
    mov rsi, 0
    syscall

    ; open file in read only 
    mov rax, SYS_OPEN 
    mov rdi, file 
    mov rsi, O_RDONLY 
    mov rdx, 0x7777 
    syscall

    ; read file and put into reserved fileContent
    push rax
    mov rax, SYS_READ 
    pop rdi 
    mov rsi, fileContent 
    mov rdx, 20 
    syscall 

    ; print fileContent, 10
    printf fileContent
    printf nl

    ; close file
    mov rax, SYS_CLOSE
    mov rdi, rdi 
    syscall

    ; create a folder
    mov rax, SYS_MKDIR
    mov rdi, dirname
    mov rsi, 0x7777
    syscall

    

    ; quit
    exit 0