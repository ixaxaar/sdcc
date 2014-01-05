;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:50 2013
;--------------------------------------------------------
	.module _atol
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../_atol.c: 29: long atol(char * s)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
_atol:
	sub	sp, #25
;	../_atol.c: 31: register long rv=0; 
	clrw	x
	ldw	(0x03, sp), x
	ldw	(0x01, sp), x
;	../_atol.c: 35: while (*s) {
	ldw	x, (0x1c, sp)
00107$:
	ld	a, (x)
;	../_atol.c: 38: if (*s == '-' || *s == '+') 
	cp	a, #0x2d
	jrne	00169$
	push	a
	ld	a, #0x01
	ld	(0x1a, sp), a
	pop	a
	jra	00170$
00169$:
	clr	(0x19, sp)
00170$:
	cp	a, #0x2b
	jrne	00172$
	push	a
	ld	a, #0x01
	ld	(0x19, sp), a
	pop	a
	jra	00173$
00172$:
	clr	(0x18, sp)
00173$:
;	../_atol.c: 35: while (*s) {
	tnz	a
	jreq	00133$
;	../_atol.c: 36: if (*s <= '9' && *s >= '0')
	cp	a, #0x39
	jrsgt	00102$
	cp	a, #0x30
	jrsge	00133$
;	../_atol.c: 37: break;
00102$:
;	../_atol.c: 38: if (*s == '-' || *s == '+') 
	tnz	(0x19, sp)
	jrne	00133$
	tnz	(0x18, sp)
	jrne	00133$
;	../_atol.c: 40: s++;
	incw	x
	jra	00107$
00133$:
	ldw	(0x1c, sp), x
;	../_atol.c: 43: sign = (*s == '-');
	ld	a, (0x19, sp)
	ld	(0x07, sp), a
;	../_atol.c: 44: if (*s == '-' || *s == '+') s++;
	tnz	(0x19, sp)
	jrne	00110$
	tnz	(0x18, sp)
	jreq	00131$
00110$:
	incw	x
	ldw	(0x1c, sp), x
;	../_atol.c: 46: while (*s && *s >= '0' && *s <= '9') {
00131$:
	ldw	y, (0x1c, sp)
	ldw	(0x05, sp), y
00115$:
	ldw	x, (0x05, sp)
	ld	a, (x)
	tnz	a
	jreq	00117$
	cp	a, #0x30
	jrslt	00117$
	cp	a, #0x39
	jrsgt	00117$
;	../_atol.c: 47: rv = (rv * 10) + (*s - '0');
	push	a
	ldw	x, (0x04, sp)
	pushw	x
	ldw	x, (0x04, sp)
	pushw	x
	push	#0x0a
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x17, sp), x
	ldw	(0x15, sp), y
	pop	a
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	subw	x, #0x0030
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x11, sp), a
	addw	x, (0x16, sp)
	push	a
	ld	a, (0x12, sp)
	adc	a, (0x16, sp)
	ld	(0x0e, sp), a
	pop	a
	adc	a, (0x14, sp)
	ldw	(0x03, sp), x
	ld	(0x01, sp), a
	ld	a, (0x0d, sp)
	ld	(0x02, sp), a
;	../_atol.c: 48: s++;
	ldw	x, (0x05, sp)
	incw	x
	ldw	(0x05, sp), x
	jra	00115$
00117$:
;	../_atol.c: 51: return (sign ? -rv : rv);
	tnz	(0x07, sp)
	jreq	00120$
	ldw	x, (0x03, sp)
	negw	x
	clr	a
	sbc	a, (0x02, sp)
	ld	yl, a
	clr	a
	sbc	a, (0x01, sp)
	ld	yh, a
	ldw	(0x0a, sp), x
	jra	00121$
00120$:
	ldw	y, (0x03, sp)
	ldw	(0x0a, sp), y
	ldw	y, (0x01, sp)
00121$:
	ldw	x, (0x0a, sp)
	addw	sp, #25
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
