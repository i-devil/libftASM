section .text

global	_ft_max

_ft_max:
		cmp		edi, esi
		jg		_max
		mov		eax, esi
		jmp		_end

_max:
		mov		eax, edi

_end:
		ret
