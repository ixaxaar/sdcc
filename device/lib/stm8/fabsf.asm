;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:38 2013
;--------------------------------------------------------
	.module fabsf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
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
;	../fabsf.c: 34: float fabsf(const float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function fabsf
;	-----------------------------------------
_fabsf:
	sub	sp, #12
;	../fabsf.c: 38: fl.f = x;
	ldw	x, sp
	incw	x
	ldw	y, (0x11, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0f, sp)
	ldw	(x), y
;	../fabsf.c: 39: fl.l &= 0x7fffffff;
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ld	a, (0x1, x)
	ld	(0x06, sp), a
	ld	a, (x)
	and	a, #0x7f
	ld	(0x09, sp), a
	ld	a, (0x06, sp)
	ld	(0x0a, sp), a
	ldw	(0x2, x), y
	ldw	y, (0x09, sp)
	ldw	(x), y
;	../fabsf.c: 40: return fl.f;
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	exgw	x, y
	addw	sp, #12
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
