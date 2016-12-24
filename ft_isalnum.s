; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:35:47 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:35:47 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isalnum

_ft_isalnum:
	mov rax, 0
	cmp rdi, 48
	js no
	cmp rdi, 58
	js yes
	cmp rdi, 65
	js no
	cmp rdi, 91
	js yes
	cmp rdi, 97
	js no
	cmp rdi, 123
	js yes

no:
	ret

yes:
	mov rax, 1
	ret
