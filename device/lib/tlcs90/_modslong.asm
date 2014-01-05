;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:23 2013
;--------------------------------------------------------
	.module _modslong
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modslong
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
;../_modslong.c:259: _modslong (long a, long b)
;	---------------------------------
; Function _modslong
; ---------------------------------
__modslong_start::
__modslong:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-5
;../_modslong.c:263: r = (unsigned long)(a < 0 ? -a : a) % (unsigned long)(b < 0 ? -b : b);
	ld	a,7 (ix)
	rlca
	and	a,#0x01
	ld	-5 (ix), a
	or	a, a
	jr	Z,00106$
	xor	a, a
	sub	a, 4 (ix)
	ld	l,a
	ld	a, #0x00
	sbc	a, 5 (ix)
	ld	h,a
	ld	a, #0x00
	sbc	a, 6 (ix)
	ld	e,a
	ld	a, #0x00
	sbc	a, 7 (ix)
	ld	d,a
	jr	00107$
00106$:
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	e,6 (ix)
	ld	d,7 (ix)
00107$:
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
	bit	7, 11 (ix)
	jr	Z,00108$
	xor	a, a
	sub	a, 8 (ix)
	ld	c,a
	ld	a, #0x00
	sbc	a, 9 (ix)
	ld	b,a
	ld	a, #0x00
	sbc	a, 10 (ix)
	ld	l,a
	ld	a, #0x00
	sbc	a, 11 (ix)
	ld	h,a
	jr	00109$
00108$:
	ld	c,8 (ix)
	ld	b,9 (ix)
	ld	l,10 (ix)
	ld	h,11 (ix)
00109$:
	push	hl
	push	bc
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	call	__modulong_rrx_s
	add	sp, #8
;../_modslong.c:265: if (a < 0)
	ld	a,-5 (ix)
	or	a, a
	jr	Z,00102$
;../_modslong.c:266: return -r;
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
;../_modslong.c:268: return r;
00102$:
	ld	sp, ix
	pop	ix
	ret
__modslong_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
