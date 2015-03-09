section .text

global _ft_abs

_ft_abs:
		mov		rcx, 0
		cmp		rdi, rcx
		jl		_neg
		cmp		rdi, rcx
		jge		_ret

_neg:
		sub		rcx, rdi
		mov		rax, rdi
		ret

_ret:
		mov		rax, rdi
		ret
