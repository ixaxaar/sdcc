;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:48 2013
;--------------------------------------------------------
	.module _modslong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modslong
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
;	../_modslong.c: 259: _modslong (long a, long b)
;	-----------------------------------------
;	 function _modslong
;	-----------------------------------------
__modslong:
	sub	sp, #29
;	../_modslong.c: 263: r = (unsigned long)(a < 0 ? -a : a) % (unsigned long)(b < 0 ? -b : b);
	ldw	x, (0x22, sp)
	cpw	x, #0x0000
	ld	a, (0x21, sp)
	sbc	a, #0x00
	ld	a, (0x20, sp)
	sbc	a, #0x00
	jrslt	00122$
	clr	(0x0d, sp)
	jra	00123$
00122$:
	ld	a, #0x01
	ld	(0x0d, sp), a
00123$:
	tnz	(0x0d, sp)
	jreq	00106$
	ldw	x, (0x22, sp)
	negw	x
	clr	a
	sbc	a, (0x21, sp)
	ld	(0x1b, sp), a
	clr	a
	sbc	a, (0x20, sp)
	ldw	(0x18, sp), x
	ld	(0x16, sp), a
	ld	a, (0x1b, sp)
	ld	(0x17, sp), a
	jra	00107$
00106$:
	ldw	y, (0x22, sp)
	ldw	(0x18, sp), y
	ldw	y, (0x20, sp)
	ldw	(0x16, sp), y
00107$:
	ldw	y, (0x18, sp)
	ldw	(0x14, sp), y
	ldw	y, (0x16, sp)
	ldw	(0x12, sp), y
	ldw	x, (0x26, sp)
	cpw	x, #0x0000
	ld	a, (0x25, sp)
	sbc	a, #0x00
	ld	a, (0x24, sp)
	sbc	a, #0x00
	jrsge	00108$
	ld	a, (0x27, sp)
	neg	a
	ld	(0x11, sp), a
	clr	a
	sbc	a, (0x26, sp)
	ld	(0x10, sp), a
	clr	a
	sbc	a, (0x25, sp)
	ld	(0x0f, sp), a
	clr	a
	sbc	a, (0x24, sp)
	ld	(0x0e, sp), a
	ldw	y, (0x10, sp)
	ldw	(0x0b, sp), y
	ldw	y, (0x0e, sp)
	ldw	(0x09, sp), y
	jra	00109$
00108$:
	ldw	y, (0x26, sp)
	ldw	(0x0b, sp), y
	ldw	y, (0x24, sp)
	ldw	(0x09, sp), y
00109$:
	ldw	y, (0x0b, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x09, sp)
	ldw	x, (0x07, sp)
	pushw	x
	pushw	y
	ldw	x, (0x18, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
	call	__modulong
	addw	sp, #8
	ldw	(0x01, sp), y
;	../_modslong.c: 265: if (a < 0)
	tnz	(0x0d, sp)
	jreq	00102$
;	../_modslong.c: 266: return -r;
	negw	x
	clr	a
	sbc	a, (0x02, sp)
	ld	yl, a
	clr	a
	sbc	a, (0x01, sp)
	ld	yh, a
	jra	00104$
00102$:
;	../_modslong.c: 268: return r;
	ldw	y, (0x01, sp)
00104$:
	addw	sp, #29
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
