; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:39:45 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:39:45 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .data
nullStr: db "(null)",0xA

section .text
	global _ft_puts
	extern _ft_strlen
	extern _ft_putchar

_ft_puts:
	push rbp
	mov rbp, rsp
	
	cmp rdi, 0
	je is_null
	call _ft_strlen
	mov rsi, rdi
	mov rdi, STDOUT
	mov rdx, rax
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	mov rdi, 0xA
	call _ft_putchar
	jmp end

is_null:
	lea rsi, [rel nullStr]
	mov rdi, STDOUT
	mov rdx, 7
	mov rax, MACH_SYSCALL(WRITE)
	syscall

end:
	mov rsp, rbp
	pop rbp
	ret
