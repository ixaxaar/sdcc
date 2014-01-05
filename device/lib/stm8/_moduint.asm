;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:47 2013
;--------------------------------------------------------
	.module _moduint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __moduint
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
;	../_moduint.c: 173: _moduint (unsigned int a, unsigned int b)
;	-----------------------------------------
;	 function _moduint
;	-----------------------------------------
__moduint:
	sub	sp, #4
;	../_moduint.c: 175: unsigned char count = 0;
	clr	(0x04, sp)
;	../_moduint.c: 178: while (!MSB_SET(b))
	clr	(0x01, sp)
00103$:
	ld	a, (0x09, sp)
	sll	a
	clr	a
	rlc	a
	tnz	a
	jrne	00117$
;	../_moduint.c: 180: b <<= 1;
	ldw	x, (0x09, sp)
	sllw	x
	ldw	(0x09, sp), x
;	../_moduint.c: 181: if (b > a)
	ldw	x, (0x09, sp)
	cpw	x, (0x07, sp)
	jrule	00102$
;	../_moduint.c: 183: b >>=1;
	ldw	x, (0x09, sp)
	srlw	x
	ldw	(0x09, sp), x
;	../_moduint.c: 184: break;
	jra	00117$
00102$:
;	../_moduint.c: 186: count++;
	inc	(0x01, sp)
	ld	a, (0x01, sp)
	ld	(0x04, sp), a
	jra	00103$
;	../_moduint.c: 188: do
00117$:
	ld	a, (0x04, sp)
	ld	(0x02, sp), a
00108$:
;	../_moduint.c: 190: if (a >= b)
	ldw	x, (0x07, sp)
	cpw	x, (0x09, sp)
	jrc	00107$
;	../_moduint.c: 191: a -= b;
	ldw	y, (0x07, sp)
	subw	y, (0x09, sp)
	ldw	(0x07, sp), y
00107$:
;	../_moduint.c: 192: b >>= 1;
	ldw	x, (0x09, sp)
	srlw	x
	ldw	(0x09, sp), x
;	../_moduint.c: 194: while (count--);
	ld	a, (0x02, sp)
	ld	(0x03, sp), a
	dec	(0x02, sp)
	tnz	(0x03, sp)
	jrne	00108$
;	../_moduint.c: 195: return a;
	ldw	x, (0x07, sp)
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
