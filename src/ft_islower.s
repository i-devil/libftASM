section .text

global	_ft_islower

_ft_islower:
		cmp		rdi, 97
		jl		_retz
		cmp		rdi, 122
		jg		_retz

_reto:
		mov		rax, 1
		ret 

_retz:
		mov	rax, 0
		ret