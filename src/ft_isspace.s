section .text

global _ft_isspace

_ft_isspace:
		cmp		edi, 9 
		je		_reto
		cmp		edi, 10
		je		_reto
		cmp		edi, 13
		je		_reto
		cmp		edi, 11
		je		_reto
		cmp		edi, 28
		je		_reto
		cmp		edi, 32
		je		_reto
		mov		eax, 0
		ret

_reto:
		mov		eax, 1
		ret 