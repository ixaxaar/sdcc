;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:40 2013
;--------------------------------------------------------
	.module sinf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _sinf
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
;	../sinf.c: 36: float sinf(const float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function sinf
;	-----------------------------------------
_sinf:
;	../sinf.c: 38: if (x==0.0) return 0.0;
	ldw	x, (0x05, sp)
	jrne	00102$
	ldw	x, (0x03, sp)
	jrne	00102$
	clrw	x
	clrw	y
	jra	00103$
00102$:
;	../sinf.c: 39: return sincosf(x, 0);
	push	#0x00
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
