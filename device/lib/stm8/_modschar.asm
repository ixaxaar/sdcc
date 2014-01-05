;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:47 2013
;--------------------------------------------------------
	.module _modschar
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modschar
	.globl __moduschar
	.globl __modsuchar
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
;	../_modschar.c: 31: _modschar (signed char x, signed char y)
;	-----------------------------------------
;	 function _modschar
;	-----------------------------------------
__modschar:
;	../_modschar.c: 33: return ((int)x % (int)y);
	ld	a, (0x03, sp)
	ld	yl, a
	ld	a, yl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	yh, a
	ld	a, (0x04, sp)
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	pushw	x
	pushw	y
	call	__modsint
	addw	sp, #4
	ret
;	../_modschar.c: 37: _moduschar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _moduschar
;	-----------------------------------------
__moduschar:
;	../_modschar.c: 39: return ((int)((signed char)x) % (int)y);
	ld	a, (0x03, sp)
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	clrw	y
	ld	a, (0x04, sp)
	ld	yl, a
	pushw	y
	pushw	x
	call	__modsint
	addw	sp, #4
	ret
;	../_modschar.c: 43: _modsuchar (signed char x, signed char y)
;	-----------------------------------------
;	 function _modsuchar
;	-----------------------------------------
__modsuchar:
;	../_modschar.c: 45: return ((int)((unsigned char)x) % (int)y);
	ld	a, (0x03, sp)
	clrw	y
	ld	yl, a
	ld	a, (0x04, sp)
	ld	xl, a
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	pushw	x
	pushw	y
	call	__modsint
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
