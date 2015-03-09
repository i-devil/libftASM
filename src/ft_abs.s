section .text

global _ft_abs

_ft_abs:
		cmp		rdi, 0
		jl		_neg
		cmp		rdi, 0
		jge		_ret

_neg:
		not		rdi
		jmp		_ret

_ret:
		mov		rax, rdi
		ret
