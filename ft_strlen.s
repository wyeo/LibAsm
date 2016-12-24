; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:41:44 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:41:44 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strlen

_ft_strlen:
	cmp rdi, 0
	jle null

	push rdi
	xor rcx, rcx
	not rcx
	xor al, al
	cld
	repne scasb
	not rcx
	dec rcx
	mov rax, rcx
	pop rdi
	ret

null:
	mov rax, 0
	ret
