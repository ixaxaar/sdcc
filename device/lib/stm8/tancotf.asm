;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:42 2013
;--------------------------------------------------------
	.module tancotf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
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
;	../tancotf.c: 53: float tancotf(const float x, const bool iscotan)
;	-----------------------------------------
;	 function tancotf
;	-----------------------------------------
_tancotf:
	sub	sp, #67
;	../tancotf.c: 58: if (fabsf(x) > YMAX)
	ldw	x, (0x48, sp)
	pushw	x
	ldw	x, (0x48, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	push	#0x00
	push	#0x08
	push	#0xc9
	push	#0x45
	pushw	x
	pushw	y
	call	___fsgt
	addw	sp, #8
	ld	(0x43, sp), a
	tnz	(0x43, sp)
	jreq	00102$
;	../tancotf.c: 60: errno = ERANGE;
	mov	_errno+1, #0x22
	clr	_errno+0
;	../tancotf.c: 61: return 0.0;
	clrw	x
	clrw	y
	jp	00115$
00102$:
;	../tancotf.c: 65: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
	ldw	x, (0x48, sp)
	pushw	x
	ldw	x, (0x48, sp)
	pushw	x
	push	#0x83
	push	#0xf9
	push	#0x22
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	ldw	(0x35, sp), x
	ldw	(0x33, sp), y
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x4c, sp)
	pushw	x
	ldw	x, (0x4c, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	tnz	a
	jreq	00117$
	clrw	x
	ldw	(0x39, sp), x
	ldw	x, #0x3f00
	ldw	(0x37, sp), x
	jra	00118$
00117$:
	clrw	x
	ldw	(0x39, sp), x
	ldw	x, #0xbf00
	ldw	(0x37, sp), x
00118$:
	ldw	x, (0x39, sp)
	pushw	x
	ldw	x, (0x39, sp)
	pushw	x
	ldw	x, (0x39, sp)
	pushw	x
	ldw	x, (0x39, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2sint
	addw	sp, #4
	ldw	(0x01, sp), x
;	../tancotf.c: 66: xn=n;
	ldw	x, (0x01, sp)
	pushw	x
	call	___sint2fs
	addw	sp, #2
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
;	../tancotf.c: 68: xnum=(int)x;
	ldw	x, (0x48, sp)
	pushw	x
	ldw	x, (0x48, sp)
	pushw	x
	call	___fs2sint
	addw	sp, #4
	pushw	x
	call	___sint2fs
	addw	sp, #2
	ldw	(0x31, sp), x
	ldw	(0x2f, sp), y
;	../tancotf.c: 69: xden=x-xnum;
	ldw	x, (0x31, sp)
	pushw	x
	ldw	x, (0x31, sp)
	pushw	x
	ldw	x, (0x4c, sp)
	pushw	x
	ldw	x, (0x4c, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
	ldw	(0x2d, sp), x
	ldw	(0x2b, sp), y
;	../tancotf.c: 70: f=((xnum-xn*C1)+xden)-xn*C2;
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0xc9
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x35, sp)
	pushw	x
	ldw	x, (0x35, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
	ldw	(0x29, sp), x
	ldw	x, (0x2d, sp)
	pushw	x
	ldw	x, (0x2d, sp)
	pushw	x
	ldw	x, (0x2d, sp)
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x25, sp), x
	ldw	(0x23, sp), y
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	push	#0x22
	push	#0xaa
	push	#0xfd
	push	#0x39
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x29, sp)
	pushw	x
	ldw	x, (0x29, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
	ldw	(0x15, sp), x
	ldw	(0x13, sp), y
;	../tancotf.c: 72: if (fabsf(f) < EPS)
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x39
	pushw	x
	pushw	y
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00104$
;	../tancotf.c: 74: xnum = f;
	ldw	y, (0x15, sp)
	ldw	(0x09, sp), y
	ldw	y, (0x13, sp)
	ldw	(0x07, sp), y
;	../tancotf.c: 75: xden = 1.0;
	clrw	x
	ldw	(0x05, sp), x
	ldw	x, #0x3f80
	ldw	(0x03, sp), x
	jp	00105$
00104$:
;	../tancotf.c: 79: g = f*f;
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ld	a, xl
	ld	(0x12, sp), a
	rlwa	x
	ld	(0x11, sp), a
	rrwa	x
	ldw	(0x0f, sp), y
;	../tancotf.c: 80: xnum = P(f,g);
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	push	#0xb8
	push	#0x33
	push	#0xc4
	push	#0xbd
	call	___fsmul
	addw	sp, #8
	ldw	(0x21, sp), x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x25, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	ldw	(0x41, sp), x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x45, sp)
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
;	../tancotf.c: 81: xden = Q(g);
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	push	#0x75
	push	#0x33
	push	#0x1f
	push	#0x3c
	call	___fsmul
	addw	sp, #8
	push	#0xaf
	push	#0xb7
	push	#0xdb
	push	#0xbe
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x3d, sp), x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x41, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x3f
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x05, sp), x
	ldw	(0x03, sp), y
00105$:
;	../tancotf.c: 84: if(n&1)
	ld	a, (0x02, sp)
	and	a, #0x01
	ld	xh, a
	clr	a
	ld	xl, a
	tnzw	x
	jreq	00113$
;	../tancotf.c: 87: if(iscotan) return (-xnum/xden);
	tnz	(0x4a, sp)
	jreq	00107$
	ld	a, (0x08, sp)
	ld	(0x1c, sp), a
	ldw	y, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	xor	a, #0x80
	ld	(0x1c, sp), a
	pop	a
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	pushw	y
	ldw	x, (0x21, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	jra	00115$
00107$:
;	../tancotf.c: 88: else return (-xden/xnum);
	ld	a, (0x04, sp)
	ld	(0x18, sp), a
	ldw	y, (0x05, sp)
	push	a
	ld	a, (0x04, sp)
	xor	a, #0x80
	ld	(0x18, sp), a
	pop	a
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	pushw	y
	ldw	x, (0x1d, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	jra	00115$
00113$:
;	../tancotf.c: 92: if(iscotan) return (xden/xnum);
	tnz	(0x4a, sp)
	jreq	00110$
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	jra	00115$
00110$:
;	../tancotf.c: 93: else return (xnum/xden);
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
00115$:
	addw	sp, #67
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
