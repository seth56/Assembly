%include "../../Includes/linux64.inc"

section .data 
    text db "Hello", 0
    is db " is ", 0
    isnot db " is not ", 0 
    writable db "writable", 10, 0
    readable db "readable", 10, 0
    executable db "executable", 10, 0
    nl db 10, 0
    path db "hi.txt", 0

section .bss 
    fileContent resb 100

section .text 
    global _start 
_start: 

    ; check read, write, execute perms of file using sys_access. Print the results

    chmod path, 4444o
checkR:
    access path, 4 ; 0 = F_OK (if file exists), 1 = X_OK (Executable), 2 = W_OK (Writable), 4 = R_OK (Readable), 7 = All
    cmp rax, 0 
    je Rable 
    printf path, 0
    printf isnot, 0
checkX: 
    printf readable, 0
    access path, 1 ; 0 = F_OK (if file exists), 1 = X_OK (Executable), 2 = W_OK (Writable), 4 = R_OK (Readable), 7 = All
    cmp rax, 0 
    je Xable 
    printf path, 0
    printf isnot, 0
checkW:
    printf executable, 0
    access path, 2 ; 0 = F_OK (if file exists), 1 = X_OK (Executable), 2 = W_OK (Writable), 4 = R_OK (Readable), 7 = All
    cmp rax, 0 
    je Wable
    printf path, 0
    printf isnot, 0
quit: 
    printf writable, 0
    exit 0

Rable: 
    printf path, 0
    printf is, 0
    jmp checkX
Xable: 
    printf path, 0
    printf is, 0
    jmp checkW
Wable: 
    printf path, 0
    printf is, 0
    jmp quit