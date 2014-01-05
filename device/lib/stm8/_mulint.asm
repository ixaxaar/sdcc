;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:30 2013
;--------------------------------------------------------
	.module _mulint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mulint
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
;	../_mulint.c: 226: _mulint (int a, int b)
;	-----------------------------------------
;	 function _mulint
;	-----------------------------------------
__mulint:
	sub	sp, #16
;	../_mulint.c: 238: x = (union uu *)&a;
	ldw	x, sp
	addw	x, #19
	ldw	(0x05, sp), x
;	../_mulint.c: 239: y = (union uu *)&b;
	ldw	x, sp
	addw	x, #21
	ldw	(0x03, sp), x
;	../_mulint.c: 242: t.t = x->s.lo * y->s.lo;
	ldw	x, sp
	incw	x
	ldw	(0x09, sp), x
	ldw	x, (0x05, sp)
	incw	x
	ldw	(0x07, sp), x
	ldw	x, (0x07, sp)
	ld	a, (x)
	ld	yl, a
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x0d, sp), x
	ldw	x, (0x0d, sp)
	ld	a, (x)
	mul	y, a
	ldw	x, (0x09, sp)
	ldw	(x), y
;	../_mulint.c: 243: t.s.hi += (x->s.lo * y->s.hi) + (x->s.hi * y->s.lo);
	ldw	x, sp
	incw	x
	ldw	(0x0b, sp), x
	ldw	x, (0x0b, sp)
	ld	a, (x)
	ld	(0x10, sp), a
	ldw	x, (0x07, sp)
	ld	a, (x)
	ld	xl, a
	ldw	y, (0x03, sp)
	ld	a, (y)
	mul	x, a
	exg	a, xl
	ld	(0x0f, sp), a
	exg	a, xl
	ldw	x, (0x05, sp)
	ld	a, (x)
	ld	xl, a
	ldw	y, (0x0d, sp)
	ld	a, (y)
	mul	x, a
	ld	a, xl
	add	a, (0x0f, sp)
	add	a, (0x10, sp)
	ldw	x, (0x0b, sp)
	ld	(x), a
;	../_mulint.c: 245: return t.t;
	ldw	x, sp
	incw	x
	ldw	x, (x)
	addw	sp, #16
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
