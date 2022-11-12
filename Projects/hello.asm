global _start

segment .data
    msg db "Hello", 0x0a
    len equ $ - msg


segment .text
_start:
    mov eax, 4     ; 4 = sys_write call 
    mov ebx, 1     ; file descriptor for stdout
    mov ecx, msg   ; Pointer to msg
    mov edx, len   ; Bytes to write
    int 0x80       ; Perform system call
    mov eax, 1     ; 1 = sys_exit call 
    mov ebx, 0     ; exit status = 0
    int 0x80       ; Perform system call

    ; ax, bx, cx, dx, eax, ebx, ecx, edx, rax, rbx, rcx, rdx ARE ALL REGISTERS
    ; mov = put value into register
    ; int = interupt

    ; EAX = Accumulator
        ; System calls go in eax
            ; 1 = sys_exit
            ; 2 = sys_fork
            ; 3 = sys_read
            ; 4 = sys_write
            ; 5 = sys_open
            ; 6 = sys_close
    ; EBX = Base
    ; ECX = Counter
    ; EDX = Data
