;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:51 2013
;--------------------------------------------------------
	.module _strncmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
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
;	../_strncmp.c: 31: int strncmp (
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
_strncmp:
	sub	sp, #7
;	../_strncmp.c: 37: if (!count)
	ldw	x, (0x0e, sp)
	jrne	00114$
;	../_strncmp.c: 38: return(0);
	clrw	x
	jra	00108$
;	../_strncmp.c: 40: while (--count && *first && *first == *last) {
00114$:
	ldw	y, (0x0a, sp)
	ldw	(0x06, sp), y
	ldw	y, (0x0c, sp)
	ldw	(0x01, sp), y
	ldw	y, (0x0e, sp)
00105$:
	decw	y
	ldw	x, (0x06, sp)
	ld	a, (x)
	ldw	x, (0x01, sp)
	push	a
	ld	a, (x)
	ld	(0x06, sp), a
	pop	a
	tnzw	y
	jreq	00107$
	tnz	a
	jreq	00107$
	cp	a, (0x05, sp)
	jrne	00107$
;	../_strncmp.c: 41: first++;
	ldw	x, (0x06, sp)
	incw	x
	ldw	(0x06, sp), x
;	../_strncmp.c: 42: last++;
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x01, sp), x
	jra	00105$
00107$:
;	../_strncmp.c: 45: return( *first - *last );
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	ld	a, (0x05, sp)
	ld	(0x04, sp), a
	ld	a, (0x04, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x03, sp), a
	subw	x, (0x03, sp)
00108$:
	addw	sp, #7
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
