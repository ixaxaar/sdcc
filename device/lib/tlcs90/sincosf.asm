;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:20 2013
;--------------------------------------------------------
	.module sincosf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _fabsf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;../sincosf.c:50: float sincosf(const float x, const bool iscos)
;	---------------------------------
; Function sincosf
; ---------------------------------
_sincosf_start::
_sincosf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-28
;../sincosf.c:56: if(iscos)
	bit	0,8 (ix)
	jp	Z,00105$
;../sincosf.c:58: y=fabsf(x)+HALF_PI;
	ld	hl, 34 (sp)
	push	hl
	ld	hl, 34 (sp)
	push	hl
	call	_fabsf
	add	sp, #4
	ld	c,l
	ld	b,h
	ld	hl,#0x3FC9
	push	hl
	ld	hl,#0x0FDB
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-5 (ix),l
	ld	-4 (ix),h
	ld	-3 (ix),e
	ld	-2 (ix),d
;../sincosf.c:59: sign=0;
	ld	-28 (ix),#0x00
	jp	00106$
00105$:
;../sincosf.c:63: if(x<0.0)
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 38 (sp)
	push	hl
	ld	hl, 38 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00102$
;../sincosf.c:64: { y=-x; sign=1; }
	ld	a,7 (ix)
	xor	a,#0x80
	ld	-2 (ix),a
	ld	a,4 (ix)
	ld	-5 (ix),a
	ld	a,5 (ix)
	ld	-4 (ix),a
	ld	a,6 (ix)
	ld	-3 (ix),a
	ld	-28 (ix),#0x01
	jr	00106$
00102$:
;../sincosf.c:66: { y=x; sign=0; }
	ld	hl, #23
	add	hl, sp
	ex	de, hl
	ld	hl, #32
	add	hl, sp
	ld	bc, #4
	ldir
	ld	-28 (ix),#0x00
00106$:
;../sincosf.c:69: if(y>YMAX)
	ld	hl,#0x4649
	push	hl
	ld	hl,#0x0C00
	push	hl
	ld	hl, 29 (sp)
	push	hl
	ld	hl, 29 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	-1 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00108$
;../sincosf.c:71: errno=ERANGE;
	ld	hl,#_errno + 0
	ld	(hl), #0x22
	ld	hl,#_errno + 1
	ld	(hl), #0x00
;../sincosf.c:72: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00115$
00108$:
;../sincosf.c:76: N=((y*iPI)+0.5); /*y is positive*/
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 25 (sp)
	push	hl
	ld	hl,#0x3EA2
	push	hl
	ld	hl,#0xF983
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-2 (ix),d
	ld	-3 (ix),e
	ld	-4 (ix),h
	ld	-5 (ix),l
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 29 (sp)
	push	hl
	ld	hl, 29 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-2 (ix),d
	ld	-3 (ix),e
	ld	-4 (ix),h
	ld	-5 (ix),l
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 25 (sp)
	push	hl
	call	___fs2sint
	add	sp, #4
	ld	-26 (ix),h
	ld	-27 (ix),l
	ex	de, hl
	ld	hl, 1 (sp)
	ex	de, hl
;../sincosf.c:79: if(N&1) sign=!sign;
	bit	0, e
	jr	Z,00110$
	ld	a,-28 (ix)
	xor	a, #0x01
	ld	-28 (ix),a
00110$:
;../sincosf.c:81: XN=N;
	push	de
	call	___sint2fs
	add	sp, #2
	ld	-22 (ix),d
	ld	-23 (ix),e
	ld	-24 (ix),h
	ld	-25 (ix),l
;../sincosf.c:83: if(iscos) XN-=0.5;
	bit	0,8 (ix)
	jr	Z,00112$
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-25 (ix),l
	ld	-24 (ix),h
	ld	-23 (ix),e
	ld	-22 (ix),d
00112$:
;../sincosf.c:85: y=fabsf(x);
	ld	hl, 34 (sp)
	push	hl
	ld	hl, 34 (sp)
	push	hl
	call	_fabsf
	add	sp, #4
	ld	-13 (ix),l
	ld	-12 (ix),h
	ld	-11 (ix),e
	ld	-10 (ix),d
;../sincosf.c:86: r=(int)y;
	ld	hl, 17 (sp)
	push	hl
	ld	hl, 17 (sp)
	push	hl
	call	___fs2sint
	add	sp, #4
	push	hl
	call	___sint2fs
	add	sp, #2
	ld	-5 (ix),l
	ld	-4 (ix),h
	ld	-3 (ix),e
	ld	-2 (ix),d
;../sincosf.c:87: g=y-r;
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 21 (sp)
	push	hl
	ld	hl, 21 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-9 (ix),l
	ld	-8 (ix),h
	ld	-7 (ix),e
	ld	-6 (ix),d
;../sincosf.c:88: f=((r-XN*C1)+g)-XN*C2;
	ld	hl, 5 (sp)
	push	hl
	ld	hl, 5 (sp)
	push	hl
	ld	hl,#0x4049
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 29 (sp)
	push	hl
	ld	hl, 29 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 21 (sp)
	push	hl
	ld	hl, 21 (sp)
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	hl, 5 (sp)
	push	hl
	ld	hl, 5 (sp)
	push	hl
	ld	hl,#0x3A7D
	push	hl
	ld	hl,#0xAA22
	push	hl
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 25 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-17 (ix),l
	ld	-16 (ix),h
	ld	-15 (ix),e
	ld	-14 (ix),d
;../sincosf.c:90: g=f*f;
	ld	hl, 13 (sp)
	push	hl
	ld	hl, 13 (sp)
	push	hl
	ld	hl, 17 (sp)
	push	hl
	ld	hl, 17 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-21 (ix),l
	ld	-20 (ix),h
	ld	-19 (ix),e
	ld	-18 (ix),d
;../sincosf.c:91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	ld	hl,#0x337F
	push	hl
	ld	hl,#0xFFF3
	push	hl
	ld	hl, 13 (sp)
	push	hl
	ld	hl, 13 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a,l
	or	a, a
	jp	Z,00114$
;../sincosf.c:93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	ld	hl,#0x362E
	push	hl
	ld	hl,#0x9C5B
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0xB94F
	push	hl
	ld	hl,#0xB222
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3C08
	push	hl
	ld	hl,#0x873E
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0xBE2A
	push	hl
	ld	hl,#0xAAA4
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ex	de, hl
;../sincosf.c:94: f+=f*r;
	push	hl
	push	de
	ld	hl, 17 (sp)
	push	hl
	ld	hl, 17 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 17 (sp)
	push	hl
	ld	hl, 17 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-17 (ix),l
	ld	-16 (ix),h
	ld	-15 (ix),e
	ld	-14 (ix),d
00114$:
;../sincosf.c:96: return (sign?-f:f);
	bit	0,-28 (ix)
	jr	Z,00117$
	ld	a,-14 (ix)
	xor	a,#0x80
	ld	d,a
	ld	c,-17 (ix)
	ld	b,-16 (ix)
	ld	e,-15 (ix)
	jr	00118$
00117$:
	ld	c,-17 (ix)
	ld	b,-16 (ix)
	ld	e,-15 (ix)
	ld	d,-14 (ix)
00118$:
	ld	l,c
	ld	h,b
00115$:
	ld	sp, ix
	pop	ix
	ret
_sincosf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
