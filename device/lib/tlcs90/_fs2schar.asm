;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:17 2013
;--------------------------------------------------------
	.module _fs2schar
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slong
	.globl ___fs2schar
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
;../_fs2schar.c:87: signed char __fs2schar (float f)
;	---------------------------------
; Function __fs2schar
; ---------------------------------
___fs2schar_start::
___fs2schar:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_fs2schar.c:89: signed long sl=__fs2slong(f);
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	___fs2slong
	add	sp, #4
	ld	c,l
	ld	b,h
;../_fs2schar.c:90: if (sl>=SCHAR_MAX)
	ld	a,c
	sub	a, #0x7F
	ld	a,b
	sbc	a, #0x00
	ld	a,e
	sbc	a, #0x00
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00102$
;../_fs2schar.c:91: return SCHAR_MAX;
	ld	l,#0x7F
	jr	00105$
00102$:
;../_fs2schar.c:92: if (sl<=SCHAR_MIN)
	ld	a,#0x80
	cp	a, c
	ld	a,#0xFF
	sbc	a, b
	ld	a,#0xFF
	sbc	a, e
	ld	a,#0xFF
	sbc	a, d
	jp	PO, 00115$
	xor	a, #0x80
00115$:
	jp	M,00104$
;../_fs2schar.c:93: return -SCHAR_MIN;
	ld	l,#0x80
	jr	00105$
00104$:
;../_fs2schar.c:94: return sl;
	ld	l,c
00105$:
	pop	ix
	ret
___fs2schar_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
