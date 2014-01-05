;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:46 2013
;--------------------------------------------------------
	.module coshf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _coshf
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
;	../coshf.c: 35: float coshf(const float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function coshf
;	-----------------------------------------
_coshf:
;	../coshf.c: 37: return sincoshf(x, 1);
	push	#0x01
	push	#0x00
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	_sincoshf
	addw	sp, #6
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
