section .text

global _ft_tolower

_ft_tolower:
		cmp		rdi, 65
		jl		ret
		cmp		rdi, 90
		jg		ret
		add		rdi, 32

ret:
		mov		rax, rdi
		ret