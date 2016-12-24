; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isspace.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:38:06 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:38:06 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isspace

_ft_isspace:
	mov rax, 0
	cmp rdi, 9
	je yes
	cmp rdi, 13
	je yes
	cmp rdi, 32
	je yes

no:
	ret

yes:
	mov rax, 1
	ret
