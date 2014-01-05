;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:44 2013
;--------------------------------------------------------
	.module acosf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _acosf
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
;	../acosf.c: 36: float acosf(const float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function acosf
;	-----------------------------------------
_acosf:
;	../acosf.c: 38: if (x == 1.0) return 0.0;
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	___fseq
	addw	sp, #8
	tnz	a
	jreq	00108$
	clrw	x
	clrw	y
	jra	00110$
00108$:
;	../acosf.c: 39: else if (x ==-1.0) return PI;
	clrw	x
	pushw	x
	push	#0x80
	push	#0xbf
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	___fseq
	addw	sp, #8
	tnz	a
	jreq	00105$
	ldw	x, #0x0fdb
	ldw	y, #0x4049
	jra	00110$
00105$:
;	../acosf.c: 40: else if (x == 0.0) return HALF_PI;
	ldw	x, (0x05, sp)
	jrne	00102$
	ldw	x, (0x03, sp)
	jrne	00102$
	ldw	x, #0x0fdb
	ldw	y, #0x3fc9
	jra	00110$
00102$:
;	../acosf.c: 41: else               return asincosf(x, true);
	push	#0x01
	ldw	x, (0x06, sp)
	pushw	x
	ldw	x, (0x06, sp)
	pushw	x
	call	_asincosf
	addw	sp, #5
00110$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
