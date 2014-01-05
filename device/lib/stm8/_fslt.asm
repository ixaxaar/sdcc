;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:37 2013
;--------------------------------------------------------
	.module _fslt
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fslt
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
;	../_fslt.c: 108: char __fslt (float a1, float a2)
;	-----------------------------------------
;	 function __fslt
;	-----------------------------------------
___fslt:
	sub	sp, #56
;	../_fslt.c: 112: fl1.f = a1;
	ldw	x, sp
	addw	x, #5
	ldw	y, (0x3d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x3b, sp)
	ldw	(x), y
;	../_fslt.c: 113: fl2.f = a2;
	ldw	x, sp
	incw	x
	ldw	y, (0x41, sp)
	ldw	(0x2, x), y
	ldw	y, (0x3f, sp)
	ldw	(x), y
;	../_fslt.c: 115: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
	ldw	x, sp
	addw	x, #5
	ld	a, (0x3, x)
	ld	(0x0c, sp), a
	ld	a, (0x2, x)
	ld	(0x0b, sp), a
	ldw	x, (x)
	ldw	(0x09, sp), x
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	push	a
	ld	a, (0x2, x)
	ld	(0x22, sp), a
	ldw	x, (x)
	pop	a
	or	a, (0x0c, sp)
	ld	(0x26, sp), a
	ld	a, (0x21, sp)
	or	a, (0x0b, sp)
	ld	(0x25, sp), a
	ld	a, xl
	or	a, (0x0a, sp)
	ld	xl, a
	ld	a, xh
	or	a, (0x09, sp)
	and	a, #0x7f
	ld	(0x2d, sp), a
	ld	a, (0x26, sp)
	ld	(0x30, sp), a
	ld	a, (0x25, sp)
	ld	(0x2f, sp), a
	ld	a, xl
	ld	(0x2e, sp), a
	ldw	x, (0x2f, sp)
	jrne	00102$
	ldw	x, (0x2d, sp)
	jrne	00102$
;	../_fslt.c: 116: return (0);
	clr	a
	jp	00110$
00102$:
;	../_fslt.c: 118: if (fl1.l<0 && fl2.l<0) {
	ldw	x, sp
	addw	x, #5
	ldw	(0x27, sp), x
	ldw	x, (0x27, sp)
	ld	a, (0x3, x)
	ld	(0x18, sp), a
	ld	a, (0x2, x)
	ld	(0x17, sp), a
	ldw	x, (x)
	ldw	(0x15, sp), x
	ldw	x, (0x17, sp)
	cpw	x, #0x0000
	ld	a, (0x16, sp)
	sbc	a, #0x00
	ld	a, (0x15, sp)
	sbc	a, #0x00
	jrsge	00106$
	ldw	x, sp
	incw	x
	ldw	(0x37, sp), x
	ldw	x, (0x37, sp)
	ld	a, (0x3, x)
	ld	(0x14, sp), a
	ld	a, (0x2, x)
	ld	(0x13, sp), a
	ldw	x, (x)
	ldw	(0x11, sp), x
	ldw	x, (0x13, sp)
	cpw	x, #0x0000
	ld	a, (0x12, sp)
	sbc	a, #0x00
	ld	a, (0x11, sp)
	sbc	a, #0x00
	jrsge	00106$
;	../_fslt.c: 119: if (fl2.l < fl1.l)
	ldw	x, sp
	incw	x
	ldw	(0x1d, sp), x
	ldw	x, (0x1d, sp)
	ld	a, (0x3, x)
	ld	(0x2c, sp), a
	ld	a, (0x2, x)
	ld	(0x2b, sp), a
	ldw	x, (x)
	ldw	(0x29, sp), x
	ldw	x, sp
	addw	x, #5
	ldw	(0x31, sp), x
	ldw	x, (0x31, sp)
	ld	a, (0x3, x)
	ld	(0x1c, sp), a
	ld	a, (0x2, x)
	ld	(0x1b, sp), a
	ldw	x, (x)
	ldw	(0x19, sp), x
	ldw	x, (0x2b, sp)
	cpw	x, (0x1b, sp)
	ld	a, (0x2a, sp)
	sbc	a, (0x1a, sp)
	ld	a, (0x29, sp)
	sbc	a, (0x19, sp)
	jrsge	00104$
;	../_fslt.c: 120: return (1);
	ld	a, #0x01
	jra	00110$
00104$:
;	../_fslt.c: 121: return (0);
	clr	a
	jra	00110$
00106$:
;	../_fslt.c: 124: if (fl1.l < fl2.l)
	ldw	x, sp
	addw	x, #5
	ld	a, (0x3, x)
	ld	(0x10, sp), a
	ld	a, (0x2, x)
	ld	(0x0f, sp), a
	ldw	x, (x)
	ldw	y, x
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	ld	(0x36, sp), a
	ld	a, (0x2, x)
	ld	(0x35, sp), a
	ldw	x, (x)
	ldw	(0x33, sp), x
	ldw	x, (0x0f, sp)
	cpw	x, (0x35, sp)
	ld	a, yl
	sbc	a, (0x34, sp)
	ld	a, yh
	sbc	a, (0x33, sp)
	jrsge	00109$
;	../_fslt.c: 125: return (1);
	ld	a, #0x01
	jra	00110$
00109$:
;	../_fslt.c: 126: return (0);
	clr	a
00110$:
	addw	sp, #56
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
