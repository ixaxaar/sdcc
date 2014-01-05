;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:23 2013
;--------------------------------------------------------
	.module _divslonglong
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslonglong
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
;../_divslonglong.c:36: _divslonglong (long long numerator, long long denominator)
;	---------------------------------
; Function _divslonglong
; ---------------------------------
__divslonglong_start::
__divslonglong:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-26
;../_divslonglong.c:38: bool numeratorneg = (numerator < 0);
	ld	a,13 (ix)
	rlca
	and	a,#0x01
	ld	-17 (ix),a
;../_divslonglong.c:39: bool denominatorneg = (denominator < 0);
	ld	a,21 (ix)
	rlca
	and	a,#0x01
	ld	-18 (ix),a
;../_divslonglong.c:42: if (numeratorneg)
	bit	0,-17 (ix)
	jp	Z,00102$
;../_divslonglong.c:43: numerator = -numerator;
	xor	a, a
	sub	a, 6 (ix)
	ld	6 (ix),a
	ld	a, #0x00
	sbc	a, 7 (ix)
	ld	7 (ix),a
	ld	a, #0x00
	sbc	a, 8 (ix)
	ld	8 (ix),a
	ld	a, #0x00
	sbc	a, 9 (ix)
	ld	9 (ix),a
	ld	a, #0x00
	sbc	a, 10 (ix)
	ld	10 (ix),a
	ld	a, #0x00
	sbc	a, 11 (ix)
	ld	11 (ix),a
	ld	a, #0x00
	sbc	a, 12 (ix)
	ld	12 (ix),a
	ld	a, #0x00
	sbc	a, 13 (ix)
	ld	13 (ix),a
00102$:
;../_divslonglong.c:44: if (denominatorneg)
	bit	0,-18 (ix)
	jp	Z,00104$
;../_divslonglong.c:45: denominator = -denominator;
	xor	a, a
	sub	a, 14 (ix)
	ld	14 (ix),a
	ld	a, #0x00
	sbc	a, 15 (ix)
	ld	15 (ix),a
	ld	a, #0x00
	sbc	a, 16 (ix)
	ld	16 (ix),a
	ld	a, #0x00
	sbc	a, 17 (ix)
	ld	17 (ix),a
	ld	a, #0x00
	sbc	a, 18 (ix)
	ld	18 (ix),a
	ld	a, #0x00
	sbc	a, 19 (ix)
	ld	19 (ix),a
	ld	a, #0x00
	sbc	a, 20 (ix)
	ld	20 (ix),a
	ld	a, #0x00
	sbc	a, 21 (ix)
	ld	21 (ix),a
00104$:
;../_divslonglong.c:47: d = (unsigned long long)numerator / (unsigned long long)denominator;
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	hl, #32
	add	hl, sp
	ld	bc, #8
	ldir
	ld	hl, #18
	add	hl, sp
	ex	de, hl
	ld	hl, #40
	add	hl, sp
	ld	bc, #8
	ldir
	ld	h,-1 (ix)
	ld	l,-2 (ix)
	push	hl
	ld	h,-3 (ix)
	ld	l,-4 (ix)
	push	hl
	ld	h,-5 (ix)
	ld	l,-6 (ix)
	push	hl
	ld	h,-7 (ix)
	ld	l,-8 (ix)
	push	hl
	ld	h,-9 (ix)
	ld	l,-10 (ix)
	push	hl
	ld	h,-11 (ix)
	ld	l,-12 (ix)
	push	hl
	ld	h,-13 (ix)
	ld	l,-14 (ix)
	push	hl
	ld	h,-15 (ix)
	ld	l,-16 (ix)
	push	hl
	ld	hl,#0x0010
	add	hl, sp
	push	hl
	call	__divulonglong
	add	sp, #18
;../_divslonglong.c:49: return ((numeratorneg ^ denominatorneg) ? -d : d);
	ld	a,-17 (ix)
	xor	a, -18 (ix)
	bit	0,a
	jp	Z,00107$
	xor	a, a
	sub	a, -26 (ix)
	ld	-8 (ix),a
	ld	a, #0x00
	sbc	a, -25 (ix)
	ld	-7 (ix),a
	ld	a, #0x00
	sbc	a, -24 (ix)
	ld	-6 (ix),a
	ld	a, #0x00
	sbc	a, -23 (ix)
	ld	-5 (ix),a
	ld	a, #0x00
	sbc	a, -22 (ix)
	ld	-4 (ix),a
	ld	a, #0x00
	sbc	a, -21 (ix)
	ld	-3 (ix),a
	ld	a, #0x00
	sbc	a, -20 (ix)
	ld	-2 (ix),a
	ld	a, #0x00
	sbc	a, -19 (ix)
	ld	-1 (ix),a
	jr	00108$
00107$:
	ld	hl, #18
	add	hl, sp
	ex	de, hl
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
00108$:
	ld	hl, #30
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #18
	add	hl, sp
	ld	bc, #8
	ldir
	ld	sp, ix
	pop	ix
	ret
__divslonglong_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
