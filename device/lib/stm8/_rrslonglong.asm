;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:49 2013
;--------------------------------------------------------
	.module _rrslonglong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rrslonglong
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
;	../_rrslonglong.c: 35: long long _rrslonglong(long long l, signed char s)
;	-----------------------------------------
;	 function _rrslonglong
;	-----------------------------------------
__rrslonglong:
	sub	sp, #49
;	../_rrslonglong.c: 37: int32_t *top = (uint32_t *)((char *)(&l) + 4);
	ldw	y, sp
	addw	y, #52
	ldw	x, y
	addw	x, #0x0004
	ldw	(0x07, sp), x
;	../_rrslonglong.c: 38: uint16_t *middle = (uint16_t *)((char *)(&l) + 3);
	ldw	x, y
	addw	x, #0x0003
	ldw	(0x05, sp), x
;	../_rrslonglong.c: 39: uint32_t *bottom = (uint32_t *)(&l);
	ldw	x, y
	ldw	(0x03, sp), x
;	../_rrslonglong.c: 40: uint16_t *b = (uint16_t *)(&l);
	ldw	(0x01, sp), y
;	../_rrslonglong.c: 50: (*bottom) >>= s;
	ld	a, (0x3e, sp)
	ld	(0x29, sp), a
00103$:
;	../_rrslonglong.c: 42: for(;s >= 16; s-= 16)
	ld	a, (0x29, sp)
	cp	a, #0x10
	jrslt	00101$
;	../_rrslonglong.c: 44: b[0] = b[1];
	ldw	x, (0x01, sp)
	incw	x
	incw	x
	ldw	(0x23, sp), x
	ldw	x, (0x23, sp)
	ldw	x, (x)
	ldw	y, (0x01, sp)
	ldw	(y), x
;	../_rrslonglong.c: 45: b[1] = b[2];
	ldw	x, (0x01, sp)
	addw	x, #0x0004
	ldw	(0x27, sp), x
	ldw	x, (0x27, sp)
	ldw	x, (x)
	ldw	y, (0x23, sp)
	ldw	(y), x
;	../_rrslonglong.c: 46: b[2] = b[3];
	ldw	x, (0x01, sp)
	addw	x, #0x0006
	ldw	(0x25, sp), x
	ldw	x, (0x25, sp)
	ldw	x, (x)
	ldw	y, (0x27, sp)
	ldw	(y), x
;	../_rrslonglong.c: 47: b[3] = (b[3] & 0x8000) ? 0xffff : 0x000000;
	ldw	x, (0x25, sp)
	ldw	x, (x)
	clr	a
	ld	xl, a
	ld	a, xh
	and	a, #0x80
	ld	xh, a
	tnzw	x
	jreq	00107$
	ldw	x, #0xffff
	ldw	(0x21, sp), x
	jra	00108$
00107$:
	clrw	x
	ldw	(0x21, sp), x
00108$:
	ldw	x, (0x25, sp)
	ldw	y, (0x21, sp)
	ldw	(x), y
;	../_rrslonglong.c: 42: for(;s >= 16; s-= 16)
	ld	a, (0x29, sp)
	sub	a, #0x10
	ld	(0x29, sp), a
	jra	00103$
00101$:
;	../_rrslonglong.c: 50: (*bottom) >>= s;
	ldw	x, (0x03, sp)
	ld	a, (0x3, x)
	ld	(0x20, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	ld	(0x1b, sp), a
	ldw	(0x19, sp), x
	ld	a, (0x20, sp)
	ld	(0x1c, sp), a
	ld	a, (0x29, sp)
	tnz	a
	jreq	00125$
00124$:
	srl	(0x19, sp)
	rrc	(0x1a, sp)
	rrc	(0x1b, sp)
	rrc	(0x1c, sp)
	dec	a
	jrne	00124$
00125$:
	ldw	x, (0x03, sp)
	ldw	y, (0x1b, sp)
	ldw	(0x2, x), y
	ldw	y, (0x19, sp)
	ldw	(x), y
;	../_rrslonglong.c: 51: (*bottom) |= ((uint32_t)((*middle) >> s) << 16);
	ldw	x, (0x05, sp)
	ldw	x, (x)
	ld	a, (0x29, sp)
	tnz	a
	jreq	00127$
00126$:
	srlw	x
	dec	a
	jrne	00126$
00127$:
	clr	a
	clr	(0x15, sp)
	push	a
	ld	a, (0x16, sp)
	ld	(0x12, sp), a
	ld	a, #0x10
	tnz	a
	jreq	00129$
00128$:
	sllw	x
	rlc	(1, sp)
	rlc	(0x12, sp)
	dec	a
	jrne	00128$
00129$:
	pop	a
	or	a, (0x1a, sp)
	ld	(0x0e, sp), a
	ld	a, xl
	or	a, (0x1c, sp)
	ld	yl, a
	ld	a, xh
	or	a, (0x1b, sp)
	ld	yh, a
	ld	a, (0x11, sp)
	or	a, (0x19, sp)
	ld	(0x0d, sp), a
	ldw	x, (0x03, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0d, sp)
	ldw	(x), y
;	../_rrslonglong.c: 52: (*top) |= (((*middle) & 0xffff0000) >> s);
	ldw	x, (0x07, sp)
	ld	a, (0x3, x)
	ld	(0x0c, sp), a
	ld	a, (0x2, x)
	ld	(0x0b, sp), a
	ldw	x, (x)
	ldw	(0x09, sp), x
	ldw	x, (0x05, sp)
	ldw	x, (x)
	ldw	y, x
	clrw	x
	clr	a
	push	a
	clr	a
	ld	yh, a
	pop	a
	push	a
	ld	a, (0x2a, sp)
	tnz	a
	jreq	00131$
00130$:
	srlw	x
	rlwa	y
	rrc	a
	rrwa	y
	rrc	(1, sp)
	dec	a
	jrne	00130$
00131$:
	ld	a, (0x0d, sp)
	ld	(0x32, sp), a
	ld	a, (0x0c, sp)
	ld	(0x31, sp), a
	ld	a, (0x0b, sp)
	ld	(0x30, sp), a
	ld	a, (0x0a, sp)
	ld	(0x2f, sp), a
	pop	a
	or	a, (0x31, sp)
	ld	yl, a
	ld	a, yh
	or	a, (0x30, sp)
	ld	yh, a
	ld	a, xl
	or	a, (0x2f, sp)
	ld	(0x2b, sp), a
	ld	a, xh
	or	a, (0x2e, sp)
	ld	(0x2a, sp), a
	ldw	x, (0x07, sp)
	ldw	(0x2, x), y
	ldw	y, (0x2a, sp)
	ldw	(x), y
;	../_rrslonglong.c: 54: return(l);
	ldw	x, (0x34, sp)
	ldw	y, (0x3c, sp)
	ldw	(#6, x), y
	ldw	y, (0x3a, sp)
	ldw	(#4, x), y
	ldw	y, (0x38, sp)
	ldw	(#2, x), y
	ldw	y, (0x36, sp)
	ldw	(x), y
	addw	sp, #49
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
