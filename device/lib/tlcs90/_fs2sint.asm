;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:17 2013
;--------------------------------------------------------
	.module _fs2sint
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slong
	.globl ___fs2sint
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
;../_fs2sint.c:81: signed int __fs2sint (float f)
;	---------------------------------
; Function __fs2sint
; ---------------------------------
___fs2sint_start::
___fs2sint:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_fs2sint.c:83: signed long sl=__fs2slong(f);
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	___fs2slong
	add	sp, #4
	ld	c,l
	ld	b,h
;../_fs2sint.c:84: if (sl>=INT_MAX)
	ld	a,c
	sub	a, #0xFF
	ld	a,b
	sbc	a, #0x7F
	ld	a,e
	sbc	a, #0x00
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00102$
;../_fs2sint.c:85: return INT_MAX;
	ld	hl,#0x7FFF
	jr	00105$
00102$:
;../_fs2sint.c:86: if (sl<=INT_MIN)
	xor	a, a
	cp	a, c
	ld	a,#0x80
	sbc	a, b
	ld	a,#0xFF
	sbc	a, e
	ld	a,#0xFF
	sbc	a, d
	jp	PO, 00115$
	xor	a, #0x80
00115$:
	jp	M,00104$
;../_fs2sint.c:87: return -INT_MIN;
	ld	hl,#0x8000
	jr	00105$
00104$:
;../_fs2sint.c:88: return sl;
	ld	l, c
	ld	h, b
00105$:
	pop	ix
	ret
___fs2sint_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
