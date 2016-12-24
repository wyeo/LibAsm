; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:39:24 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:39:24 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_putchar

_ft_putchar:
	push rbp
	mov rbp, rsp

	push rdi
	mov rdi, 1
	mov rsi, rsp
	mov rdx, 1
	mov rax, 0x2000004
	syscall
	pop rdi
	mov rsp, rbp
	pop rbp
	ret
