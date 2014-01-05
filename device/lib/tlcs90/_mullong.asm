;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:23 2013
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong
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
;../_mullong.c:734: _mullong (long a, long b)
;	---------------------------------
; Function _mullong
; ---------------------------------
__mullong_start::
__mullong:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-14
;../_mullong.c:738: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
	ld	hl,#0x0000
	add	hl,sp
	ld	12 (sp), hl
	ex	de, hl
	ld	hl, 12 (sp)
	ex	de, hl
	inc	de
	inc	de
	ld	hl,#0x0012
	add	hl,sp
	ld	10 (sp), hl
	ld	hl, 10 (sp)
	ld	c,(hl)
	ld	hl,#0x0016
	add	hl,sp
	ld	4 (sp), hl
	ld	hl, 4 (sp)
	inc	hl
	inc	hl
	ld	a,(hl)
	push	de
	ld	e,a
	ld	h,c
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00103$:
	add	hl,hl
	jr	NC,00104$
	add	hl,de
00104$:
	djnz	00103$
	pop	de
	ld	c,l
	ld	b,h
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;../_mullong.c:739: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
	ld	hl, 10 (sp)
	ld	e,(hl)
	ld	hl, 4 (sp)
	ld	h, (hl)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00105$:
	add	hl,hl
	jr	NC,00106$
	add	hl,de
00106$:
	djnz	00105$
	ex	de,hl
	ld	hl, 12 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_mullong.c:740: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	ld	hl,#0x0003
	add	hl,sp
	ld	12 (sp), hl
	ld	hl, 12 (sp)
	ld	c,(hl)
	ld	hl, 10 (sp)
	inc	hl
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	hl, 4 (sp)
	ld	h,(hl)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00107$:
	add	hl,hl
	jr	NC,00108$
	add	hl,de
00108$:
	djnz	00107$
	ld	a,c
	add	a, l
	ld	hl, 12 (sp)
	ld	(hl),a
;../_mullong.c:741: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	ld	hl, 12 (sp)
	ld	c,(hl)
	ld	hl, 10 (sp)
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	hl, 4 (sp)
	inc	hl
	ld	h,(hl)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00109$:
	add	hl,hl
	jr	NC,00110$
	add	hl,de
00110$:
	djnz	00109$
	ld	a,c
	add	a, l
	ld	hl, 12 (sp)
	ld	(hl),a
;../_mullong.c:742: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
	ld	hl,#0x0002
	add	hl,sp
	ld	12 (sp), hl
	ld	hl, 12 (sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl, 10 (sp)
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	hl, 4 (sp)
	ld	h,(hl)
	push	bc
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00111$:
	add	hl,hl
	jr	NC,00112$
	add	hl,de
00112$:
	djnz	00111$
	pop	bc
	add	hl,bc
	ld	d,l
	ld	e,h
	ld	hl, 12 (sp)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_mullong.c:744: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
	ld	hl, 12 (sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl, 10 (sp)
	inc	hl
	ld	e,(hl)
	ld	hl, 4 (sp)
	inc	hl
	ld	h,(hl)
	push	bc
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00113$:
	add	hl,hl
	jr	NC,00114$
	add	hl,de
00114$:
	djnz	00113$
	pop	bc
	add	hl,bc
	ld	d,l
	ld	e,h
	ld	hl, 12 (sp)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_mullong.c:746: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
	ld	hl, 10 (sp)
	inc	hl
	inc	hl
	inc	hl
	ld	12 (sp), hl
	ld	hl, 10 (sp)
	inc	hl
	ld	e,(hl)
	ld	hl, 4 (sp)
	inc	hl
	inc	hl
	ld	h,(hl)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00115$:
	add	hl,hl
	jr	NC,00116$
	add	hl,de
00116$:
	djnz	00115$
	ld	d,l
	ld	hl, 12 (sp)
	ld	(hl),d
;../_mullong.c:747: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
	ld	hl, 10 (sp)
	inc	hl
	ld	12 (sp), hl
	ld	hl, 10 (sp)
	inc	hl
	ld	e,(hl)
	ld	hl, 4 (sp)
	ld	h,(hl)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00117$:
	add	hl,hl
	jr	NC,00118$
	add	hl,de
00118$:
	djnz	00117$
	ex	de,hl
	ld	hl, 12 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_mullong.c:749: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
	ld	hl, 4 (sp)
	inc	hl
	inc	hl
	inc	hl
	ld	12 (sp), hl
	ld	hl, 10 (sp)
	ld	e,(hl)
	ld	hl, 4 (sp)
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	h,a
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00119$:
	add	hl,hl
	jr	NC,00120$
	add	hl,de
00120$:
	djnz	00119$
	ld	d,l
	ld	hl, 12 (sp)
	ld	(hl),d
;../_mullong.c:750: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
	ld	hl, 4 (sp)
	inc	hl
	ld	12 (sp), hl
	ld	hl, 10 (sp)
	ld	e,(hl)
	ld	hl, 4 (sp)
	inc	hl
	ld	h,(hl)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00121$:
	add	hl,hl
	jr	NC,00122$
	add	hl,de
00122$:
	djnz	00121$
	ex	de,hl
	ld	hl, 12 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_mullong.c:752: bcast(b)->bi.b0 = 0;                                // B
	ld	hl, 4 (sp)
	ld	(hl),#0x00
;../_mullong.c:753: bcast(a)->bi.b0 = 0;                                // C
	ld	hl, 10 (sp)
	ld	(hl),#0x00
;../_mullong.c:754: t.l += a;
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	push	de
	ld	hl, #0x0008
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
	ld	h,4 (ix)
	ld	l,5 (ix)
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	a,-8 (ix)
	add	a, h
	ld	-8 (ix),a
	ld	a,-7 (ix)
	adc	a, l
	ld	-7 (ix),a
	ld	a,-6 (ix)
	adc	a, c
	ld	-6 (ix),a
	ld	a,-5 (ix)
	adc	a, b
	ld	-5 (ix),a
	push	de
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../_mullong.c:756: return t.l + b;
	pop	hl
	ld	a,(hl)
	inc	hl
	ld	a,(hl)
	inc	hl
	ld	a,(hl)
	inc	hl
	ld	a,(hl)
	ld	l,8 (ix)
	ld	h,9 (ix)
	ld	e,10 (ix)
	ld	d,11 (ix)
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
	ld	sp, ix
	pop	ix
	ret
__mullong_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
