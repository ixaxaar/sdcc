;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:40 2013
;--------------------------------------------------------
	.module cosf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _cosf
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
;	../cosf.c: 36: float cosf(const float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function cosf
;	-----------------------------------------
_cosf:
;	../cosf.c: 38: if (x==0.0) return 1.0;
	ldw	x, (0x05, sp)
	jrne	00102$
	ldw	x, (0x03, sp)
	jrne	00102$
	clrw	x
	ldw	y, #0x3f80
	jra	00103$
00102$:
;	../cosf.c: 39: return sincosf(x, 1);
	push	#0x01
	ldw	x, (0x06, sp)
	pushw	x
	ldw	x, (0x06, sp)
	pushw	x
	call	_sincosf
	addw	sp, #5
00103$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
