%include "../../Includes/variables.inc"

section .bss
	digitSpace resb 100
	digitSpacePos resb 8
	printSpace resb 8

%macro printf 2
	mov rax, %2
	cmp rax, 0
	jne %%countSet ; if second param != 0 jump to end
	mov rax, %1
	mov rbx, 0
%%printLoop:
	mov cl, [rax]
	cmp cl, 0
	je %%endPrintLoop
	inc rbx
	inc rax
	jmp %%printLoop
%%countSet:
	mov rbx, %2
%%endPrintLoop:
	mov rax, SYS_WRITE
	mov rdi, STDIN
	mov rsi, %1
	mov rdx, rbx
	syscall
%endmacro

%macro printVal 1
	mov rax, %1
%%printRAX:
	mov rcx, digitSpace
;	mov rbx, 10
;	mov [rcx], rbx
;	inc rcx
	mov [digitSpacePos], rcx

%%printRAXLoop:
	mov rdx, 0
	mov rbx, 10
	div rbx
	push rax
	add rdx, 48

	mov rcx, [digitSpacePos]
	mov [rcx], dl
	inc rcx
	mov [digitSpacePos], rcx
	
	pop rax
	cmp rax, 0
	jne %%printRAXLoop

%%printRAXLoop2:
	mov rcx, [digitSpacePos]

	mov rax, 1
	mov rdi, 1
	mov rsi, rcx
	mov rdx, 1
	syscall

	mov rcx, [digitSpacePos]
	dec rcx
	mov [digitSpacePos], rcx

	cmp rcx, digitSpace
	jge %%printRAXLoop2

%endmacro

%macro exit 1
	mov rdi, %1
    cmp rdi, 0
    je %%xor
    mov rax, SYS_EXIT
    mov rdi, %1
	syscall
%%xor:
    mov rax, SYS_EXIT
    xor rdi, rdi 
    syscall
%endmacro

%macro clearRegs 0
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx
    xor rdx, rdx
	xor rdi, rdi 
	xor rsi, rsi
%endmacro

; Get input and put the input addr into rax
%macro input 3
	printf %1, 0
	mov rax, SYS_READ 
	mov rdi, STDIN 
	mov rsi, %2
	mov rdx, %3
	syscall 
%endmacro

%macro len 2 
	mov rax, %1 
	mov rbx, 0
%%loop:
	mov cl, [rax]
	cmp cl, 0 
	je %%end 
	inc rax 
	inc rbx
	jmp %%loop 
%%end:
	mov %2, rbx
%endmacro

%macro open 2
	; open path/file
    mov rax, SYS_OPEN  
    mov rdi, %1 ; path
    mov rsi, %2 ; flags
    mov rdx, 7777o ; permissions/default. Use chmod to change
    syscall
%endmacro

%macro chmod 2  ; address and permissions/mode
	mov rax, SYS_CHMOD 
	mov rdi, %1 ; #address/#fd
	mov rsi, %2 ; perms/mode
	syscall
%endmacro

%macro close 1  ; file descriptor
	mov rax, SYS_CLOSE 
	mov rdi, %1 ; #fd
	syscall 
%endmacro

%macro writeToFile 3 ; file descriptor, $buffer, and length
	mov rax, SYS_WRITE 
	mov rdi, %1 ; #fd
	mov rsi, %2 ; buffer/text to write
	mov rdx, %3 ; count
	syscall
%endmacro

%macro read 3 ; #fd, $buffer, and #count
	mov rax, SYS_READ 
	mov rdi, %1 ; file descriptor 
	mov rsi, %2 ; buffer to store incoming read
	mov rdx, %3 ; count/size of buffer
	syscall
%endmacro

%macro stat 2  ; addr/fd and buffer
	mov rax, SYS_STAT 
	mov rdi, %1 ; addr/#fd
	mov rsi, %2 ; buffer
	syscall 
%endmacro

%macro access 2 ; addr and perms/mode/flags
	mov rax, SYS_ACCESS
	mov rdi, %1 ; addr
	mov rsi, %2 ; perms/mode
	syscall 
%endmacro

%macro sleep 1 ; buffer that has seconds, nanoseconds
	mov rax, SYS_NANOSLEEP 
	mov rdi, %1
	mov rsi, 0
	syscall 
%endmacro

%macro getCWD 2 ; buffer, and count
	mov rax, SYS_GETCWD 
	mov rdi, %1 
	mov rsi, %2 
	syscall 
%endmacro

%macro chdir 1  ; addr
	mov rax, SYS_CHDIR 
	mov rdi, %1 ; addr
	syscall 
%endmacro

%macro rename 2 ; old path new path
	mov rax, SYS_RENAME 
	mov rdi, %1 
	mov rsi, %2
	syscall 
%endmacro