;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:32 2013
;--------------------------------------------------------
	.module _fs2slong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2slong
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
;	../_fs2slong.c: 108: signed long __fs2slong (float f)
;	-----------------------------------------
;	 function __fs2slong
;	-----------------------------------------
___fs2slong:
	sub	sp, #4
;	../_fs2slong.c: 111: if (!f)
	ldw	x, (0x09, sp)
	jrne	00102$
	ldw	x, (0x07, sp)
	jrne	00102$
;	../_fs2slong.c: 112: return 0;
	clrw	x
	clrw	y
	jra	00106$
00102$:
;	../_fs2slong.c: 114: if (f<0) {
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00104$
;	../_fs2slong.c: 115: return -__fs2ulong(-f);
	ldw	y, (0x09, sp)
	ld	a, (0x08, sp)
	ld	xl, a
	push	a
	ld	a, (0x08, sp)
	xor	a, #0x80
	ld	xh, a
	pop	a
	pushw	y
	pushw	x
	call	___fs2ulong
	addw	sp, #4
	ldw	(0x01, sp), y
	negw	x
	clr	a
	sbc	a, (0x02, sp)
	ld	yl, a
	clr	a
	sbc	a, (0x01, sp)
	ld	yh, a
	jra	00106$
00104$:
;	../_fs2slong.c: 117: return __fs2ulong(f);
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	___fs2ulong
	addw	sp, #4
00106$:
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
