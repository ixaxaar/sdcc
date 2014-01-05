;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:23 2013
;--------------------------------------------------------
	.module _divulong
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulong
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
;../_divulong.c:331: _divulong (unsigned long x, unsigned long y)
;	---------------------------------
; Function _divulong
; ---------------------------------
__divulong_start::
__divulong:
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;../_divulong.c:333: unsigned long reste = 0L;
	ld	bc,#0x0000
	ld	de,#0x0000
;../_divulong.c:337: do
	ld	-1 (ix),#0x20
00105$:
;../_divulong.c:340: c = MSB_SET(x);
	ld	a,7 (ix)
	rlc	a
	and	a,#0x01
	ld	h,a
;../_divulong.c:341: x <<= 1;
	push	af
	pop	af
	sla	4 (ix)
	rl	5 (ix)
	rl	6 (ix)
	rl	7 (ix)
;../_divulong.c:342: reste <<= 1;
	sla	b
	rl	c
	rl	e
	rl	d
;../_divulong.c:343: if (c)
	bit	0,h
	jr	Z,00102$
;../_divulong.c:344: reste |= 1L;
	set	0, b
00102$:
;../_divulong.c:346: if (reste >= y)
	ld	a,b
	sub	a, 8 (ix)
	ld	a,c
	sbc	a, 9 (ix)
	ld	a,e
	sbc	a, 10 (ix)
	ld	a,d
	sbc	a, 11 (ix)
	jr	C,00106$
;../_divulong.c:348: reste -= y;
	ld	a,b
	sub	a, 8 (ix)
	ld	b,a
	ld	a,c
	sbc	a, 9 (ix)
	ld	c,a
	ld	a,e
	sbc	a, 10 (ix)
	ld	e,a
	ld	a,d
	sbc	a, 11 (ix)
	ld	d,a
;../_divulong.c:350: x |= 1L;
	set	0, 4 (ix)
00106$:
;../_divulong.c:353: while (--count);
	dec	-1 (ix)
	ld	a,-1 (ix)
	or	a, a
	jp	NZ,00105$
;../_divulong.c:354: return x;
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	e,6 (ix)
	ld	d,7 (ix)
	inc	sp
	pop	ix
	ret
__divulong_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
