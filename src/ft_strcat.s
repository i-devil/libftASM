section .text

global	_ft_strcat

_ft_strcat:
		push	rdi

_loop1:
		cmp		rdi, '0'
		je		_loop2
		inc		rdi
		jmp		_loop1


_loop2:
		cmp		rsi, '0'
		je		_ret
		movsb
		jmp		_loop2

_ret:
		pop		rax
		ret