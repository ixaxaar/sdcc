;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:41 2013
;--------------------------------------------------------
	.module log10f
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
	.globl _log10f
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
;	../log10f.c: 34: float log10f(const float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function log10f
;	-----------------------------------------
_log10f:
;	../log10f.c: 36: return logf(x)*0.4342944819;
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	call	_logf
	addw	sp, #4
	pushw	x
	pushw	y
	push	#0xd9
	push	#0x5b
	push	#0xde
	push	#0x3e
	call	___fsmul
	addw	sp, #8
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
