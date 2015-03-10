section .text

global _ft_abs

_ft_abs:
		mov		esi, 0
		cmp		edi, esi
		jl		_neg
		mov		eax, edi
		jmp		_ret

_neg:
		not		edi

_ret:
		ret
