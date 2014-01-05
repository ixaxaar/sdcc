;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:32 2013
;--------------------------------------------------------
	.module _schar2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
	.globl ___schar2fs
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
;	../_schar2fs.c: 55: float __schar2fs (signed char sc) {
;	-----------------------------------------
;	 function __schar2fs
;	-----------------------------------------
___schar2fs:
;	../_schar2fs.c: 56: return __slong2fs(sc);
	ld	a, (0x03, sp)
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	ld	yl, a
	ld	yh, a
	pushw	x
	pushw	y
	call	___slong2fs
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
