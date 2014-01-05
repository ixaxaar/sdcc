;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:49 2013
;--------------------------------------------------------
	.module _mullonglong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullonglong
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
;	../_mullonglong.c: 35: long long _mullonglong(long long ll, long long lr)
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
__mullonglong:
	sub	sp, #36
;	../_mullonglong.c: 37: unsigned long long ret = 0ull;
	clrw	x
	ldw	(0x0c, sp), x
	ldw	(0x0a, sp), x
	ldw	(0x08, sp), x
	ldw	(0x06, sp), x
;	../_mullonglong.c: 38: unsigned char *l = (unsigned char *)(&ll);
	ldw	x, sp
	addw	x, #39
	ldw	(0x04, sp), x
;	../_mullonglong.c: 39: unsigned char *r = (unsigned char *)(&lr);
	ldw	x, sp
	addw	x, #47
	ldw	(0x02, sp), x
;	../_mullonglong.c: 42: for (i = 0; i < sizeof (long long); i++)
	clr	(0x01, sp)
;	../_mullonglong.c: 44: for(j = 0; (i + j) < sizeof (long long); j++)
00111$:
	clrw	x
	ld	a, (0x01, sp)
	ld	xl, a
	addw	x, (0x04, sp)
	ldw	(0x0e, sp), x
	clr	a
00104$:
	push	a
	ld	a, (0x02, sp)
	ld	(0x25, sp), a
	pop	a
	rlwa	x
	clr	a
	rrwa	x
	ld	xl, a
	clr	(0x21, sp)
	push	a
	ld	a, xl
	add	a, (0x25, sp)
	ld	xl, a
	ld	a, xh
	adc	a, (0x22, sp)
	ld	xh, a
	pop	a
	cpw	x, #0x0008
	jrslt	00128$
	jp	00107$
00128$:
;	../_mullonglong.c: 45: ret += ((unsigned short)(l[i] * r [j])) << ((i + j) * 8);
	ldw	y, (0x0e, sp)
	push	a
	ld	a, (y)
	ld	(0x11, sp), a
	pop	a
	clrw	y
	ld	yl, a
	addw	y, (0x02, sp)
	push	a
	ld	a, (y)
	ld	yl, a
	ld	a, (0x11, sp)
	mul	y, a
	pop	a
	sllw	x
	sllw	x
	sllw	x
	push	a
	ld	a, xl
	tnz	a
	jreq	00130$
00129$:
	sllw	y
	dec	a
	jrne	00129$
00130$:
	pop	a
	clr	(0x1e, sp)
	clr	(0x1d, sp)
	clrw	x
	clr	(0x1a, sp)
	clr	(0x19, sp)
	addw	y, (0x0c, sp)
	push	a
	ld	a, (0x1f, sp)
	adc	a, (0x0c, sp)
	ld	(0x17, sp), a
	ld	a, (0x1e, sp)
	adc	a, (0x0b, sp)
	ld	(0x16, sp), a
	ld	a, xl
	adc	a, (0x0a, sp)
	ld	xl, a
	ld	a, xh
	adc	a, (0x09, sp)
	ld	xh, a
	ld	a, (0x1b, sp)
	adc	a, (0x08, sp)
	ld	(0x13, sp), a
	ld	a, (0x1a, sp)
	adc	a, (0x07, sp)
	ld	(0x12, sp), a
	pop	a
	ldw	(0x0c, sp), y
	ldw	(0x08, sp), x
	ldw	y, (0x15, sp)
	ldw	(0x0a, sp), y
	ldw	y, (0x11, sp)
	ldw	(0x06, sp), y
;	../_mullonglong.c: 44: for(j = 0; (i + j) < sizeof (long long); j++)
	inc	a
	jp	00104$
00107$:
;	../_mullonglong.c: 42: for (i = 0; i < sizeof (long long); i++)
	inc	(0x01, sp)
	ld	a, (0x01, sp)
	cp	a, #0x08
	jrnc	00131$
	jp	00111$
00131$:
;	../_mullonglong.c: 48: return(ret);
	ldw	x, (0x27, sp)
	ldw	y, (0x0c, sp)
	ldw	(#6, x), y
	ldw	y, (0x0a, sp)
	ldw	(#4, x), y
	ldw	y, (0x08, sp)
	ldw	(#2, x), y
	ldw	y, (0x06, sp)
	ldw	(x), y
	addw	sp, #36
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
