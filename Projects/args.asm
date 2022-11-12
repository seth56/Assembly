%include "../Includes/linux64.inc"

section .data
	texta db "Argument(s): ",0
	textb1 db "Argument #",0
	textb2 db ": ",0
	newline db 10,0

section .bss
	argc resb 8
	argPos resb 8

section .text
	global _start

_start:
	mov rax, 0
	mov [argPos], rax

	printf texta
	pop rax
	mov [argc], rax
	printVal rax
	printf newline

_printArgsLoop:
	printf textb1
	mov rax, [argPos]
	inc rax
	mov [argPos], rax
	printVal rax
	printf textb2
	pop rax
	printf rax
	printf newline

	mov rax, [argPos]
	mov rbx, [argc]
	cmp rax, rbx
	jne _printArgsLoop

	exit 0

