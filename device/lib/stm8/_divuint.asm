;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:30 2013
;--------------------------------------------------------
	.module _divuint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divuint
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
;	../_divuint.c: 155: _divuint (unsigned int x, unsigned int y)
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
__divuint:
	sub	sp, #5
;	../_divuint.c: 157: unsigned int reste = 0;
	clrw	x
	ldw	(0x02, sp), x
;	../_divuint.c: 161: do
	ld	a, #0x10
	ld	(0x01, sp), a
00105$:
;	../_divuint.c: 164: c = MSB_SET(x);
	ld	a, (0x08, sp)
	sll	a
	clr	a
	rlc	a
;	../_divuint.c: 165: x <<= 1;
	ldw	x, (0x08, sp)
	sllw	x
	ldw	(0x08, sp), x
;	../_divuint.c: 166: reste <<= 1;
	ldw	x, (0x02, sp)
	sllw	x
	ldw	(0x02, sp), x
;	../_divuint.c: 167: if (c)
	tnz	a
	jreq	00102$
;	../_divuint.c: 168: reste |= 1;
	ld	a, (0x03, sp)
	or	a, #0x01
	ld	(0x05, sp), a
	ld	a, (0x02, sp)
	ld	(0x02, sp), a
	ld	a, (0x05, sp)
	ld	(0x03, sp), a
00102$:
;	../_divuint.c: 170: if (reste >= y)
	ldw	x, (0x02, sp)
	cpw	x, (0x0a, sp)
	jrc	00106$
;	../_divuint.c: 172: reste -= y;
	ldw	y, (0x02, sp)
	subw	y, (0x0a, sp)
	ldw	(0x02, sp), y
;	../_divuint.c: 174: x |= 1;
	ld	a, (0x09, sp)
	or	a, #0x01
	ld	xl, a
	ld	a, (0x08, sp)
	ld	xh, a
	ldw	(0x08, sp), x
00106$:
;	../_divuint.c: 177: while (--count);
	dec	(0x01, sp)
	tnz	(0x01, sp)
	jrne	00105$
;	../_divuint.c: 178: return x;
	ldw	x, (0x08, sp)
	addw	sp, #5
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
