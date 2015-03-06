section .text

; write = 0x02000004

global _ft_puts

_ft_puts:
	mov		rax, 0x02000004
	mov		rdi, 1
	
	syscall
	