;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:19 2013
;--------------------------------------------------------
	.module _fslt
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fslt
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
;../_fslt.c:108: char __fslt (float a1, float a2)
;	---------------------------------
; Function __fslt
; ---------------------------------
___fslt_start::
___fslt:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-12
;../_fslt.c:112: fl1.f = a1;
	ld	hl,#0x0004
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0010
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../_fslt.c:113: fl2.f = a2;
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0014
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../_fslt.c:115: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
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
	jr	NZ,00102$
	or	a,d
	jr	NZ,00102$
	cp	a, a
	adc	hl, hl
	jr	NZ,00102$
;../_fslt.c:116: return (0);
	ld	l,#0x00
	jp	00110$
00102$:
;../_fslt.c:118: if (fl1.l<0 && fl2.l<0) {
	ld	hl,#0x0004
	add	hl,sp
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	h,(hl)
	bit	7, h
	jp	Z,00106$
	ld	hl,#0x0000
	add	hl,sp
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	h,(hl)
	bit	7, h
	jp	Z,00106$
;../_fslt.c:119: if (fl2.l < fl1.l)
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0008
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl,#0x0004
	add	hl,sp
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,-4 (ix)
	sub	a, d
	ld	a,-3 (ix)
	sbc	a, e
	ld	a,-2 (ix)
	sbc	a, c
	ld	a,-1 (ix)
	sbc	a, h
	jp	PO, 00134$
	xor	a, #0x80
00134$:
	jp	P,00104$
;../_fslt.c:120: return (1);
	ld	l,#0x01
	jp	00110$
00104$:
;../_fslt.c:121: return (0);
	ld	l,#0x00
	jp	00110$
00106$:
;../_fslt.c:124: if (fl1.l < fl2.l)
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
	ld	h,(hl)
	ld	a,-4 (ix)
	sub	a, d
	ld	a,-3 (ix)
	sbc	a, e
	ld	a,-2 (ix)
	sbc	a, c
	ld	a,-1 (ix)
	sbc	a, h
	jp	PO, 00135$
	xor	a, #0x80
00135$:
	jp	P,00109$
;../_fslt.c:125: return (1);
	ld	l,#0x01
	jr	00110$
00109$:
;../_fslt.c:126: return (0);
	ld	l,#0x00
00110$:
	ld	sp, ix
	pop	ix
	ret
___fslt_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
