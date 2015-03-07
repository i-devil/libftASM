section .text

global 		_ft_memset

_ft_memset:
		push	rdi
		mov		rax, rsi
		mov		rsi, rdx

		cld
		rep		stosb

		pop 	rax
		ret