section .text

global	_ft_max

_ft_max:
		cmp		rdi, rsi
		jge		_max 
		cmp		rsi, rdi
		jl		_min

_max:
		mov		rax, rdi
		ret

_min:
		mov		rax, rsi
		ret