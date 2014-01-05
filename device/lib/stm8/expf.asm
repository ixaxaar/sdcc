;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:39 2013
;--------------------------------------------------------
	.module expf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
	.globl _expf
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
;	../expf.c: 331: float expf(const float x)
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
_expf:
	sub	sp, #48
;	../expf.c: 337: if(x>=0.0)
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x39, sp)
	pushw	x
	ldw	x, (0x39, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jrne	00102$
;	../expf.c: 338: { y=x;  sign=0; }
	ldw	y, (0x35, sp)
	ldw	(0x04, sp), y
	ldw	y, (0x33, sp)
	ldw	(0x02, sp), y
	clr	(0x01, sp)
	jra	00103$
00102$:
;	../expf.c: 340: { y=-x; sign=1; }
	ld	a, (0x34, sp)
	ld	(0x20, sp), a
	ldw	y, (0x35, sp)
	ld	a, (0x33, sp)
	xor	a, #0x80
	ldw	(0x04, sp), y
	ld	(0x02, sp), a
	ld	a, (0x20, sp)
	ld	(0x03, sp), a
	ld	a, #0x01
	ld	(0x01, sp), a
00103$:
;	../expf.c: 342: if(y<EXPEPS) return 1.0;
	push	#0x95
	push	#0xbf
	push	#0xd6
	push	#0x33
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	ld	(0x1a, sp), a
	tnz	(0x1a, sp)
	jreq	00105$
	clrw	x
	ldw	y, #0x3f80
	jp	00118$
00105$:
;	../expf.c: 344: if(y>BIGX)
	push	#0x18
	push	#0x72
	push	#0xb1
	push	#0x42
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	tnz	a
	jreq	00110$
;	../expf.c: 346: if(sign)
	tnz	(0x01, sp)
	jreq	00107$
;	../expf.c: 348: errno=ERANGE;
	mov	_errno+1, #0x22
	clr	_errno+0
;	../expf.c: 350: ;
	ldw	x, #0xffff
	ldw	y, #0x7f7f
	jp	00118$
00107$:
;	../expf.c: 354: return 0.0;
	clrw	x
	clrw	y
	jp	00118$
00110$:
;	../expf.c: 358: z=y*K1;
	ldw	x, (0x04, sp)
	pushw	x
	ldw	x, (0x04, sp)
	pushw	x
	push	#0x3b
	push	#0xaa
	push	#0xb8
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	ldw	(0x08, sp), x
	ldw	(0x06, sp), y
	ldw	y, (0x08, sp)
	ldw	(0x18, sp), y
	ldw	y, (0x06, sp)
	ldw	(0x16, sp), y
;	../expf.c: 359: n=z;
	ldw	x, (0x18, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
	call	___fs2sint
	addw	sp, #4
	ldw	(0x2f, sp), x
;	../expf.c: 361: if(n<0) --n;
	ldw	x, (0x2f, sp)
	cpw	x, #0x0000
	jrsge	00112$
	ldw	x, (0x2f, sp)
	decw	x
	ldw	(0x2f, sp), x
00112$:
;	../expf.c: 362: if(z-n>=0.5) ++n;
	ldw	x, (0x2f, sp)
	pushw	x
	call	___sint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	ldw	x, (0x1c, sp)
	pushw	x
	ldw	x, (0x1c, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x3f
	pushw	x
	pushw	y
	call	___fslt
	addw	sp, #8
	tnz	a
	jrne	00114$
	ldw	x, (0x2f, sp)
	incw	x
	ldw	(0x2f, sp), x
00114$:
;	../expf.c: 363: xn=n;
	ldw	x, (0x2f, sp)
	pushw	x
	call	___sint2fs
	addw	sp, #2
	ldw	(0x14, sp), x
	ldw	(0x12, sp), y
;	../expf.c: 364: g=((y-xn*C1))-xn*C2;
	ldw	x, (0x14, sp)
	pushw	x
	ldw	x, (0x14, sp)
	pushw	x
	push	#0x00
	push	#0x80
	push	#0x31
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
	ldw	(0x25, sp), x
	ldw	(0x23, sp), y
	ldw	x, (0x14, sp)
	pushw	x
	ldw	x, (0x14, sp)
	pushw	x
	push	#0x83
	push	#0x80
	push	#0x5e
	push	#0xb9
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
	ldw	(0x10, sp), x
	ldw	(0x0e, sp), y
;	../expf.c: 365: z=g*g;
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x14, sp)
	pushw	x
	ldw	x, (0x14, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ldw	(0x08, sp), x
	ldw	(0x06, sp), y
;	../expf.c: 366: r=P(z)*g;
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	push	#0x08
	push	#0x53
	push	#0x88
	push	#0x3b
	call	___fsmul
	addw	sp, #8
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x3e
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x1d, sp), x
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x21, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	ldw	(0x2d, sp), x
	ldw	(0x2b, sp), y
;	../expf.c: 367: r=0.5+(r/(Q(z)-r));
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	push	#0x5b
	push	#0xbf
	push	#0x4c
	push	#0x3d
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
	ldw	(0x29, sp), x
	ldw	x, (0x2d, sp)
	pushw	x
	ldw	x, (0x2d, sp)
	pushw	x
	ldw	x, (0x2d, sp)
	pushw	x
	pushw	y
	call	___fssub
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x31, sp)
	pushw	x
	ldw	x, (0x31, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x3f
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x0c, sp), x
;	../expf.c: 369: n++;
	ldw	x, (0x2f, sp)
	incw	x
;	../expf.c: 370: z=ldexpf(r, n);
	pushw	x
	ldw	x, (0x0e, sp)
	pushw	x
	pushw	y
	call	_ldexpf
	addw	sp, #6
;	../expf.c: 371: if(sign)
	tnz	(0x01, sp)
	jreq	00116$
;	../expf.c: 372: return 1.0/z;
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	call	___fsdiv
	addw	sp, #8
;	../expf.c: 374: return z;
00116$:
00118$:
	addw	sp, #48
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
