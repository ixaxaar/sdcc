;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:47 2013
;--------------------------------------------------------
	.module ceilf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ceilf
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
;	../ceilf.c: 33: float ceilf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function ceilf
;	-----------------------------------------
_ceilf:
	sub	sp, #12
;	../ceilf.c: 36: r=x;
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	___fs2slong
	addw	sp, #4
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	../ceilf.c: 38: return r;
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
	call	___slong2fs
	addw	sp, #4
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	../ceilf.c: 37: if (r<0)
	ldw	x, (0x03, sp)
	cpw	x, #0x0000
	ld	a, (0x02, sp)
	sbc	a, #0x00
	ld	a, (0x01, sp)
	sbc	a, #0x00
	jrsge	00102$
;	../ceilf.c: 38: return r;
	ldw	x, (0x07, sp)
	ldw	y, (0x05, sp)
	jra	00104$
00102$:
;	../ceilf.c: 40: return (r+((r<x)?1:0));
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00106$
	ld	a, #0x01
	jra	00107$
00106$:
	clr	a
00107$:
	ld	yl, a
	clr	a
	clrw	x
	tnz	a
	jrpl	00118$
	decw	x
00118$:
	ld	yh, a
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
	ldw	(0x0b, sp), x
	ldw	x, (0x0b, sp)
00104$:
	addw	sp, #12
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
