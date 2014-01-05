;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:23 2013
;--------------------------------------------------------
	.module _divslong
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslong
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
;../_divslong.c:259: _divslong (long x, long y)
;	---------------------------------
; Function _divslong
; ---------------------------------
__divslong_start::
__divslong:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-6
;../_divslong.c:263: r = (unsigned long)(x < 0 ? -x : x) / (unsigned long)(y < 0 ? -y : y);
	ld	a,7 (ix)
	rlca
	and	a,#0x01
	ld	-6 (ix), a
	or	a, a
	jr	Z,00106$
	xor	a, a
	sub	a, 4 (ix)
	ld	c,a
	ld	a, #0x00
	sbc	a, 5 (ix)
	ld	b,a
	ld	a, #0x00
	sbc	a, 6 (ix)
	ld	e,a
	ld	a, #0x00
	sbc	a, 7 (ix)
	ld	d,a
	jr	00107$
00106$:
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	e,6 (ix)
	ld	d,7 (ix)
00107$:
	ld	a,11 (ix)
	rlca
	and	a,#0x01
	ld	-1 (ix), a
	or	a, a
	jr	Z,00108$
	xor	a, a
	sub	a, 8 (ix)
	ld	-5 (ix),a
	ld	a, #0x00
	sbc	a, 9 (ix)
	ld	-4 (ix),a
	ld	a, #0x00
	sbc	a, 10 (ix)
	ld	-3 (ix),a
	ld	a, #0x00
	sbc	a, 11 (ix)
	ld	-2 (ix),a
	jr	00109$
00108$:
	ld	a,8 (ix)
	ld	-5 (ix),a
	ld	a,9 (ix)
	ld	-4 (ix),a
	ld	a,10 (ix)
	ld	-3 (ix),a
	ld	a,11 (ix)
	ld	-2 (ix),a
00109$:
	ld	hl, 3 (sp)
	push	hl
	ld	hl, 3 (sp)
	push	hl
	push	de
	push	bc
	call	__divulong_rrx_s
	add	sp, #8
;../_divslong.c:264: if ((x < 0) ^ (y < 0))
	ld	a,-6 (ix)
	xor	a,-1 (ix)
	jr	Z,00102$
;../_divslong.c:265: return -r;
	xor	a, a
	sub	a, l
	ld	l,a
	ld	a, #0x00
	sbc	a, h
	ld	h,a
	ld	a, #0x00
	sbc	a, e
	ld	e,a
	ld	a, #0x00
	sbc	a, d
	ld	d,a
;../_divslong.c:267: return r;
00102$:
	ld	sp, ix
	pop	ix
	ret
__divslong_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
