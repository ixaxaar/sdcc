;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:45 2013
;--------------------------------------------------------
	.module atan2f
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
	.globl _atan2f
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
;	../atan2f.c: 34: float atan2f(const float x, const float y)
;	-----------------------------------------
;	 function atan2f
;	-----------------------------------------
_atan2f:
	sub	sp, #30
;	../atan2f.c: 38: if ((x==0.0) && (y==0.0))
	ldw	x, (0x23, sp)
	jrne	00102$
	ldw	x, (0x21, sp)
	jrne	00102$
	ldw	x, (0x27, sp)
	jrne	00102$
	ldw	x, (0x25, sp)
	jrne	00102$
;	../atan2f.c: 40: errno=EDOM;
	mov	_errno+1, #0x21
	clr	_errno+0
;	../atan2f.c: 41: return 0.0;
	clrw	x
	clrw	y
	jp	00109$
00102$:
;	../atan2f.c: 44: if(fabsf(y)>=fabsf(x))
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	ldw	(0x15, sp), x
	ldw	(0x13, sp), y
	ldw	x, (0x23, sp)
	pushw	x
	ldw	x, (0x23, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	ldw	(0x11, sp), x
	ldw	(0x0f, sp), y
;	../atan2f.c: 47: if(y<0.0) r+=(x>=0?PI:-PI);
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
;	../atan2f.c: 44: if(fabsf(y)>=fabsf(x))
	call	___fslt
	addw	sp, #8
	ld	(0x06, sp), a
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	ld	(0x05, sp), a
	tnz	(0x05, sp)
	jreq	00143$
	jp	00107$
00143$:
;	../atan2f.c: 46: r=atanf(x/y);
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	call	_atanf
	addw	sp, #4
	ldw	(0x1d, sp), x
	ldw	(0x1b, sp), y
;	../atan2f.c: 47: if(y<0.0) r+=(x>=0?PI:-PI);
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x2b, sp)
	pushw	x
	ldw	x, (0x2b, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jrne	00144$
	jp	00108$
00144$:
	ld	a, (0x06, sp)
	sub	a, #0x01
	clr	a
	rlc	a
	tnz	a
	jreq	00111$
	ldw	x, #0x0fdb
	ldw	(0x19, sp), x
	ldw	x, #0x4049
	ldw	(0x17, sp), x
	jra	00112$
00111$:
	ldw	x, #0x0fdb
	ldw	(0x19, sp), x
	ldw	x, #0xc049
	ldw	(0x17, sp), x
00112$:
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x21, sp)
	pushw	x
	ldw	x, (0x21, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x1d, sp), x
	ldw	(0x1b, sp), y
	jra	00108$
00107$:
;	../atan2f.c: 51: r=-atanf(y/x);
	ldw	x, (0x23, sp)
	pushw	x
	ldw	x, (0x23, sp)
	pushw	x
	ldw	x, (0x2b, sp)
	pushw	x
	ldw	x, (0x2b, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	call	_atanf
	addw	sp, #4
	exgw	x, y
	push	a
	ld	a, xh
	xor	a, #0x80
	ld	xh, a
	pop	a
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
;	../atan2f.c: 52: r+=(x<0.0?-HALF_PI:HALF_PI);
	tnz	(0x06, sp)
	jreq	00113$
	ldw	x, #0x0fdb
	ldw	(0x0d, sp), x
	ldw	x, #0xbfc9
	ldw	(0x0b, sp), x
	jra	00114$
00113$:
	ldw	x, #0x0fdb
	ldw	(0x0d, sp), x
	ldw	x, #0x3fc9
	ldw	(0x0b, sp), x
00114$:
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x09, sp), x
	ldw	(0x1b, sp), y
	ldw	y, (0x09, sp)
	ldw	(0x1d, sp), y
00108$:
;	../atan2f.c: 54: return r;
	ldw	x, (0x1d, sp)
	ldw	y, (0x1b, sp)
00109$:
	addw	sp, #30
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
