;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:49 2013
;--------------------------------------------------------
	.module _rlslonglong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlslonglong
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
;	../_rlslonglong.c: 35: long long _rlslonglong(long long l, signed char s)
;	-----------------------------------------
;	 function _rlslonglong
;	-----------------------------------------
__rlslonglong:
	sub	sp, #16
;	../_rlslonglong.c: 37: return((unsigned long long)(l) << s);
	ldw	y, (0x1b, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x19, sp)
	ldw	(0x05, sp), y
	ld	a, (0x18, sp)
	ld	xl, a
	ld	a, (0x17, sp)
	ldw	y, (0x15, sp)
	ld	xh, a
	ld	a, (0x05, sp)
	ld	(0x0d, sp), a
	push	a
	ld	a, (0x09, sp)
	ld	(0x11, sp), a
	ld	a, (0x08, sp)
	ld	(0x10, sp), a
	ld	a, (0x07, sp)
	ld	(0x0f, sp), a
	pop	a
	ld	a, (0x1d, sp)
	tnz	a
	jreq	00104$
00103$:
	sll	(0x10, sp)
	rlc	(0x0f, sp)
	rlc	(0x0e, sp)
	rlc	(0x0d, sp)
	rlcw	x
	rlcw	y
	dec	a
	jrne	00103$
00104$:
	pushw	x
	ldw	x, (0x15, sp)
	ld	a, (0x12, sp)
	ld	(#7, x), a
	ld	a, (0x11, sp)
	ld	(#6, x), a
	ld	a, (0x10, sp)
	ld	(#5, x), a
	ld	a, (0x0f, sp)
	ld	(#4, x), a
	ld	a, (#2, sp)
	ld	(#3, x), a
	ld	a, (#1, sp)
	ld	(#2, x), a
	ldw	(x), y
	addw	sp, #2
	addw	sp, #16
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
