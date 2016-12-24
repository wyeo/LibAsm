; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:39:59 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:39:59 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcat

_ft_strcat:
	push rbp
	mov rbp, rsp

	mov rcx, rdi
	mov rbx, rsi

word1:
	cmp byte[rcx], 0
	je word2
	inc rcx
	jmp word1

word2:
	cmp byte[rbx], 0
	je end
	mov al, [rbx]
	mov [rcx], al
	inc rbx
	inc rcx
	jmp word2

end:
	mov byte[rcx], 0
	mov rax, rdi

	mov rsp, rbp
	pop rbp
	ret
