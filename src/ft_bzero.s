section .text

global _ft_bzero

_ft_bzero:
		push	rdi
		mov		rcx, rsi
		mov		rax, 0

		rep		stosb

		pop		rax
		ret