;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:46 2013
;--------------------------------------------------------
	.module floorf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _floorf
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
;	../floorf.c: 33: float floorf (float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function floorf
;	-----------------------------------------
_floorf:
	sub	sp, #8
;	../floorf.c: 36: r=x;
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	___fs2slong
	addw	sp, #4
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	../floorf.c: 38: return (r+((r>x)?-1:0));
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
	call	___slong2fs
	addw	sp, #4
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	../floorf.c: 37: if (r<=0)
	clrw	x
	cpw	x, (0x03, sp)
	clr	a
	sbc	a, (0x02, sp)
	clr	a
	sbc	a, (0x01, sp)
	jrslt	00102$
;	../floorf.c: 38: return (r+((r>x)?-1:0));
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	tnz	a
	jreq	00106$
	ld	a, #0xff
	jra	00107$
00106$:
	clr	a
00107$:
	push	a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	yh, a
	ld	xl, a
	ld	xh, a
	pop	a
	ld	yl, a
	addw	y, (0x03, sp)
	ld	a, xl
	adc	a, (0x02, sp)
	ld	xl, a
	ld	a, xh
	adc	a, (0x01, sp)
	ld	xh, a
	pushw	y
	pushw	x
	call	___slong2fs
	addw	sp, #4
	jra	00104$
00102$:
;	../floorf.c: 40: return r;
	ldw	x, (0x07, sp)
	ldw	y, (0x05, sp)
00104$:
	addw	sp, #8
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
