section .text

global _ft_abs

_ft_abs:
		pushs	rbp
		mov		rbp, rsp

		mov		eax, 0
		cmp		edi, eax
		jl		_neg
		mov		eax, edi
		jmp		_ret

_neg:
		sub		eax, edi

_ret:
		mov 	rsp, rbp
		push 	rbp
		ret
