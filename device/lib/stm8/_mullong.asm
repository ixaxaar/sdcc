;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:31 2013
;--------------------------------------------------------
	.module _mullong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong
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
;	../_mullong.c: 734: _mullong (long a, long b)
;	-----------------------------------------
;	 function _mullong
;	-----------------------------------------
__mullong:
	sub	sp, #64
;	../_mullong.c: 738: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
	ldw	y, sp
	incw	y
	ldw	x, sp
	addw	x, #67
	ldw	(0x07, sp), x
	ldw	x, (0x07, sp)
	ld	a, (0x3, x)
	ldw	x, sp
	addw	x, #71
	ldw	(0x09, sp), x
	ldw	x, (0x09, sp)
	ldw	(0x13, sp), x
	ldw	x, (0x13, sp)
	ldw	(0x15, sp), x
	ldw	x, (0x15, sp)
	push	a
	ld	a, (0x1, x)
	ld	xl, a
	pop	a
	mul	x, a
	ldw	(y), x
;	../_mullong.c: 739: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
	addw	y, #0x0002
	ldw	x, (0x07, sp)
	ld	a, (0x3, x)
	ldw	x, (0x09, sp)
	ldw	(0x3f, sp), x
	ldw	x, (0x3f, sp)
	ldw	(0x05, sp), x
	ldw	x, (0x05, sp)
	ldw	(0x0f, sp), x
	ldw	x, (0x0f, sp)
	push	a
	ld	a, (0x3, x)
	ld	xl, a
	pop	a
	mul	x, a
	ldw	(y), x
;	../_mullong.c: 740: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	ldw	x, sp
	incw	x
	ldw	(0x11, sp), x
	ldw	x, (0x11, sp)
	ld	a, (x)
	ld	(0x17, sp), a
	ldw	x, (0x07, sp)
	ld	a, (x)
	ld	xl, a
	ldw	y, (0x09, sp)
	ld	a, (0x3, y)
	mul	x, a
	ld	a, xl
	add	a, (0x17, sp)
	ldw	x, (0x11, sp)
	ld	(x), a
;	../_mullong.c: 741: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	ldw	x, (0x11, sp)
	ld	a, (x)
	ld	(0x18, sp), a
	ldw	x, (0x07, sp)
	ld	a, (0x1, x)
	ld	xl, a
	ldw	y, (0x09, sp)
	ld	a, (0x2, y)
	mul	x, a
	ld	a, xl
	add	a, (0x18, sp)
	ldw	x, (0x11, sp)
	ld	(x), a
;	../_mullong.c: 742: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
	ldw	y, sp
	incw	y
	ldw	x, y
	ldw	x, (x)
	ldw	(0x19, sp), x
	ldw	x, (0x07, sp)
	ld	a, (0x1, x)
	ldw	x, (0x09, sp)
	ldw	(0x1b, sp), x
	ldw	x, (0x1b, sp)
	ldw	(0x1d, sp), x
	ldw	x, (0x1d, sp)
	ldw	(0x1f, sp), x
	ldw	x, (0x1f, sp)
	push	a
	ld	a, (0x3, x)
	ld	xl, a
	pop	a
	mul	x, a
	addw	x, (0x19, sp)
	ldw	(y), x
;	../_mullong.c: 744: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
	ldw	x, y
	ldw	x, (x)
	ldw	(0x21, sp), x
	ldw	x, (0x07, sp)
	ld	a, (0x2, x)
	ldw	x, (0x09, sp)
	ldw	(0x23, sp), x
	ldw	x, (0x23, sp)
	ldw	(0x25, sp), x
	ldw	x, (0x25, sp)
	ldw	(0x27, sp), x
	ldw	x, (0x27, sp)
	push	a
	ld	a, (0x2, x)
	ld	xl, a
	pop	a
	mul	x, a
	addw	x, (0x21, sp)
	ldw	(y), x
;	../_mullong.c: 746: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
	ldw	y, (0x07, sp)
	ldw	x, (0x07, sp)
	ld	a, (0x2, x)
	ldw	x, (0x09, sp)
	ldw	(0x29, sp), x
	ldw	x, (0x29, sp)
	ldw	(0x2f, sp), x
	ldw	x, (0x2f, sp)
	ldw	(0x31, sp), x
	ldw	x, (0x31, sp)
	push	a
	ld	a, (0x1, x)
	ld	xl, a
	pop	a
	mul	x, a
	ld	a, xl
	ld	(y), a
;	../_mullong.c: 747: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
	ldw	x, (0x07, sp)
	incw	x
	ldw	(0x33, sp), x
	ldw	x, (0x07, sp)
	ld	a, (0x2, x)
	ld	yl, a
	ldw	x, (0x09, sp)
	ld	a, (0x3, x)
	mul	y, a
	ldw	x, (0x33, sp)
	ldw	(x), y
;	../_mullong.c: 749: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
	ldw	y, (0x09, sp)
	ldw	x, (0x07, sp)
	ld	a, (0x3, x)
	ldw	x, (0x09, sp)
	ldw	(0x35, sp), x
	ldw	x, (0x35, sp)
	ldw	(0x37, sp), x
	ldw	x, (0x37, sp)
	push	a
	ld	a, (x)
	ld	xl, a
	pop	a
	mul	x, a
	ld	a, xl
	ld	(y), a
;	../_mullong.c: 750: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
	ldw	x, (0x09, sp)
	incw	x
	ldw	(0x3d, sp), x
	ldw	x, (0x07, sp)
	ld	a, (0x3, x)
	ld	yl, a
	ldw	x, (0x09, sp)
	ld	a, (0x2, x)
	mul	y, a
	ldw	x, (0x3d, sp)
	ldw	(x), y
;	../_mullong.c: 752: bcast(b)->bi.b0 = 0;                                // B
	ldw	x, (0x09, sp)
	addw	x, #0x0003
	clr	(x)
;	../_mullong.c: 753: bcast(a)->bi.b0 = 0;                                // C
	ldw	x, (0x07, sp)
	addw	x, #0x0003
	clr	(x)
;	../_mullong.c: 754: t.l += a;
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	ld	(0x2e, sp), a
	ld	a, (0x2, x)
	ld	(0x2d, sp), a
	ld	a, (0x1, x)
	ld	(0x2c, sp), a
	ld	a, (x)
	ldw	y, (0x43, sp)
	ldw	(0x39, sp), y
	ldw	y, (0x45, sp)
	addw	y, (0x2d, sp)
	ldw	(0x0d, sp), y
	push	a
	ld	a, (0x2d, sp)
	adc	a, (0x3b, sp)
	ld	(0x0d, sp), a
	pop	a
	adc	a, (0x39, sp)
	ld	(0x0b, sp), a
	ldw	y, (0x0d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0b, sp)
	ldw	(x), y
;	../_mullong.c: 756: return t.l + b;
	ldw	x, (x)
	ldw	y, (0x49, sp)
	ldw	x, (0x47, sp)
	addw	y, (0x0d, sp)
	ld	a, xl
	adc	a, (0x0c, sp)
	ld	xl, a
	ld	a, xh
	adc	a, (0x0b, sp)
	ld	xh, a
	exgw	x, y
	addw	sp, #64
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
