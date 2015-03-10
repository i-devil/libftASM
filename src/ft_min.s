section .text

global	_ft_min

_ft_min:
		cmp		edi, esi
		jl 		_min
		mov		eax, esi
		jmp		_end

_min:
		mov		eax, edi

_end:
		ret
