section .text

global _ft_isprint

_ft_isprint:
		cmp		rdi, 32
		jl		_retz
		cmp		rdi, 126
		jg		_retz

_reto:
		mov		rax, 1
		ret

_retz:
		mov		rax, 0
		ret