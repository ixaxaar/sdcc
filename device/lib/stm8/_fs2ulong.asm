;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:33 2013
;--------------------------------------------------------
	.module _fs2ulong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
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
;	../_fs2ulong.c: 103: __fs2ulong (float a1)
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
___fs2ulong:
	sub	sp, #20
;	../_fs2ulong.c: 109: fl1.f = a1;
	ldw	x, sp
	addw	x, #7
	ldw	y, (0x19, sp)
	ldw	(0x2, x), y
	ldw	y, (0x17, sp)
	ldw	(x), y
;	../_fs2ulong.c: 111: if (!fl1.l || SIGN(fl1.l))
	ldw	x, sp
	addw	x, #7
	ld	a, (0x3, x)
	ld	yh, a
	ld	a, (0x2, x)
	ld	yl, a
	ldw	x, (x)
	tnzw	x
	jrne	00110$
	tnzw	x
	jreq	00101$
00110$:
	ldw	x, sp
	addw	x, #7
	ld	a, (0x3, x)
	ld	(0x10, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	ld	(0x13, sp), a
	ld	a, (0x10, sp)
	ld	(0x14, sp), a
	ld	a, xh
	sll	a
	clr	a
	rlc	a
	tnz	a
	jreq	00102$
00101$:
;	../_fs2ulong.c: 112: return (0);
	clrw	x
	clrw	y
	jra	00104$
00102$:
;	../_fs2ulong.c: 114: exp = EXP (fl1.l) - EXCESS - 24;
	ldw	x, sp
	addw	x, #7
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	ld	yh, a
	ld	a, #0x17
	tnz	a
	jreq	00113$
00112$:
	srlw	x
	rrcw	y
	dec	a
	jrne	00112$
00113$:
	clr	a
	ld	yh, a
	clr	a
	ld	xl, a
	clr	a
	subw	y, #0x0096
	push	a
	ld	a, xl
	sbc	a, #0x00
	ld	xh, a
	ld	a, (1, sp)
	sbc	a, #0x00
	ld	xl, a
	pop	a
	ldw	(0x05, sp), y
;	../_fs2ulong.c: 115: l = MANT (fl1.l);
	ldw	x, sp
	addw	x, #7
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	ld	yh, a
	ld	a, xl
	and	a, #0x7f
	ld	xl, a
	clr	a
	ld	xh, a
	ld	a, xl
	or	a, #0x80
	ld	xl, a
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
;	../_fs2ulong.c: 117: l >>= -exp;
	ld	a, (0x06, sp)
	neg	a
	ld	(0x0c, sp), a
	clr	a
	sbc	a, (0x05, sp)
	ldw	y, (0x03, sp)
	ldw	x, (0x01, sp)
	ld	a, (0x0c, sp)
	tnz	a
	jreq	00115$
00114$:
	sraw	x
	rrcw	y
	dec	a
	jrne	00114$
00115$:
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
;	../_fs2ulong.c: 119: return l;
	ldw	x, (0x03, sp)
	ldw	y, (0x01, sp)
00104$:
	addw	sp, #20
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
