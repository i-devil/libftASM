section .text

global	_ft_max

_ft_max:
		cmp		rdi, rsi
		jge		_max 
		cmp		rsi, rdi
		jl		_min

_max:
		mov		rax, rsi
		ret

_min:
		mov		rax, rdi
		ret