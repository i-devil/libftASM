%define	STDOUT				1
%define	READ				3
%define	WRITE				4
%define	BUFF_SIZE			256
%define MAC_SYSCALL(nb)		0x2000000 | nb

section .bss
		buf resb	BUFF_SIZE	


section .text

global _ft_cat

_ft_cat:
		push	rbp
		mov		rsp, rbp
		mov		rsi, buf
		and		rsp, -16

		lea 	rsi, [rel buf]

_start:
		mov		rdi, [rbp - 8]
		mov		rdx, BUFF_SIZE
		mov		rax, MAC_SYSCALL(READ)
		syscall
		jc		_end
		cmp		rax, 0
		je		_end
		mov		rdi, STDOUT
		mov		rdx, rax
		mov		rax, MAC_SYSCALL(WRITE)
		syscall
		jmp		_start


_end:
		mov		rsp, rbp
		pop		rbp
		ret