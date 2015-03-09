section .text

global	_ft_strdup
extern	_malloc, _ft_strlen, _ft_memcpy

_ft_strdup:
		push	rdi
		call	_ft_strlen

		pop		rdi;
		mov		rsi, rdi
		mov		rdx, rax

		push	rdi
		call	_malloc
		test	rax, rax
		jz		_fail_exit
		pop		rdi
		mov		rdi, rax

		call	_ft_memcpy
		ret

_fail_exit:
		mov		rax, 1
		pop		rbx
		ret


