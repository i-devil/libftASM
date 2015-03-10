section .text

global	_ft_strdup
extern	_malloc, _ft_strlen, _ft_memcpy

_ft_strdup:
		push	rbp
		mov		rbp, rsp

		mov		rbx, rdi
		call	_ft_strlen
		mov		rdi, rax
		add		rdi, 1
		push	rdi

		call	_malloc
		test	rax, rax
		jz		_fail_exit

		mov		rdi, rax
		mov		rsi, rbx
		pop		rdx

		call	_ft_memcpy

_fail_exit:
		mov		rsp, rbp
		pop		rbp
		ret
