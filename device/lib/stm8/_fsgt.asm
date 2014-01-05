;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:37 2013
;--------------------------------------------------------
	.module _fsgt
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsgt
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
;	../_fsgt.c: 108: char __fsgt (float a1, float a2)
;	-----------------------------------------
;	 function __fsgt
;	-----------------------------------------
___fsgt:
	sub	sp, #56
;	../_fsgt.c: 112: fl1.f = a1;
	ldw	x, sp
	addw	x, #5
	ldw	y, (0x3d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x3b, sp)
	ldw	(x), y
;	../_fsgt.c: 113: fl2.f = a2;
	ldw	x, sp
	incw	x
	ldw	y, (0x41, sp)
	ldw	(0x2, x), y
	ldw	y, (0x3f, sp)
	ldw	(x), y
;	../_fsgt.c: 115: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
	ldw	x, sp
	addw	x, #5
	ld	a, (0x3, x)
	ld	(0x38, sp), a
	ld	a, (0x2, x)
	ld	(0x37, sp), a
	ldw	x, (x)
	ldw	(0x35, sp), x
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	push	a
	ld	a, (0x2, x)
	ld	(0x34, sp), a
	ldw	x, (x)
	pop	a
	or	a, (0x38, sp)
	ld	(0x30, sp), a
	ld	a, (0x33, sp)
	or	a, (0x37, sp)
	ld	(0x2f, sp), a
	ld	a, xl
	or	a, (0x36, sp)
	ld	xl, a
	ld	a, xh
	or	a, (0x35, sp)
	and	a, #0x7f
	ld	(0x29, sp), a
	ld	a, (0x30, sp)
	ld	(0x2c, sp), a
	ld	a, (0x2f, sp)
	ld	(0x2b, sp), a
	ld	a, xl
	ld	(0x2a, sp), a
	ldw	x, (0x2b, sp)
	jrne	00102$
	ldw	x, (0x29, sp)
	jrne	00102$
;	../_fsgt.c: 116: return (0);
	clr	a
	jp	00110$
00102$:
;	../_fsgt.c: 118: if (fl1.l<0 && fl2.l<0) {
	ldw	x, sp
	addw	x, #5
	ldw	(0x27, sp), x
	ldw	x, (0x27, sp)
	ld	a, (0x3, x)
	ld	(0x26, sp), a
	ld	a, (0x2, x)
	ld	(0x25, sp), a
	ldw	x, (x)
	ldw	(0x23, sp), x
	ldw	x, (0x25, sp)
	cpw	x, #0x0000
	ld	a, (0x24, sp)
	sbc	a, #0x00
	ld	a, (0x23, sp)
	sbc	a, #0x00
	jrsge	00106$
	ldw	x, sp
	incw	x
	ldw	(0x21, sp), x
	ldw	x, (0x21, sp)
	ld	a, (0x3, x)
	ld	(0x20, sp), a
	ld	a, (0x2, x)
	ld	(0x1f, sp), a
	ldw	x, (x)
	ldw	(0x1d, sp), x
	ldw	x, (0x1f, sp)
	cpw	x, #0x0000
	ld	a, (0x1e, sp)
	sbc	a, #0x00
	ld	a, (0x1d, sp)
	sbc	a, #0x00
	jrsge	00106$
;	../_fsgt.c: 119: if (fl2.l > fl1.l)
	ldw	x, sp
	incw	x
	ldw	(0x1b, sp), x
	ldw	x, (0x1b, sp)
	ld	a, (0x3, x)
	ld	(0x1a, sp), a
	ld	a, (0x2, x)
	ld	(0x19, sp), a
	ldw	x, (x)
	ldw	(0x17, sp), x
	ldw	x, sp
	addw	x, #5
	ldw	(0x15, sp), x
	ldw	x, (0x15, sp)
	ld	a, (0x3, x)
	ld	(0x14, sp), a
	ld	a, (0x2, x)
	ld	(0x13, sp), a
	ldw	x, (x)
	ldw	(0x11, sp), x
	ldw	x, (0x13, sp)
	cpw	x, (0x19, sp)
	ld	a, (0x12, sp)
	sbc	a, (0x18, sp)
	ld	a, (0x11, sp)
	sbc	a, (0x17, sp)
	jrsge	00104$
;	../_fsgt.c: 120: return (1);
	ld	a, #0x01
	jra	00110$
00104$:
;	../_fsgt.c: 121: return (0);
	clr	a
	jra	00110$
00106$:
;	../_fsgt.c: 124: if (fl1.l > fl2.l)
	ldw	x, sp
	addw	x, #5
	ld	a, (0x3, x)
	ld	(0x10, sp), a
	ld	a, (0x2, x)
	ld	(0x0f, sp), a
	ldw	x, (x)
	ldw	(0x0d, sp), x
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	ld	(0x0c, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	push	a
	ld	a, (0x0d, sp)
	cp	a, (0x11, sp)
	pop	a
	sbc	a, (0x0f, sp)
	ld	a, xl
	sbc	a, (0x0e, sp)
	ld	a, xh
	sbc	a, (0x0d, sp)
	jrsge	00109$
;	../_fsgt.c: 125: return (1);
	ld	a, #0x01
	jra	00110$
00109$:
;	../_fsgt.c: 126: return (0);
	clr	a
00110$:
	addw	sp, #56
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
