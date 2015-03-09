section .text

global _ft_bzero

_ft_bzero:
		cmp		rcx, rsi
		je		_null
		push	rdi
		mov		rcx, rsi
		mov		rax, 0

		rep		stosb

		pop		rax
		ret

_null:
		mov		rax, 0
		ret