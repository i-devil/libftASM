section .text

global _ft_bzero

_ft_bzero:
		push	rdi
		mov		rcx, rsi

		rep		stosb

		pop		rax
		ret