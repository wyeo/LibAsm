; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_streq.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: wyeo <marvin@42.fr>                        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/05/23 00:41:32 by wyeo              ;+;    ;+;              ;
;    Updated: 2015/05/23 00:41:32 by wyeo             ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_streq

_ft_streq:
	push rdi
	push rsi

loop:
	mov al, byte[rdi]
	cmp al, byte[rsi]
	jne not_eq
	cmp byte[rdi], 0
	je eq
	inc rdi
	inc rsi
	jmp loop

not_eq:
	mov rax, 0
	jmp end

eq:
	mov rax, 1
	jmp end

end:
	pop rsi
	pop rdi
	ret
