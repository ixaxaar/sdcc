;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:47 2013
;--------------------------------------------------------
	.module _divslong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslong
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
;	../_divslong.c: 259: _divslong (long x, long y)
;	-----------------------------------------
;	 function _divslong
;	-----------------------------------------
__divslong:
	sub	sp, #30
;	../_divslong.c: 263: r = (unsigned long)(x < 0 ? -x : x) / (unsigned long)(y < 0 ? -y : y);
	ldw	x, (0x23, sp)
	cpw	x, #0x0000
	ld	a, (0x22, sp)
	sbc	a, #0x00
	ld	a, (0x21, sp)
	sbc	a, #0x00
	jrslt	00122$
	clr	(0x11, sp)
	jra	00123$
00122$:
	ld	a, #0x01
	ld	(0x11, sp), a
00123$:
	tnz	(0x11, sp)
	jreq	00106$
	ldw	x, (0x23, sp)
	negw	x
	clr	a
	sbc	a, (0x22, sp)
	ld	(0x0e, sp), a
	clr	a
	sbc	a, (0x21, sp)
	ldw	(0x07, sp), x
	ld	(0x05, sp), a
	ld	a, (0x0e, sp)
	ld	(0x06, sp), a
	jra	00107$
00106$:
	ldw	y, (0x23, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x21, sp)
	ldw	(0x05, sp), y
00107$:
	ldw	y, (0x07, sp)
	ldw	(0x14, sp), y
	ldw	y, (0x05, sp)
	ldw	(0x12, sp), y
	ldw	x, (0x27, sp)
	cpw	x, #0x0000
	ld	a, (0x26, sp)
	sbc	a, #0x00
	ld	a, (0x25, sp)
	sbc	a, #0x00
	jrslt	00125$
	clr	(0x16, sp)
	jra	00126$
00125$:
	ld	a, #0x01
	ld	(0x16, sp), a
00126$:
	tnz	(0x16, sp)
	jreq	00108$
	ld	a, (0x28, sp)
	neg	a
	ld	(0x1e, sp), a
	clr	a
	sbc	a, (0x27, sp)
	ld	(0x1d, sp), a
	clr	a
	sbc	a, (0x26, sp)
	ld	(0x1c, sp), a
	clr	a
	sbc	a, (0x25, sp)
	ld	(0x1b, sp), a
	ldw	y, (0x1d, sp)
	ldw	(0x19, sp), y
	ldw	y, (0x1b, sp)
	ldw	(0x17, sp), y
	jra	00109$
00108$:
	ldw	y, (0x27, sp)
	ldw	(0x19, sp), y
	ldw	y, (0x25, sp)
	ldw	(0x17, sp), y
00109$:
	ldw	y, (0x19, sp)
	ldw	(0x0b, sp), y
	ldw	y, (0x17, sp)
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
	ldw	x, (0x18, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x01, sp), y
;	../_divslong.c: 264: if ((x < 0) ^ (y < 0))
	ld	a, (0x11, sp)
	xor	a, (0x16, sp)
	tnz	a
	jreq	00102$
;	../_divslong.c: 265: return -r;
	negw	x
	clr	a
	sbc	a, (0x02, sp)
	ld	yl, a
	clr	a
	sbc	a, (0x01, sp)
	ld	yh, a
	jra	00104$
00102$:
;	../_divslong.c: 267: return r;
	ldw	y, (0x01, sp)
00104$:
	addw	sp, #30
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
