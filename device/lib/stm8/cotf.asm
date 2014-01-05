;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:42 2013
;--------------------------------------------------------
	.module cotf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
	.globl _cotf
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
;	../cotf.c: 37: float cotf(const float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function cotf
;	-----------------------------------------
_cotf:
;	../cotf.c: 41: y=fabsf(x);
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
;	../cotf.c: 42: if (y<1.0E-30) //This one requires more thinking...
	push	#0x60
	push	#0x42
	push	#0xa2
	push	#0x0d
	pushw	x
	pushw	y
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00105$
;	../cotf.c: 44: errno = ERANGE;
	mov	_errno+1, #0x22
	clr	_errno+0
;	../cotf.c: 45: if (x<0.0)
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00102$
;	../cotf.c: 46: return -HUGE_VALF;
	ldw	x, #0xffff
	ldw	y, #0xff7f
	jra	00106$
00102$:
;	../cotf.c: 48: return +HUGE_VALF;
	ldw	x, #0xffff
	ldw	y, #0x7f7f
	jra	00106$
00105$:
;	../cotf.c: 50: return tancotf(x, 1);
	push	#0x01
	ldw	x, (0x06, sp)
	pushw	x
	ldw	x, (0x06, sp)
	pushw	x
	call	_tancotf
	addw	sp, #5
00106$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
