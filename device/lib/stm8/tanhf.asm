;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:46 2013
;--------------------------------------------------------
	.module tanhf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _expf
	.globl _tanhf
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
;	../tanhf.c: 50: float tanhf(const float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function tanhf
;	-----------------------------------------
_tanhf:
	sub	sp, #53
;	../tanhf.c: 54: f=fabsf(x);
	ldw	x, (0x3a, sp)
	pushw	x
	ldw	x, (0x3a, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	ldw	(0x0b, sp), x
	ldw	(0x09, sp), y
;	../tanhf.c: 55: if(f>SBIG) r=1.0;
	push	#0xb0
	push	#0x2c
	push	#0x10
	push	#0x41
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	ld	(0x35, sp), a
	tnz	(0x35, sp)
	jreq	00108$
	clrw	x
	ldw	(0x33, sp), x
	ldw	x, #0x3f80
	ldw	(0x31, sp), x
	jp	00109$
00108$:
;	../tanhf.c: 56: else if(f>K1)
	push	#0x54
	push	#0x9f
	push	#0x0c
	push	#0x3f
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	tnz	a
	jrne	00131$
	jp	00105$
00131$:
;	../tanhf.c: 58: r=0.5-1.0/(expf(f+f)+1.0);
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x2f, sp), x
	ldw	(0x2d, sp), y
	ldw	x, (0x2f, sp)
	pushw	x
	ldw	x, (0x2f, sp)
	pushw	x
	call	_expf
	addw	sp, #4
	ldw	(0x2b, sp), x
	ldw	(0x29, sp), y
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	ldw	x, (0x2f, sp)
	pushw	x
	ldw	x, (0x2f, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x27, sp), x
	ldw	(0x25, sp), y
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	call	___fsdiv
	addw	sp, #8
	ldw	(0x23, sp), x
	ldw	(0x21, sp), y
	ldw	x, (0x23, sp)
	pushw	x
	ldw	x, (0x23, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x00
	push	#0x3f
	call	___fssub
	addw	sp, #8
	ldw	(0x1f, sp), x
	ldw	(0x1d, sp), y
	ldw	y, (0x1f, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x1d, sp)
	ldw	(0x01, sp), y
;	../tanhf.c: 59: r+=r;
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x1b, sp), x
	ldw	(0x19, sp), y
	ldw	y, (0x1b, sp)
	ldw	(0x33, sp), y
	ldw	y, (0x19, sp)
	ldw	(0x31, sp), y
	jp	00109$
00105$:
;	../tanhf.c: 61: else if(f<EPS) r=f;
	clrw	x
	pushw	x
	push	#0x80
	push	#0x39
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00102$
	ldw	y, (0x0b, sp)
	ldw	(0x33, sp), y
	ldw	y, (0x09, sp)
	ldw	(0x31, sp), y
	jp	00109$
00102$:
;	../tanhf.c: 64: g=f*f;
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	../tanhf.c: 65: r=f+f*(P(g)/Q(g));
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	push	#0xb2
	push	#0x11
	push	#0x7b
	push	#0xbb
	call	___fsmul
	addw	sp, #8
	push	#0xc6
	push	#0xe2
	push	#0x52
	push	#0xbf
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x17, sp), x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x1b, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	ldw	(0x13, sp), x
	ldw	(0x11, sp), y
	push	#0x1a
	push	#0x2a
	push	#0x1e
	push	#0x40
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x17, sp)
	pushw	x
	ldw	x, (0x17, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x33, sp), x
	ldw	(0x31, sp), y
00109$:
;	../tanhf.c: 67: if(x<0.0) r=-r;
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x3e, sp)
	pushw	x
	ldw	x, (0x3e, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00111$
	ldw	y, (0x32, sp)
	push	a
	ld	a, (0x35, sp)
	ld	(0x11, sp), a
	pop	a
	ld	a, (0x31, sp)
	xor	a, #0x80
	ldw	(0x32, sp), y
	ld	(0x31, sp), a
	ld	a, (0x10, sp)
	ld	(0x34, sp), a
00111$:
;	../tanhf.c: 68: return r;
	ldw	x, (0x33, sp)
	ldw	y, (0x31, sp)
	addw	sp, #53
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
