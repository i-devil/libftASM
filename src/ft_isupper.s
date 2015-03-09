section .text

global _ft_isupper

_ft_isupper:
		cmp		rdi, 65
		jl		_retz
		cmp		rdi, 90
		jg		_retz

_reto:
		mov		rax, 1
		ret 

_retz:
		mov		rax, 0
		ret