section .text

global _ft_abs

_ft_abs:
		cmp		edi, 0
		jl		_neg
		mov		eax, edi
		ret

_neg:
		sub		edi, 0
		mov		eax, edi
		ret