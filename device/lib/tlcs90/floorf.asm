;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:22 2013
;--------------------------------------------------------
	.module floorf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _floorf
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
;../floorf.c:33: float floorf (float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function floorf
; ---------------------------------
_floorf_start::
_floorf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-4
;../floorf.c:36: r=x;
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	call	___fs2slong
	add	sp, #4
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
;../floorf.c:38: return (r+((r>x)?-1:0));
	ld	hl, 2 (sp)
	push	hl
	ld	hl, 2 (sp)
	push	hl
	call	___slong2fs
	add	sp, #4
	ld	c,l
	ld	b,h
;../floorf.c:37: if (r<=0)
	xor	a, a
	cp	a, -4 (ix)
	sbc	a, -3 (ix)
	ld	a,#0x00
	sbc	a, -2 (ix)
	ld	a,#0x00
	sbc	a, -1 (ix)
	jp	PO, 00116$
	xor	a, #0x80
00116$:
	jp	M,00102$
;../floorf.c:38: return (r+((r>x)?-1:0));
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	push	de
	push	bc
	call	___fsgt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00106$
	ld	c,#0xFF
	jr	00107$
00106$:
	ld	c,#0x00
00107$:
	ld	a,c
	rla
	sbc	a, a
	ld	h,a
	ld	e,a
	ld	d,a
	ld	a,-4 (ix)
	add	a, c
	ld	l,a
	ld	a,-3 (ix)
	adc	a, h
	ld	h,a
	ld	a,-2 (ix)
	adc	a, e
	ld	e,a
	ld	a,-1 (ix)
	adc	a, d
	ld	d,a
	push	de
	push	hl
	call	___slong2fs
	add	sp, #4
	jr	00104$
00102$:
;../floorf.c:40: return r;
	ld	l,c
	ld	h,b
00104$:
	ld	sp, ix
	pop	ix
	ret
_floorf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
