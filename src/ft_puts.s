section .text

global	_ft_puts
extern	_ft_strlen

_ft_puts:
	push	rdi
	
	call	_ft_strlen

	mov		rdx, rax
	pop		rsi
	mov		rdi, 1
	mov		rax, 0x2000004
	
	syscall

	mov		rdx, 1
	mov		rdi, 1
	push	10
	mov		rsi, rsp
	mov		rax, 0x2000004

	syscall

	pop		rax
	ret


	