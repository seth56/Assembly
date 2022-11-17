%include "../../Includes/linux64.inc"

section .data 
    csvFile db "sched.csv", 0
    rows db "Rows: " , 0
    columns dw "Columns: ", 0

section .bss 
    fileContents resb 100

section .text 
    global _start 
_start: 
    clearRegs 
    open csvFile, O_RDWR
    mov rbx, rax
    push rax
    read rbx, fileContents, 100 ; put csv file contents into buffer
    len fileContents, rdi ; length
    mov rsi, 0 ; cols 
    mov rbx, 1 ; rows (starts at 1)
    mov rcx, 0 ; iterator
    mov rdx, 0

loop:
    mov dl, [fileContents+rcx]
    inc rcx
    cmp rdx, 44 
    je addCol
    cmp rdx, 10
    je addRow 
checkLength:
    cmp rcx, rdi 
    je quit
    jmp loop
    
addCol:
    cmp rbx, 1
    jg checkLength
    inc rsi 
    jmp checkLength

addRow:
    inc rbx 
    jmp checkLength

quit:
    push rbx
    push rsi


    printf fileContents, rdi
    println

    printf columns, 0
    pop rsi
    printVal rsi
    println
    printf rows, 0
    pop rbx
    printVal rbx
    println


    exit 0