;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:47 2013
;--------------------------------------------------------
	.module _modsint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modsint
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
;	../_modsint.c: 203: int _modsint (int a, int b)
;	-----------------------------------------
;	 function _modsint
;	-----------------------------------------
__modsint:
	sub	sp, #5
;	../_modsint.c: 207: r = (unsigned)(a < 0 ? -a : a) % (unsigned)(b < 0 ? -b : b);
	ldw	x, (0x08, sp)
	cpw	x, #0x0000
	jrslt	00122$
	clr	(0x05, sp)
	jra	00123$
00122$:
	ld	a, #0x01
	ld	(0x05, sp), a
00123$:
	tnz	(0x05, sp)
	jreq	00106$
	ldw	x, (0x08, sp)
	negw	x
	jra	00107$
00106$:
	ldw	x, (0x08, sp)
00107$:
	ldw	(0x03, sp), x
	ldw	x, (0x0a, sp)
	cpw	x, #0x0000
	jrsge	00108$
	ldw	x, (0x0a, sp)
	negw	x
	ldw	(0x01, sp), x
	jra	00109$
00108$:
	ldw	y, (0x0a, sp)
	ldw	(0x01, sp), y
00109$:
	ldw	y, (0x01, sp)
	ldw	x, (0x03, sp)
	divw	x, y
	ldw	x, y
;	../_modsint.c: 209: if (a < 0)
	tnz	(0x05, sp)
	jreq	00102$
;	../_modsint.c: 210: return -r;
	negw	x
;	../_modsint.c: 212: return r;
00102$:
	addw	sp, #5
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
