; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:36:10 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:36:10 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isalpha

_ft_isalpha:
	mov rax, 0
	cmp rdi, 65
	js no
	cmp rdi, 91
	js yes
	cmp rdi, 97
	js no
	cmp rdi, 123
	js yes

no:
	mov rax, 0
	ret

yes:
	mov rax, 1
	ret
