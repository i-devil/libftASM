section .text

global _ft_abs

_ft_abs:
		cmp		edi, 0
		jl		_neg
		mov		eax, edi
		ret

_neg:
		not		edi
		add		edi, 1
		mov		eax, edi
		ret