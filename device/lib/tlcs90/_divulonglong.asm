;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:23 2013
;--------------------------------------------------------
	.module _divulonglong
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulonglong
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
;../_divulonglong.c:39: _divulonglong (unsigned long long x, unsigned long long y)
;	---------------------------------
; Function _divulonglong
; ---------------------------------
__divulonglong_start::
__divulonglong:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-8
;../_divulonglong.c:41: unsigned long long reste = 0L;
	xor	a, a
	ld	-8 (ix),a
	ld	-7 (ix),a
	ld	-6 (ix),a
	ld	-5 (ix),a
	ld	-4 (ix),a
	ld	-3 (ix),a
	ld	-2 (ix),a
	ld	-1 (ix),a
;../_divulonglong.c:45: do
	ld	d,#0x40
00105$:
;../_divulonglong.c:48: c = MSB_SET(x);
	ld	a,13 (ix)
	rlc	a
	and	a,#0x01
	ld	h,a
;../_divulonglong.c:49: x <<= 1;
	push	af
	pop	af
	sla	6 (ix)
	rl	7 (ix)
	rl	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
	rl	12 (ix)
	rl	13 (ix)
;../_divulonglong.c:50: reste <<= 1;
	push	af
	pop	af
	sla	-8 (ix)
	rl	-7 (ix)
	rl	-6 (ix)
	rl	-5 (ix)
	rl	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
;../_divulonglong.c:51: if (c)
	bit	0,h
	jr	Z,00102$
;../_divulonglong.c:52: reste |= 1L;
	set	0, -8 (ix)
00102$:
;../_divulonglong.c:54: if (reste >= y)
	ld	a,-8 (ix)
	sub	a, 14 (ix)
	ld	a,-7 (ix)
	sbc	a, 15 (ix)
	ld	a,-6 (ix)
	sbc	a, 16 (ix)
	ld	a,-5 (ix)
	sbc	a, 17 (ix)
	ld	a,-4 (ix)
	sbc	a, 18 (ix)
	ld	a,-3 (ix)
	sbc	a, 19 (ix)
	ld	a,-2 (ix)
	sbc	a, 20 (ix)
	ld	a,-1 (ix)
	sbc	a, 21 (ix)
	jp	C,00106$
;../_divulonglong.c:56: reste -= y;
	ld	a,-8 (ix)
	sub	a, 14 (ix)
	ld	-8 (ix),a
	ld	a,-7 (ix)
	sbc	a, 15 (ix)
	ld	-7 (ix),a
	ld	a,-6 (ix)
	sbc	a, 16 (ix)
	ld	-6 (ix),a
	ld	a,-5 (ix)
	sbc	a, 17 (ix)
	ld	-5 (ix),a
	ld	a,-4 (ix)
	sbc	a, 18 (ix)
	ld	-4 (ix),a
	ld	a,-3 (ix)
	sbc	a, 19 (ix)
	ld	-3 (ix),a
	ld	a,-2 (ix)
	sbc	a, 20 (ix)
	ld	-2 (ix),a
	ld	a,-1 (ix)
	sbc	a, 21 (ix)
	ld	-1 (ix),a
;../_divulonglong.c:58: x |= 1L;
	set	0, 6 (ix)
00106$:
;../_divulonglong.c:61: while (--count);
	dec	d
	ld	a,d
	or	a, a
	jp	NZ,00105$
;../_divulonglong.c:62: return x;
	ld	hl, #12
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #14
	add	hl, sp
	ld	bc, #8
	ldir
	ld	sp, ix
	pop	ix
	ret
__divulonglong_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
