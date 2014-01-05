;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _strcmp
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp
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
;../_strcmp.c:34: int strcmp (
;	---------------------------------
; Function strcmp
; ---------------------------------
_strcmp_start::
_strcmp:
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;../_strcmp.c:43: const char * src = asrc;
	ld	c,4 (ix)
	ld	b,5 (ix)
;../_strcmp.c:44: const char * dst = adst;
	ld	iy, 7 (sp)
;../_strcmp.c:46: while( ! (*src - *dst) && *dst)
00102$:
	ld	a,(bc)
	ld	d,a
	rla
	sbc	a, a
	ld	e,a
	ld	a, 0 (iy)
	ld	-1 (ix), a
	ld	l, a
	ld	a,-1 (ix)
	rla
	sbc	a, a
	ld	h,a
	ld	a,d
	sub	a, l
	ld	l,a
	ld	a,e
	sbc	a, h
	ld	h,a
	or	a,l
	jr	NZ,00104$
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00104$
;../_strcmp.c:47: ++src, ++dst;
	inc	bc
	inc	iy
	jp	00102$
00104$:
;../_strcmp.c:49: return *src - *dst;
	inc	sp
	pop	ix
	ret
_strcmp_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
