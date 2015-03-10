%define	STDOUT				1
%define	WRITE				4
%define MAC_SYSCALL(nb)		0x2000000 | nb

section	.text

global	_ft_putchar

_ft_putchar:
		push	rdi

		mov		rdx, 1
		mov		rdi, STDOUT
		mov		rsi, rsp
		mov		rax, MAC_SYSCALL(WRITE)
		syscall

		pop		rax
		ret