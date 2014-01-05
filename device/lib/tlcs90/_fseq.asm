;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:19 2013
;--------------------------------------------------------
	.module _fseq
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fseq
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
;../_fseq.c:83: __fseq (float a1, float a2)
;	---------------------------------
; Function __fseq
; ---------------------------------
___fseq_start::
___fseq:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-12
;../_fseq.c:87: fl1.f = a1;
	ld	hl,#0x0004
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0010
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../_fseq.c:88: fl2.f = a2;
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0014
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../_fseq.c:90: if (fl1.l == fl2.l)
	ld	hl,#0x0004
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0008
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl,#0x0000
	add	hl,sp
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,-4 (ix)
	sub	a, d
	jr	NZ,00102$
	ld	a,-3 (ix)
	sub	a, e
	jr	NZ,00102$
	ld	a,-2 (ix)
	sub	a, c
	jr	NZ,00102$
	ld	a,-1 (ix)
	sub	a, b
	jr	NZ,00102$
;../_fseq.c:91: return (1);
	ld	l,#0x01
	jp	00105$
00102$:
;../_fseq.c:92: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
	ld	hl,#0x0004
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0008
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl,#0x0000
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,-4 (ix)
	or	a, e
	ld	e,a
	ld	a,-3 (ix)
	or	a, d
	ld	d,a
	ld	a,-2 (ix)
	or	a, c
	ld	l,a
	ld	a,-1 (ix)
	or	a, b
	ld	h,a
	ld	a,e
	or	a,a
	jr	NZ,00104$
	or	a,d
	jr	NZ,00104$
	cp	a, a
	adc	hl, hl
	jr	NZ,00104$
;../_fseq.c:93: return (1);
	ld	l,#0x01
	jr	00105$
00104$:
;../_fseq.c:94: return (0);
	ld	l,#0x00
00105$:
	ld	sp, ix
	pop	ix
	ret
___fseq_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
