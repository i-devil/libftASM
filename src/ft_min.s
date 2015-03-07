section .text

global	_ft_min

_ft_min:
		cmp		rdi, rsi
		jle		_min 
		cmp		rdi, rsi
		jg		_max	

_min:
		mov		rax, rdi
		ret

_max:
		mov		rax, rsi
		ret