;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:50 2013
;--------------------------------------------------------
	.module _atoi
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
;	../_atoi.c: 29: int atoi(const char * s)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
	sub	sp, #7
;	../_atoi.c: 31: register int rv=0; 
	clrw	x
	ldw	(0x01, sp), x
;	../_atoi.c: 35: while (*s) {
	ldw	x, (0x0a, sp)
00107$:
	ld	a, (x)
;	../_atoi.c: 38: if (*s == '-' || *s == '+') 
	cp	a, #0x2d
	jrne	00169$
	push	a
	ld	a, #0x01
	ld	(0x07, sp), a
	pop	a
	jra	00170$
00169$:
	clr	(0x06, sp)
00170$:
	cp	a, #0x2b
	jrne	00172$
	push	a
	ld	a, #0x01
	ld	(0x08, sp), a
	pop	a
	jra	00173$
00172$:
	clr	(0x07, sp)
00173$:
;	../_atoi.c: 35: while (*s) {
	tnz	a
	jreq	00133$
;	../_atoi.c: 36: if (*s <= '9' && *s >= '0')
	cp	a, #0x39
	jrsgt	00102$
	cp	a, #0x30
	jrsge	00133$
;	../_atoi.c: 37: break;
00102$:
;	../_atoi.c: 38: if (*s == '-' || *s == '+') 
	tnz	(0x06, sp)
	jrne	00133$
	tnz	(0x07, sp)
	jrne	00133$
;	../_atoi.c: 40: s++;
	incw	x
	jra	00107$
00133$:
	ldw	(0x0a, sp), x
;	../_atoi.c: 43: sign = (*s == '-');
	ld	a, (0x06, sp)
	ld	(0x03, sp), a
;	../_atoi.c: 44: if (*s == '-' || *s == '+') s++;
	tnz	(0x06, sp)
	jrne	00110$
	tnz	(0x07, sp)
	jreq	00131$
00110$:
	incw	x
	ldw	(0x0a, sp), x
;	../_atoi.c: 46: while (*s && *s >= '0' && *s <= '9') {
00131$:
	ldw	y, (0x0a, sp)
00115$:
	ld	a, (y)
	tnz	a
	jreq	00117$
	cp	a, #0x30
	jrslt	00117$
	cp	a, #0x39
	jrsgt	00117$
;	../_atoi.c: 47: rv = (rv * 10) + (*s - '0');
	push	a
	pushw	y
	ldw	x, (0x04, sp)
	pushw	x
	push	#0x0a
	push	#0x00
	call	__mulint
	addw	sp, #4
	ldw	(0x07, sp), x
	popw	y
	pop	a
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	subw	x, #0x0030
	addw	x, (0x04, sp)
	ldw	(0x01, sp), x
;	../_atoi.c: 48: s++;
	incw	y
	jra	00115$
00117$:
;	../_atoi.c: 51: return (sign ? -rv : rv);
	tnz	(0x03, sp)
	jreq	00120$
	ldw	x, (0x01, sp)
	negw	x
	jra	00121$
00120$:
	ldw	x, (0x01, sp)
00121$:
	addw	sp, #7
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
