section .text

global	_ft_strcat

_ft_strcat:
		push	rdi

_loop1:
		cmp		byte[rdi], 0x0
		je		_loop2
		inc		rdi
		jmp		_loop1


_loop2:
		cmp		byte[rsi], 0x0
		je		_ret
		movsb
		jmp		_loop2

_ret:
		pop		rax
		ret