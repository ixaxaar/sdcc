;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:50 2013
;--------------------------------------------------------
	.module _divulonglong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulonglong
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
;	../_divulonglong.c: 39: _divulonglong (unsigned long long x, unsigned long long y)
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
__divulonglong:
	sub	sp, #50
;	../_divulonglong.c: 41: unsigned long long reste = 0L;
	clrw	x
	ldw	(0x09, sp), x
	ldw	(0x07, sp), x
	ldw	(0x05, sp), x
	ldw	(0x03, sp), x
;	../_divulonglong.c: 45: do
	ld	a, #0x40
	ld	(0x02, sp), a
00105$:
;	../_divulonglong.c: 48: c = MSB_SET(x);
	ld	a, (0x37, sp)
	sll	a
	clr	a
	rlc	a
	ld	(0x01, sp), a
;	../_divulonglong.c: 49: x <<= 1;
	ldw	y, (0x3d, sp)
	ldw	(0x31, sp), y
	ld	a, (0x3b, sp)
	ldw	y, (0x39, sp)
	ldw	x, (0x37, sp)
	push	a
	ld	a, (0x3d, sp)
	ld	(0x31, sp), a
	pop	a
	sll	(0x32, sp)
	rlc	(0x31, sp)
	rlc	(0x30, sp)
	rlc	a
	rlcw	y
	rlcw	x
	ld	(0x3b, sp), a
	ldw	(0x39, sp), y
	ldw	(0x37, sp), x
	ldw	y, (0x31, sp)
	ldw	(0x3d, sp), y
	ld	a, (0x30, sp)
	ld	(0x3c, sp), a
;	../_divulonglong.c: 50: reste <<= 1;
	ldw	y, (0x03, sp)
	ldw	(0x23, sp), y
	ld	a, (0x09, sp)
	ldw	y, (0x07, sp)
	ldw	x, (0x05, sp)
	push	a
	ld	a, (0x0b, sp)
	ld	(0x2b, sp), a
	pop	a
	sll	(0x2a, sp)
	rlc	a
	rlcw	y
	rlcw	x
	rlc	(0x24, sp)
	rlc	(0x23, sp)
	ld	(0x09, sp), a
	ldw	(0x07, sp), y
	ldw	(0x05, sp), x
	ldw	y, (0x23, sp)
	ldw	(0x03, sp), y
	ld	a, (0x2a, sp)
	ld	(0x0a, sp), a
;	../_divulonglong.c: 51: if (c)
	tnz	(0x01, sp)
	jreq	00102$
;	../_divulonglong.c: 52: reste |= 1L;
	ld	a, (0x0a, sp)
	or	a, #0x01
	ld	(0x12, sp), a
	ld	a, (0x09, sp)
	ld	(0x11, sp), a
	ld	a, (0x08, sp)
	ld	(0x10, sp), a
	ld	a, (0x07, sp)
	ld	(0x0f, sp), a
	ld	a, (0x06, sp)
	ld	(0x0e, sp), a
	ld	a, (0x05, sp)
	ld	(0x0d, sp), a
	ld	a, (0x04, sp)
	ld	(0x0c, sp), a
	ld	a, (0x03, sp)
	ld	(0x03, sp), a
	ldw	y, (0x11, sp)
	ldw	(0x09, sp), y
	ldw	y, (0x0f, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x0d, sp)
	ldw	(0x05, sp), y
	ld	a, (0x0c, sp)
	ld	(0x04, sp), a
00102$:
;	../_divulonglong.c: 54: if (reste >= y)
	ldw	x, (0x09, sp)
	cpw	x, (0x45, sp)
	ld	a, (0x08, sp)
	sbc	a, (0x44, sp)
	ld	a, (0x07, sp)
	sbc	a, (0x43, sp)
	ld	a, (0x06, sp)
	sbc	a, (0x42, sp)
	ld	a, (0x05, sp)
	sbc	a, (0x41, sp)
	ld	a, (0x04, sp)
	sbc	a, (0x40, sp)
	ld	a, (0x03, sp)
	sbc	a, (0x3f, sp)
	jrc	00106$
;	../_divulonglong.c: 56: reste -= y;
	ldw	x, (0x09, sp)
	subw	x, (0x45, sp)
	ldw	(0x21, sp), x
	ld	a, (0x08, sp)
	sbc	a, (0x44, sp)
	ld	(0x20, sp), a
	ld	a, (0x07, sp)
	sbc	a, (0x43, sp)
	ld	(0x1f, sp), a
	ld	a, (0x06, sp)
	sbc	a, (0x42, sp)
	ld	(0x1e, sp), a
	ld	a, (0x05, sp)
	sbc	a, (0x41, sp)
	ld	(0x1d, sp), a
	ld	a, (0x04, sp)
	sbc	a, (0x40, sp)
	ld	(0x1c, sp), a
	ld	a, (0x03, sp)
	sbc	a, (0x3f, sp)
	ld	(0x03, sp), a
	ldw	y, (0x21, sp)
	ldw	(0x09, sp), y
	ldw	y, (0x1f, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x1d, sp)
	ldw	(0x05, sp), y
	ld	a, (0x1c, sp)
	ld	(0x04, sp), a
;	../_divulonglong.c: 58: x |= 1L;
	ld	a, (0x3e, sp)
	or	a, #0x01
	ld	(0x1a, sp), a
	ld	a, (0x3d, sp)
	ld	(0x19, sp), a
	ld	a, (0x3c, sp)
	ld	(0x18, sp), a
	ld	a, (0x3b, sp)
	ld	(0x17, sp), a
	ld	a, (0x3a, sp)
	ld	(0x16, sp), a
	ld	a, (0x39, sp)
	ld	(0x15, sp), a
	ld	a, (0x38, sp)
	ld	(0x14, sp), a
	ld	a, (0x37, sp)
	ld	(0x13, sp), a
	ldw	y, (0x19, sp)
	ldw	(0x3d, sp), y
	ldw	y, (0x17, sp)
	ldw	(0x3b, sp), y
	ldw	y, (0x15, sp)
	ldw	(0x39, sp), y
	ldw	y, (0x13, sp)
	ldw	(0x37, sp), y
00106$:
;	../_divulonglong.c: 61: while (--count);
	dec	(0x02, sp)
	tnz	(0x02, sp)
	jreq	00129$
	jp	00105$
00129$:
;	../_divulonglong.c: 62: return x;
	ldw	x, (0x35, sp)
	ldw	y, (0x3d, sp)
	ldw	(#6, x), y
	ldw	y, (0x3b, sp)
	ldw	(#4, x), y
	ldw	y, (0x39, sp)
	ldw	(#2, x), y
	ldw	y, (0x37, sp)
	ldw	(x), y
	addw	sp, #50
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
