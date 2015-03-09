section .text

global	_ft_min

_ft_min:
		cmp		rdi, 0
		jl 		_neg
		cmp		rdi, rsi
		jle		_min 
		mov		rax, rsi

_neg:
		mov 	rax, rdi
		ret

_min:
		mov		rax, rdi
		ret