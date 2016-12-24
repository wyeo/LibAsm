; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:33:57 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:33:57 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_bzero

_ft_bzero:
	cmp rdi, 0
	jz end
	mov rbx, rdi
	mov rax, rsi

loop:
	cmp rax, 0
	jle end
	mov byte[rbx], 0
	inc rbx
	dec rax
	jmp loop

end:
	ret
