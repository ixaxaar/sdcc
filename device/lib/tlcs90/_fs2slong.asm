;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:17 2013
;--------------------------------------------------------
	.module _fs2slong
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2slong
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
;../_fs2slong.c:108: signed long __fs2slong (float f)
;	---------------------------------
; Function __fs2slong
; ---------------------------------
___fs2slong_start::
___fs2slong:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_fs2slong.c:111: if (!f)
	ld	a,7 (ix)
	res	7, a
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a,4 (ix)
	jr	NZ,00102$
;../_fs2slong.c:112: return 0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00106$
00102$:
;../_fs2slong.c:114: if (f<0) {
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,l
	or	a, a
	jp	Z,00104$
;../_fs2slong.c:115: return -__fs2ulong(-f);
	ld	a,7 (ix)
	xor	a,#0x80
	ld	d,a
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	e,6 (ix)
	push	de
	push	hl
	call	___fs2ulong
	add	sp, #4
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
	jr	00106$
00104$:
;../_fs2slong.c:117: return __fs2ulong(f);
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	___fs2ulong
	add	sp, #4
00106$:
	pop	ix
	ret
___fs2slong_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
