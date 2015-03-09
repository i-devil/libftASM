section .text

global _ft_isspace

_ft_isspace:
		cmp		rdi, 9
		je		_reto
		cmp		rdi, 27
		je		_reto
		cmp		rdi, 13
		je		_reto
		cmp		rdi, 11
		je		_reto
		cmp		rdi, 28
		je		_reto
		cmp		rdi, 32
		je		_reto
		jmp		_retz

_reto:
		mov		rax, 1
		ret 

_retz:
		mov		rax, 0
		ret