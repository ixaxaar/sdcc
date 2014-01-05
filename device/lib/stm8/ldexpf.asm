;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:38 2013
;--------------------------------------------------------
	.module ldexpf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
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
;	../ldexpf.c: 34: float ldexpf(const float x, const int pw2)
;	-----------------------------------------
;	 function ldexpf
;	-----------------------------------------
_ldexpf:
	sub	sp, #58
;	../ldexpf.c: 39: fl.f = x;
	ldw	x, sp
	addw	x, #5
	ldw	y, (0x3f, sp)
	ldw	(0x2, x), y
	ldw	y, (0x3d, sp)
	ldw	(x), y
;	../ldexpf.c: 41: e=(fl.l >> 23) & 0x000000ff;
	ldw	x, sp
	addw	x, #5
	ldw	(0x39, sp), x
	ldw	x, (0x39, sp)
	ld	a, (0x3, x)
	ld	(0x38, sp), a
	ld	a, (0x2, x)
	ld	(0x37, sp), a
	ldw	x, (x)
	ldw	(0x35, sp), x
	ldw	y, (0x37, sp)
	ldw	(0x33, sp), y
	ldw	y, (0x35, sp)
	ldw	(0x31, sp), y
	ld	a, #0x17
	tnz	a
	jreq	00104$
00103$:
	sra	(0x31, sp)
	rrc	(0x32, sp)
	rrc	(0x33, sp)
	rrc	(0x34, sp)
	dec	a
	jrne	00103$
00104$:
	ld	a, (0x34, sp)
	ld	(0x04, sp), a
	clr	(0x03, sp)
	clr	(0x02, sp)
	clr	(0x01, sp)
	ldw	y, (0x03, sp)
	ldw	(0x2f, sp), y
	ldw	y, (0x01, sp)
	ldw	(0x2d, sp), y
;	../ldexpf.c: 42: e+=pw2;
	ldw	y, (0x41, sp)
	ldw	(0x2b, sp), y
	ld	a, (0x2b, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x2a, sp), a
	ld	(0x29, sp), a
	ldw	x, (0x2f, sp)
	addw	x, (0x2b, sp)
	ldw	(0x27, sp), x
	ld	a, (0x2e, sp)
	adc	a, (0x2a, sp)
	ld	(0x26, sp), a
	ld	a, (0x2d, sp)
	adc	a, (0x29, sp)
	ld	xh, a
	ld	a, (0x26, sp)
	ld	(0x02, sp), a
	ldw	y, (0x27, sp)
;	../ldexpf.c: 43: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	clr	a
	ld	yh, a
	clr	(0x22, sp)
	clr	a
	ld	(0x1d, sp), a
	ld	a, (0x22, sp)
	ld	(0x1e, sp), a
	ld	a, #0x17
	tnz	a
	jreq	00106$
00105$:
	sllw	y
	rlc	(0x1e, sp)
	rlc	(0x1d, sp)
	dec	a
	jrne	00105$
00106$:
	ldw	x, (0x39, sp)
	ld	a, (0x3, x)
	ld	(0x1c, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	push	a
	ld	a, (0x1d, sp)
	ld	(0x19, sp), a
	pop	a
	ld	(0x13, sp), a
	ld	a, (0x18, sp)
	ld	(0x14, sp), a
	ld	a, xl
	and	a, #0x7f
	ld	(0x12, sp), a
	ld	a, xh
	and	a, #0x80
	ldw	x, (0x1d, sp)
	ldw	(0x0d, sp), x
	ldw	x, y
	or	a, (0x0d, sp)
	ld	(0x09, sp), a
	ld	a, xl
	or	a, (0x14, sp)
	ld	yl, a
	ld	a, xh
	or	a, (0x13, sp)
	ld	yh, a
	ld	a, (0x0e, sp)
	or	a, (0x12, sp)
	ld	(0x0a, sp), a
	ldw	x, (0x39, sp)
	ldw	(0x2, x), y
	ldw	y, (0x09, sp)
	ldw	(x), y
;	../ldexpf.c: 45: return(fl.f);
	ldw	x, sp
	addw	x, #5
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	exgw	x, y
	addw	sp, #58
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
