section .text

global _ft_toupper

_ft_toupper:
		cmp		rdi, 'a'
		jl		_ret
		cmp		rdi, 'z'
		jg		_ret
		sub		rdi, 32

_ret:
	mov		rax, rdi
	ret
