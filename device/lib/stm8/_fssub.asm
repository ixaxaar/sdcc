;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:37 2013
;--------------------------------------------------------
	.module _fssub
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fssub
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
;	../_fssub.c: 73: float __fssub (float a1, float a2)
;	-----------------------------------------
;	 function __fssub
;	-----------------------------------------
___fssub:
	sub	sp, #4
;	../_fssub.c: 75: float neg = -a1;
	ldw	y, (0x09, sp)
	ld	a, (0x08, sp)
	ld	xh, a
	ld	a, (0x07, sp)
	xor	a, #0x80
	ld	(0x01, sp), a
	ld	a, xh
;	../_fssub.c: 76: return -(neg + a2);
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	pushw	y
	push	a
	ld	a, (0x08, sp)
	push	a
	call	___fsadd
	addw	sp, #8
	ld	a, yh
	xor	a, #0x80
	ld	yh, a
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
