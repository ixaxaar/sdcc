;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:47 2013
;--------------------------------------------------------
	.module _divsint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divsint
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
;	../_divsint.c: 207: _divsint (int x, int y)
;	-----------------------------------------
;	 function _divsint
;	-----------------------------------------
__divsint:
	sub	sp, #8
;	../_divsint.c: 211: r = (unsigned int)(x < 0 ? -x : x) / (unsigned int)(y < 0 ? -y : y);
	ldw	x, (0x0b, sp)
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
	ldw	x, (0x0b, sp)
	negw	x
	jra	00107$
00106$:
	ldw	x, (0x0b, sp)
00107$:
	ldw	(0x03, sp), x
	ldw	x, (0x0d, sp)
	cpw	x, #0x0000
	jrslt	00125$
	clr	(0x06, sp)
	jra	00126$
00125$:
	ld	a, #0x01
	ld	(0x06, sp), a
00126$:
	tnz	(0x06, sp)
	jreq	00108$
	ld	a, (0x0e, sp)
	neg	a
	ld	(0x02, sp), a
	clr	a
	sbc	a, (0x0d, sp)
	ld	(0x01, sp), a
	ldw	y, (0x01, sp)
	ldw	(0x07, sp), y
	jra	00109$
00108$:
	ldw	y, (0x0d, sp)
	ldw	(0x07, sp), y
00109$:
	ldw	y, (0x07, sp)
	ldw	x, (0x03, sp)
	divw	x, y
;	../_divsint.c: 212: if ((x < 0) ^ (y < 0))
	ld	a, (0x05, sp)
	xor	a, (0x06, sp)
	tnz	a
	jreq	00102$
;	../_divsint.c: 213: return -r;
	negw	x
;	../_divsint.c: 215: return r;
00102$:
	addw	sp, #8
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
