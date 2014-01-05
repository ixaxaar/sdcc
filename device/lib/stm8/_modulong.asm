;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:48 2013
;--------------------------------------------------------
	.module _modulong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulong
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
;	../_modulong.c: 340: _modulong (unsigned long a, unsigned long b)
;	-----------------------------------------
;	 function _modulong
;	-----------------------------------------
__modulong:
	sub	sp, #4
;	../_modulong.c: 342: unsigned char count = 0;
	clr	(0x02, sp)
;	../_modulong.c: 344: while (!MSB_SET(b))
	clr	(0x01, sp)
00103$:
	ld	a, (0x0b, sp)
	sll	a
	clr	a
	rlc	a
	tnz	a
	jrne	00117$
;	../_modulong.c: 346: b <<= 1;
	ldw	y, (0x0d, sp)
	ldw	x, (0x0b, sp)
	sllw	y
	rlcw	x
	ldw	(0x0d, sp), y
	ldw	(0x0b, sp), x
;	../_modulong.c: 347: if (b > a)
	ldw	x, (0x09, sp)
	cpw	x, (0x0d, sp)
	ld	a, (0x08, sp)
	sbc	a, (0x0c, sp)
	ld	a, (0x07, sp)
	sbc	a, (0x0b, sp)
	jrnc	00102$
;	../_modulong.c: 349: b >>=1;
	ldw	y, (0x0d, sp)
	ldw	x, (0x0b, sp)
	srlw	x
	rrcw	y
	ldw	(0x0d, sp), y
	ldw	(0x0b, sp), x
;	../_modulong.c: 350: break;
	jra	00117$
00102$:
;	../_modulong.c: 352: count++;
	inc	(0x01, sp)
	ld	a, (0x01, sp)
	ld	(0x02, sp), a
	jra	00103$
;	../_modulong.c: 354: do
00117$:
	ld	a, (0x02, sp)
	ld	(0x04, sp), a
00108$:
;	../_modulong.c: 356: if (a >= b)
	ldw	x, (0x09, sp)
	cpw	x, (0x0d, sp)
	ld	a, (0x08, sp)
	sbc	a, (0x0c, sp)
	ld	a, (0x07, sp)
	sbc	a, (0x0b, sp)
	jrc	00107$
;	../_modulong.c: 357: a -= b;
	ldw	y, (0x09, sp)
	subw	y, (0x0d, sp)
	ld	a, (0x08, sp)
	sbc	a, (0x0c, sp)
	ld	xl, a
	ld	a, (0x07, sp)
	sbc	a, (0x0b, sp)
	ld	xh, a
	ldw	(0x09, sp), y
	ldw	(0x07, sp), x
00107$:
;	../_modulong.c: 358: b >>= 1;
	ldw	y, (0x0d, sp)
	ldw	x, (0x0b, sp)
	srlw	x
	rrcw	y
	ldw	(0x0d, sp), y
	ldw	(0x0b, sp), x
;	../_modulong.c: 360: while (count--);
	ld	a, (0x04, sp)
	ld	(0x03, sp), a
	dec	(0x04, sp)
	tnz	(0x03, sp)
	jrne	00108$
;	../_modulong.c: 362: return a;
	ldw	x, (0x09, sp)
	ldw	y, (0x07, sp)
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
