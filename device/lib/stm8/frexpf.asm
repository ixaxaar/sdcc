;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:38 2013
;--------------------------------------------------------
	.module frexpf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
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
;	../frexpf.c: 34: float frexpf(const float x, int *pw2)
;	-----------------------------------------
;	 function frexpf
;	-----------------------------------------
_frexpf:
	sub	sp, #18
;	../frexpf.c: 39: fl.f=x;
	ldw	x, sp
	addw	x, #5
	ldw	y, (0x17, sp)
	ldw	(0x2, x), y
	ldw	y, (0x15, sp)
	ldw	(x), y
;	../frexpf.c: 41: i  = ( fl.l >> 23) & 0x000000ff;
	ldw	x, sp
	addw	x, #5
	ldw	(0x11, sp), x
	ldw	x, (0x11, sp)
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	ld	a, #0x17
	tnz	a
	jreq	00104$
00103$:
	sraw	x
	rrcw	y
	dec	a
	jrne	00103$
00104$:
	clr	a
	ld	yh, a
	clr	a
	ld	xl, a
	clr	a
;	../frexpf.c: 42: i -= 0x7e;
	subw	y, #0x007e
	push	a
	ld	a, xl
	sbc	a, #0x00
	ld	xl, a
	ld	a, (1, sp)
	sbc	a, #0x00
	ld	xh, a
	pop	a
	ldw	(0x01, sp), x
;	../frexpf.c: 43: *pw2 = i;
	ldw	x, (0x19, sp)
	ldw	(x), y
;	../frexpf.c: 44: fl.l &= 0x807fffff; /* strip all exponent bits */
	ldw	x, (0x11, sp)
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	ld	yh, a
	ld	a, xl
	and	a, #0x7f
	ld	(0x0e, sp), a
	ld	a, xh
	and	a, #0x80
	ld	(0x0d, sp), a
	ldw	x, (0x11, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0d, sp)
	ldw	(x), y
;	../frexpf.c: 45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	ldw	x, (0x11, sp)
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	ld	a, xl
	ld	(0x0a, sp), a
	ld	a, xh
	or	a, #0x3f
	ld	(0x09, sp), a
	ldw	x, (0x11, sp)
	ldw	(0x2, x), y
	ldw	y, (0x09, sp)
	ldw	(x), y
;	../frexpf.c: 46: return(fl.f);
	ldw	x, sp
	addw	x, #5
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	exgw	x, y
	addw	sp, #18
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
