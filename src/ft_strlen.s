section .text

global	_ft_strlen

_ft_strlen:
		mov		rax, 0
		mov		rcx, -1


		cdl
		repnz	scasb

		not		rcx
		lea		rax, [rcx - 1]
		ret