;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:32 2013
;--------------------------------------------------------
	.module _ulong2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
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
;	../_ulong2fs.c: 83: float __ulong2fs (unsigned long a )
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
___ulong2fs:
	sub	sp, #26
;	../_ulong2fs.c: 88: if (!a)
	ldw	x, (0x1f, sp)
	jrne	00115$
	ldw	x, (0x1d, sp)
	jrne	00115$
;	../_ulong2fs.c: 90: return 0.0;
	clrw	x
	clrw	y
	jp	00111$
;	../_ulong2fs.c: 93: while (a & NORM) 
00115$:
	ldw	x, #0x0096
	ldw	(0x05, sp), x
00103$:
	clr	(0x0c, sp)
	clr	(0x0b, sp)
	clr	a
	ld	xl, a
	ld	a, (0x1d, sp)
	ld	xh, a
	ldw	y, (0x0b, sp)
	jrne	00141$
	tnzw	x
	jreq	00117$
00141$:
;	../_ulong2fs.c: 96: a >>= 1;
	ldw	y, (0x1f, sp)
	ldw	x, (0x1d, sp)
	srlw	x
	rrcw	y
	ldw	(0x1f, sp), y
	ldw	(0x1d, sp), x
;	../_ulong2fs.c: 97: exp++;
	ldw	x, (0x05, sp)
	incw	x
	ldw	(0x05, sp), x
	jra	00103$
;	../_ulong2fs.c: 100: while (a < HIDDEN)
00117$:
	ld	a, (0x05, sp)
	ld	(0x05, sp), a
00106$:
	ldw	x, (0x1f, sp)
	cpw	x, #0x0000
	ld	a, (0x1e, sp)
	sbc	a, #0x80
	ld	a, (0x1d, sp)
	sbc	a, #0x00
	jrnc	00120$
;	../_ulong2fs.c: 102: a <<= 1;
	ldw	y, (0x1f, sp)
	ldw	x, (0x1d, sp)
	sllw	y
	rlcw	x
	ldw	(0x1f, sp), y
	ldw	(0x1d, sp), x
;	../_ulong2fs.c: 103: exp--;
	ldw	x, (0x05, sp)
	decw	x
	ldw	(0x05, sp), x
	jra	00106$
00120$:
	ldw	y, (0x05, sp)
	ldw	(0x07, sp), y
;	../_ulong2fs.c: 107: if ((a&0x7fffff)==0x7fffff) {
	ld	a, (0x20, sp)
	ld	xl, a
	ld	a, (0x1f, sp)
	ld	xh, a
	ld	a, (0x1e, sp)
	and	a, #0x7f
	ld	yl, a
	clr	a
	ld	yh, a
	cpw	x, #0xffff
	jrne	00110$
	cpw	y, #0x007f
	jrne	00110$
;	../_ulong2fs.c: 108: a=0;
	clrw	x
	ldw	(0x1f, sp), x
	ldw	(0x1d, sp), x
;	../_ulong2fs.c: 109: exp++;
	ldw	x, (0x05, sp)
	incw	x
	ldw	(0x07, sp), x
00110$:
;	../_ulong2fs.c: 113: a &= ~HIDDEN ;
	ld	a, (0x20, sp)
	ld	yl, a
	ld	a, (0x1f, sp)
	ld	yh, a
	ld	a, (0x1e, sp)
	and	a, #0x7f
	ld	xl, a
	ld	a, (0x1d, sp)
	ld	xh, a
	ldw	(0x1f, sp), y
	ldw	(0x1d, sp), x
;	../_ulong2fs.c: 115: fl.l = PACK(0,(unsigned long)exp, a);
	ldw	x, sp
	incw	x
	ldw	(0x19, sp), x
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x09, sp)
	ld	(0x19, sp), a
	pop	a
	clrw	x
	tnz	a
	jrpl	00146$
	decw	x
00146$:
	push	a
	ld	a, (0x19, sp)
	ld	(0x15, sp), a
	ld	a, #0x17
	tnz	a
	jreq	00148$
00147$:
	sll	(0x15, sp)
	rlc	(1, sp)
	rlcw	x
	dec	a
	jrne	00147$
00148$:
	pop	a
	or	a, (0x1f, sp)
	ld	yh, a
	ld	a, (0x14, sp)
	or	a, (0x20, sp)
	ld	yl, a
	ld	a, xl
	or	a, (0x1e, sp)
	ld	(0x0e, sp), a
	ld	a, xh
	or	a, (0x1d, sp)
	ld	(0x0d, sp), a
	ldw	x, (0x19, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0d, sp)
	ldw	(x), y
;	../_ulong2fs.c: 117: return (fl.f);
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	exgw	x, y
00111$:
	addw	sp, #26
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
