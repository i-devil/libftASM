section .text

global	_ft_strcat

_ft_strcat:
	push	rdi


	mov 	rcx, rsi
	mov 	rax, 0

	rep		movsb

	pop		rax

	mov		rdi, 1
	push	10
	pop		rax
	
	ret