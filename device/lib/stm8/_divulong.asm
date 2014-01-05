;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:30 2013
;--------------------------------------------------------
	.module _divulong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulong
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
;	../_divulong.c: 331: _divulong (unsigned long x, unsigned long y)
;	-----------------------------------------
;	 function _divulong
;	-----------------------------------------
__divulong:
	sub	sp, #18
;	../_divulong.c: 333: unsigned long reste = 0L;
	clrw	x
	ldw	(0x05, sp), x
	ldw	(0x03, sp), x
;	../_divulong.c: 337: do
	ld	a, #0x20
	ld	(0x02, sp), a
00105$:
;	../_divulong.c: 340: c = MSB_SET(x);
	ld	a, (0x15, sp)
	sll	a
	clr	a
	rlc	a
	ld	(0x01, sp), a
;	../_divulong.c: 341: x <<= 1;
	ldw	y, (0x17, sp)
	ldw	x, (0x15, sp)
	sllw	y
	rlcw	x
	ldw	(0x17, sp), y
	ldw	(0x15, sp), x
;	../_divulong.c: 342: reste <<= 1;
	ld	a, (0x03, sp)
	ld	(0x0f, sp), a
	ldw	x, (0x04, sp)
	push	a
	ld	a, (0x07, sp)
	ld	(0x13, sp), a
	pop	a
	sll	(0x12, sp)
	rlcw	x
	rlc	(0x0f, sp)
	ldw	(0x04, sp), x
	ld	a, (0x12, sp)
	ld	(0x06, sp), a
	ld	a, (0x0f, sp)
	ld	(0x03, sp), a
;	../_divulong.c: 343: if (c)
	tnz	(0x01, sp)
	jreq	00102$
;	../_divulong.c: 344: reste |= 1L;
	ld	a, (0x06, sp)
	or	a, #0x01
	ld	(0x0e, sp), a
	ld	a, (0x05, sp)
	ld	(0x0d, sp), a
	ld	a, (0x04, sp)
	ld	(0x0c, sp), a
	ld	a, (0x03, sp)
	ld	(0x0b, sp), a
	ldw	y, (0x0d, sp)
	ldw	(0x05, sp), y
	ldw	y, (0x0b, sp)
	ldw	(0x03, sp), y
00102$:
;	../_divulong.c: 346: if (reste >= y)
	ldw	x, (0x05, sp)
	cpw	x, (0x1b, sp)
	ld	a, (0x04, sp)
	sbc	a, (0x1a, sp)
	ld	a, (0x03, sp)
	sbc	a, (0x19, sp)
	jrc	00106$
;	../_divulong.c: 348: reste -= y;
	ldw	y, (0x05, sp)
	subw	y, (0x1b, sp)
	ld	a, (0x04, sp)
	sbc	a, (0x1a, sp)
	ld	(0x08, sp), a
	ld	a, (0x03, sp)
	sbc	a, (0x19, sp)
	ldw	(0x05, sp), y
	ld	(0x03, sp), a
	ld	a, (0x08, sp)
	ld	(0x04, sp), a
;	../_divulong.c: 350: x |= 1L;
	ld	a, (0x18, sp)
	or	a, #0x01
	ld	yl, a
	ld	a, (0x17, sp)
	ld	yh, a
	ld	a, (0x16, sp)
	ld	xl, a
	ld	a, (0x15, sp)
	ld	xh, a
	ldw	(0x17, sp), y
	ldw	(0x15, sp), x
00106$:
;	../_divulong.c: 353: while (--count);
	dec	(0x02, sp)
	tnz	(0x02, sp)
	jreq	00129$
	jp	00105$
00129$:
;	../_divulong.c: 354: return x;
	ldw	x, (0x17, sp)
	ldw	y, (0x15, sp)
	addw	sp, #18
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
