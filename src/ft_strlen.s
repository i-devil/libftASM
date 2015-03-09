section .text

global	_ft_strlen

_ft_strlen:
		cmp		rdi, 0
		je		_null
		mov		rax, 0
		mov		rcx, -1

		repnz	scasb

		not		rcx
		lea		rax, [rcx - 1]
		ret

_null:
		mov		rax, 0
		ret