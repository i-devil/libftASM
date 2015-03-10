section .text

global	_ft_min

_ft_min:
		push	rbp
		mov		rbp, rsp

		cmp		edi, esi
		jl 		_min
		mov		eax, esi
		jmp		_end

_min:
		mov		eax, edi

_end:
		mov		rsp, rbp
		push	rbp
		ret
