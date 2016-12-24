; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:39:04 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:39:04 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memset

_ft_memset:
	push rdi
	mov rax, rsi
	mov rcx, rdx
	cld
	rep stosb

end:
	pop rax
	ret
