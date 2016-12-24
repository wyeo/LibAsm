; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:41:08 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:41:08 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcpy
	extern _ft_strlen

_ft_strcpy:
	push rbp
	mov rbp, rsp

	mov rbx, rdi
	mov rdi, rsi
	call _ft_strlen
	mov rcx, rax
	inc rcx
	mov rsi, rdi
	mov rdi, rbx
	cld
	rep movsb
	mov rax, rbx
	
	mov rsp, rbp
	pop rbp
	ret
