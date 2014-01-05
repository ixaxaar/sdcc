;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:22 2013
;--------------------------------------------------------
	.module ceilf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ceilf
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
;../ceilf.c:33: float ceilf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function ceilf
; ---------------------------------
_ceilf_start::
_ceilf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-8
;../ceilf.c:36: r=x;
	ld	hl, 14 (sp)
	push	hl
	ld	hl, 14 (sp)
	push	hl
	call	___fs2slong
	add	sp, #4
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),e
	ld	-5 (ix),d
;../ceilf.c:38: return r;
	ld	hl, 2 (sp)
	push	hl
	ld	hl, 2 (sp)
	push	hl
	call	___slong2fs
	add	sp, #4
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
;../ceilf.c:37: if (r<0)
	bit	7, -5 (ix)
	jr	Z,00102$
;../ceilf.c:38: return r;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	jp	00104$
00102$:
;../ceilf.c:40: return (r+((r<x)?1:0));
	ld	hl, 14 (sp)
	push	hl
	ld	hl, 14 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	-4 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00106$
	ld	-4 (ix),#0x01
	jr	00107$
00106$:
	ld	-4 (ix),#0x00
00107$:
	ld	l,-4 (ix)
	ld	h,#0x00
	ld	a,h
	rla
	sbc	a, a
	ld	e,a
	ld	d,a
	ld	a,-8 (ix)
	add	a, l
	ld	l,a
	ld	a,-7 (ix)
	adc	a, h
	ld	h,a
	ld	a,-6 (ix)
	adc	a, e
	ld	e,a
	ld	a,-5 (ix)
	adc	a, d
	ld	d,a
	push	de
	push	hl
	call	___slong2fs
	add	sp, #4
00104$:
	ld	sp, ix
	pop	ix
	ret
_ceilf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
