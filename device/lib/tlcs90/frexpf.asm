;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:19 2013
;--------------------------------------------------------
	.module frexpf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
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
;../frexpf.c:34: float frexpf(const float x, int *pw2)
;	---------------------------------
; Function frexpf
; ---------------------------------
_frexpf_start::
_frexpf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-6
;../frexpf.c:39: fl.f=x;
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	hl, #0x000A
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../frexpf.c:41: i  = ( fl.l >> 23) & 0x000000ff;
	ld	hl,#0x0000
	add	hl,sp
	ld	4 (sp), hl
	ld	hl, 4 (sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x17
00103$:
	sra	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00103$
	ld	d,#0x00
	ld	hl,#0x0000
;../frexpf.c:42: i -= 0x7e;
	ld	a,e
	add	a,#0x82
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
	ld	a,l
	adc	a,#0xFF
	ld	a,h
	adc	a,#0xFF
;../frexpf.c:43: *pw2 = i;
	ld	hl, 14 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../frexpf.c:44: fl.l &= 0x807fffff; /* strip all exponent bits */
	ld	hl, 4 (sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	res	7, c
	ld	a,b
	and	a, #0x80
	ld	b,a
	ld	hl, 4 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../frexpf.c:45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	ld	hl, 4 (sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	a, (hl)
	or	a, #0x3F
	ld	b,a
	ld	hl, 4 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../frexpf.c:46: return(fl.f);
	ld	hl,#0x0000
	add	hl,sp
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,b
	ld	h,c
	ld	sp, ix
	pop	ix
	ret
_frexpf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
