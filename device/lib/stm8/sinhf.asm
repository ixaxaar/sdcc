;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:45 2013
;--------------------------------------------------------
	.module sinhf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _sinhf
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
;	../sinhf.c: 35: float sinhf(const float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function sinhf
;	-----------------------------------------
_sinhf:
;	../sinhf.c: 37: return sincoshf(x, 0);
	clrw	x
	pushw	x
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
