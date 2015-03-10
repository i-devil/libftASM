%define	STDOUT				1
%define	READ				3
%define	WRITE				4
%define	BUFF_SIZE			256
%define MAC_SYSCALL(nb)		0x2000000 | nb

section .bss
		buffer	resb		BUFF_SIZE


section .text

global _ft_cat

_ft_cat:
		push	rbp
		mov		rbp, rsp

_start:
		push	rdi
		mov		rsi, buffer
		mov		rdx, BUFF_SIZE
		mov		rax, MAC_SYSCALL(READ)
		syscall
		jc		_end
		cmp		rax, 0
		jle		_end
		mov		rdi, STDOUT
		mov		rdx, rax
		mov		rax, MAC_SYSCALL(WRITE)
		syscall
		pop		rdi
		jmp		_start


_end:
		mov		rsp, rbp
		pop		rbp
		ret
