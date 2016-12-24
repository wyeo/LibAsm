; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:38:30 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:38:30 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memcpy

_ft_memcpy:
	push rdi
	mov rcx, rdx
	cld
	rep movsb
	pop rax
	ret