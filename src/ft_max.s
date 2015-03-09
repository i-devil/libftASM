section .text

global	_ft_max

_ft_max:
		cmp		rdi, 0
		jl		_neg
		cmp		rdi, rsi
		jz		_max
		mov		rax, rsi

_neg:
		mov		rax, rsi
		ret

_max:
		mov		rax, rdi
		ret