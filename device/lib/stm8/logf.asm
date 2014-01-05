;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:41 2013
;--------------------------------------------------------
	.module logf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
	.globl _logf
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
;	../logf.c: 216: float logf(const float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function logf
;	-----------------------------------------
_logf:
	sub	sp, #50
;	../logf.c: 226: if (x<=0.0)
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x3b, sp)
	pushw	x
	ldw	x, (0x3b, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	ld	(0x22, sp), a
	tnz	(0x22, sp)
	jrne	00102$
;	../logf.c: 228: errno=EDOM;
	mov	_errno+1, #0x21
	clr	_errno+0
;	../logf.c: 229: return 0.0;
	clrw	x
	clrw	y
	jp	00106$
00102$:
;	../logf.c: 231: f=frexpf(x, &n);
	ldw	x, sp
	incw	x
	pushw	x
	ldw	x, (0x39, sp)
	pushw	x
	ldw	x, (0x39, sp)
	pushw	x
	call	_frexpf
	addw	sp, #6
	ldw	(0x15, sp), x
	ldw	(0x13, sp), y
;	../logf.c: 232: znum=f-0.5;
	clrw	x
	pushw	x
	push	#0x00
	push	#0x3f
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
;	../logf.c: 233: if (f>C0)
	push	#0xf3
	push	#0x04
	push	#0x35
	push	#0x3f
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	ld	(0x21, sp), a
	tnz	(0x21, sp)
	jreq	00104$
;	../logf.c: 235: znum-=0.5;
	clrw	x
	pushw	x
	push	#0x00
	push	#0x3f
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
;	../logf.c: 236: zden=(f*0.5)+0.5;
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x00
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x3f
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x1f, sp), x
	jra	00105$
00104$:
;	../logf.c: 240: n--;
	ldw	x, (0x01, sp)
	decw	x
	ldw	(0x1b, sp), x
	ldw	y, (0x1b, sp)
	ldw	(0x01, sp), y
;	../logf.c: 241: zden=znum*0.5+0.5;
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x00
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	ldw	(0x31, sp), x
	ldw	(0x2f, sp), y
	clrw	x
	pushw	x
	push	#0x00
	push	#0x3f
	ldw	x, (0x35, sp)
	pushw	x
	ldw	x, (0x35, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
	ldw	y, (0x09, sp)
	ldw	(0x1f, sp), y
	ldw	y, (0x07, sp)
00105$:
;	../logf.c: 243: z=znum/zden;
	ldw	x, (0x1f, sp)
	pushw	x
	pushw	y
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	ldw	(0x11, sp), x
	ldw	(0x0f, sp), y
;	../logf.c: 244: w=z*z;
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
;	../logf.c: 246: Rz=z+z*(w*A(w)/B(w));
	pushw	x
	pushw	y
	pushw	x
	pushw	y
	push	#0x3d
	push	#0x7e
	push	#0x0d
	push	#0xbf
	call	___fsmul
	addw	sp, #8
	ldw	(0x31, sp), x
	ldw	(0x2f, sp), y
	popw	y
	popw	x
	push	#0x3a
	push	#0x3f
	push	#0xd4
	push	#0xc0
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x31, sp)
	pushw	x
	ldw	x, (0x31, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x19, sp), x
	ldw	(0x17, sp), y
;	../logf.c: 247: xn=n;
	ldw	x, (0x01, sp)
	pushw	x
	call	___sint2fs
	addw	sp, #2
	ldw	(0x05, sp), x
	ldw	(0x03, sp), y
;	../logf.c: 248: return ((xn*C2+Rz)+xn*C1);
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	push	#0x83
	push	#0x80
	push	#0x5e
	push	#0xb9
	call	___fsmul
	addw	sp, #8
	ldw	(0x29, sp), x
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x2d, sp)
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x25, sp), x
	ldw	(0x23, sp), y
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	push	#0x00
	push	#0x80
	push	#0x31
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x29, sp)
	pushw	x
	ldw	x, (0x29, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
00106$:
	addw	sp, #50
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
