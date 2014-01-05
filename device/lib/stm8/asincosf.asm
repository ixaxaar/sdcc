;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:44 2013
;--------------------------------------------------------
	.module asincosf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _ldexpf
	.globl _fabsf
	.globl _sqrtf
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
;	../asincosf.c: 47: float asincosf(const float x, const bool isacos)
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
_asincosf:
	sub	sp, #89
;	../asincosf.c: 51: bool quartPI = isacos;
	ld	a, (0x60, sp)
	ld	(0x01, sp), a
;	../asincosf.c: 56: y = fabsf(x);
	ldw	x, (0x5e, sp)
	pushw	x
	ldw	x, (0x5e, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	ldw	(0x4c, sp), x
	ldw	(0x4a, sp), y
;	../asincosf.c: 57: if (y < EPS)
	clrw	x
	pushw	x
	push	#0x80
	push	#0x39
	ldw	x, (0x50, sp)
	pushw	x
	ldw	x, (0x50, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00107$
;	../asincosf.c: 59: r = y;
	ldw	y, (0x4c, sp)
	ldw	(0x42, sp), y
	ldw	y, (0x4a, sp)
	ldw	(0x40, sp), y
	jp	00108$
00107$:
;	../asincosf.c: 63: if (y > 0.5)
	clrw	x
	pushw	x
	push	#0x00
	push	#0x3f
	ldw	x, (0x50, sp)
	pushw	x
	ldw	x, (0x50, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	tnz	a
	jrne	00144$
	jp	00104$
00144$:
;	../asincosf.c: 65: quartPI = !isacos;
	ld	a, (0x01, sp)
	sub	a, #0x01
	clr	a
	rlc	a
	ld	(0x01, sp), a
;	../asincosf.c: 66: if (y > 1.0)
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	ldw	x, (0x50, sp)
	pushw	x
	ldw	x, (0x50, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	tnz	a
	jreq	00102$
;	../asincosf.c: 68: errno = EDOM;
	mov	_errno+1, #0x21
	clr	_errno+0
;	../asincosf.c: 69: return 0.0;
	clrw	x
	clrw	y
	jp	00117$
00102$:
;	../asincosf.c: 71: g = (0.5 - y) + 0.5;
	ldw	x, (0x4c, sp)
	pushw	x
	ldw	x, (0x4c, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	call	___fssub
	addw	sp, #8
;	../asincosf.c: 72: g = ldexpf(g, -1);
	push	#0xff
	push	#0xff
	pushw	x
	pushw	y
	call	_ldexpf
	addw	sp, #6
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
;	../asincosf.c: 73: y = sqrtf(g);
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	_sqrtf
	addw	sp, #4
;	../asincosf.c: 74: y = -(y + y);
	pushw	x
	pushw	y
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x4e, sp), y
	ld	a, (0x4f, sp)
	ld	(0x38, sp), a
	ld	a, (0x4e, sp)
	xor	a, #0x80
	ldw	(0x4c, sp), x
	ld	(0x4a, sp), a
	ld	a, (0x38, sp)
	ld	(0x4b, sp), a
	jra	00105$
00104$:
;	../asincosf.c: 78: g = y * y;
	ldw	x, (0x4c, sp)
	pushw	x
	ldw	x, (0x4c, sp)
	pushw	x
	ldw	x, (0x50, sp)
	pushw	x
	ldw	x, (0x50, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
00105$:
;	../asincosf.c: 80: r = y + y * ((P(g) * g) / Q(g));
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	push	#0x65
	push	#0x20
	push	#0x01
	push	#0xbf
	call	___fsmul
	addw	sp, #8
	push	#0x6b
	push	#0x16
	push	#0x6f
	push	#0x3f
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x1d, sp), x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x21, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	ldw	(0x3e, sp), x
	ldw	(0x3c, sp), y
	push	#0x0b
	push	#0x8d
	push	#0xb1
	push	#0xc0
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x27, sp), x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x2b, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	push	#0xf0
	push	#0x50
	push	#0xb3
	push	#0x40
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x42, sp)
	pushw	x
	ldw	x, (0x42, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x50, sp)
	pushw	x
	ldw	x, (0x50, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x50, sp)
	pushw	x
	ldw	x, (0x50, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x19, sp), x
	ldw	(0x40, sp), y
	ldw	y, (0x19, sp)
	ldw	(0x42, sp), y
00108$:
;	../asincosf.c: 82: i = quartPI;
	ld	a, (0x01, sp)
	ld	(0x02, sp), a
;	../asincosf.c: 85: if (x < 0.0)
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x62, sp)
	pushw	x
	ldw	x, (0x62, sp)
	pushw	x
;	../asincosf.c: 86: r = (b[i] + r) + b[i];
	call	___fslt
	addw	sp, #8
	ld	(0x3b, sp), a
	clrw	x
	ld	a, (0x02, sp)
	ld	xl, a
	sllw	x
	sllw	x
	ldw	(0x31, sp), x
;	../asincosf.c: 83: if (isacos)
	tnz	(0x60, sp)
	jrne	00146$
	jp	00115$
00146$:
;	../asincosf.c: 85: if (x < 0.0)
	tnz	(0x3b, sp)
	jreq	00110$
;	../asincosf.c: 86: r = (b[i] + r) + b[i];
	ldw	x, #_asincosf_b_1_24+0
	ldw	(0x15, sp), x
	ldw	x, (0x15, sp)
	addw	x, (0x31, sp)
	ldw	(0x1f, sp), x
	ldw	x, (0x1f, sp)
	ld	a, (0x3, x)
	ld	(0x24, sp), a
	ld	a, (0x2, x)
	ld	(0x23, sp), a
	ldw	x, (x)
	ldw	(0x21, sp), x
	ldw	x, (0x42, sp)
	pushw	x
	ldw	x, (0x42, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x35, sp), x
	ldw	(0x33, sp), y
	ldw	x, (0x23, sp)
	pushw	x
	ldw	x, (0x23, sp)
	pushw	x
	ldw	x, (0x39, sp)
	pushw	x
	ldw	x, (0x39, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x13, sp), x
	ldw	(0x11, sp), y
	ldw	y, (0x13, sp)
	ldw	(0x05, sp), y
	ldw	y, (0x11, sp)
	ldw	(0x03, sp), y
	jp	00116$
00110$:
;	../asincosf.c: 88: r = (a[i] - r) + a[i];
	ldw	x, #_asincosf_a_1_24+0
	ldw	(0x44, sp), x
	ldw	x, (0x44, sp)
	addw	x, (0x31, sp)
	ldw	(0x0f, sp), x
	ldw	x, (0x0f, sp)
	ld	a, (0x3, x)
	ld	(0x0e, sp), a
	ld	a, (0x2, x)
	ld	(0x0d, sp), a
	ldw	x, (x)
	ldw	(0x0b, sp), x
	ldw	x, (0x42, sp)
	pushw	x
	ldw	x, (0x42, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
	ldw	(0x58, sp), x
	ldw	(0x56, sp), y
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x5c, sp)
	pushw	x
	ldw	x, (0x5c, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x54, sp), x
	ldw	(0x52, sp), y
	ldw	y, (0x54, sp)
	ldw	(0x05, sp), y
	ldw	y, (0x52, sp)
	ldw	(0x03, sp), y
	jra	00116$
00115$:
;	../asincosf.c: 92: r = (a[i] + r) + a[i];
	ldw	x, #_asincosf_a_1_24+0
	addw	x, (0x31, sp)
	ld	a, (0x3, x)
	ld	(0x30, sp), a
	ld	a, (0x2, x)
	ld	(0x2f, sp), a
	ldw	x, (x)
	ldw	(0x2d, sp), x
	ldw	x, (0x42, sp)
	pushw	x
	ldw	x, (0x42, sp)
	pushw	x
	ldw	x, (0x33, sp)
	pushw	x
	ldw	x, (0x33, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x2b, sp), x
	ldw	x, (0x2f, sp)
	pushw	x
	ldw	x, (0x2f, sp)
	pushw	x
	ldw	x, (0x2f, sp)
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x05, sp), x
	ldw	(0x03, sp), y
;	../asincosf.c: 93: if (x < 0.0)
	tnz	(0x3b, sp)
	jreq	00116$
;	../asincosf.c: 94: r = -r;
	ldw	y, (0x04, sp)
	push	a
	ld	a, (0x07, sp)
	ld	(0x4a, sp), a
	pop	a
	ld	a, (0x03, sp)
	xor	a, #0x80
	ldw	(0x04, sp), y
	ld	(0x03, sp), a
	ld	a, (0x49, sp)
	ld	(0x06, sp), a
00116$:
;	../asincosf.c: 96: return r;
	ldw	x, (0x05, sp)
	ldw	y, (0x03, sp)
00117$:
	addw	sp, #89
	ret
	.area CODE
_asincosf_a_1_24:
	.byte #0x00,#0x00,#0x00,#0x00	;  0.000000e+00
	.byte #0x3F,#0x49,#0x0F,#0xDB	;  7.853982e-01
_asincosf_b_1_24:
	.byte #0x3F,#0xC9,#0x0F,#0xDB	;  1.570796e+00
	.byte #0x3F,#0x49,#0x0F,#0xDB	;  7.853982e-01
	.area INITIALIZER
	.area CABS (ABS)
