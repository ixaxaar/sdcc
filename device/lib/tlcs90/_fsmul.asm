;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:19 2013
;--------------------------------------------------------
	.module _fsmul
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsmul
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
;../_fsmul.c:241: float __fsmul (float a1, float a2) {
;	---------------------------------
; Function __fsmul
; ---------------------------------
___fsmul_start::
___fsmul:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-24
;../_fsmul.c:247: fl1.f = a1;
	ld	hl,#0x000B
	add	hl,sp
	ex	de,hl
	ld	hl, #0x001C
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../_fsmul.c:248: fl2.f = a2;
	ld	hl,#0x0007
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0020
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../_fsmul.c:250: if (!fl1.l || !fl2.l)
	ld	hl,#0x000B
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	a, (hl)
	or	a, e
	or	a, b
	or	a,c
	jr	Z,00101$
	ld	hl,#0x0007
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	a, (hl)
	or	a, b
	or	a, d
	or	a,e
	jr	NZ,00102$
00101$:
;../_fsmul.c:251: return (0);
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00113$
00102$:
;../_fsmul.c:254: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	ld	hl,#0x000B
	add	hl,sp
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	a, (hl)
	rlc	a
	and	a,#0x01
	ld	-1 (ix),a
	ld	hl,#0x0007
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	a, (hl)
	rlc	a
	and	a,#0x01
	xor	a, -1 (ix)
	ld	-24 (ix),a
;../_fsmul.c:255: exp = EXP (fl1.l) - EXCESS;
	ld	hl,#0x000B
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x17
00143$:
	srl	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00143$
	ld	d,#0x00
	ld	bc,#0x0000
	ld	a,e
	add	a,#0x82
	ld	l,a
	ld	a,d
	adc	a,#0xFF
	ld	h,a
	ld	a,c
	adc	a,#0xFF
	ld	a,b
	adc	a,#0xFF
	ld	-23 (ix),l
	ld	-22 (ix),h
;../_fsmul.c:256: exp += EXP (fl2.l);
	ld	hl,#0x0007
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x17
00145$:
	srl	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00145$
	ld	-5 (ix),e
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	a,-22 (ix)
	rla
	sbc	a, a
	ld	c,a
	ld	b,a
	ld	a,l
	add	a, -5 (ix)
	ld	l,a
	ld	a,h
	adc	a, -4 (ix)
	ld	h,a
	ld	a,c
	adc	a, -3 (ix)
	ld	a,b
	adc	a, -2 (ix)
	ld	-23 (ix),l
	ld	-22 (ix),h
;../_fsmul.c:258: fl1.l = MANT (fl1.l);
	ld	hl,#0x000B
	add	hl,sp
	ld	19 (sp), hl
	ld	hl,#0x000B
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	res	7, c
	ld	b,#0x00
	set	7, c
	ld	hl, 19 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_fsmul.c:259: fl2.l = MANT (fl2.l);
	ld	hl,#0x0007
	add	hl,sp
	ld	19 (sp), hl
	ld	hl,#0x0007
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	res	7, c
	ld	b,#0x00
	set	7, c
	ld	a, c
	ld	hl, 19 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_fsmul.c:262: result = (fl1.l >> 8) * (fl2.l >> 8);
	ld	hl,#0x000B
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	af
	ld	-5 (ix),e
	ld	-4 (ix),d
	ld	-3 (ix),c
	ld	-2 (ix),b
	pop	af
	ld	a,#0x08
00147$:
	srl	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	dec	a
	jr	NZ,00147$
	ld	hl,#0x0007
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x08
00149$:
	srl	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00149$
	push	bc
	push	de
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 25 (sp)
	push	hl
	call	__mullong_rrx_s
	add	sp, #8
	ld	-21 (ix),l
	ld	-20 (ix),h
	ld	-19 (ix),e
	ld	-18 (ix),d
;../_fsmul.c:263: result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
	ld	hl,#0x000B
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	-5 (ix),e
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
	ld	hl,#0x0007
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x08
00151$:
	srl	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00151$
	push	bc
	push	de
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 25 (sp)
	push	hl
	call	__mullong_rrx_s
	add	sp, #8
	ld	b,l
	ld	c,h
	ld	a,#0x08
00153$:
	srl	d
	rr	e
	rr	c
	rr	b
	dec	a
	jr	NZ,00153$
	ld	a,-21 (ix)
	add	a, b
	ld	-21 (ix),a
	ld	a,-20 (ix)
	adc	a, c
	ld	-20 (ix),a
	ld	a,-19 (ix)
	adc	a, e
	ld	-19 (ix),a
	ld	a,-18 (ix)
	adc	a, d
	ld	-18 (ix),a
;../_fsmul.c:264: result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;
	ld	hl,#0x0007
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	-5 (ix),e
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
	ld	hl,#0x000B
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x08
00155$:
	srl	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00155$
	push	bc
	push	de
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 25 (sp)
	push	hl
	call	__mullong_rrx_s
	add	sp, #8
	ld	b,l
	ld	c,h
	ld	a,#0x08
00157$:
	srl	d
	rr	e
	rr	c
	rr	b
	dec	a
	jr	NZ,00157$
	ld	a,-21 (ix)
	add	a, b
	ld	-21 (ix),a
	ld	a,-20 (ix)
	adc	a, c
	ld	-20 (ix),a
	ld	a,-19 (ix)
	adc	a, e
	ld	-19 (ix),a
	ld	a,-18 (ix)
	adc	a, d
	ld	-18 (ix),a
;../_fsmul.c:267: result += 0x40;
	ld	a,-21 (ix)
	add	a, #0x40
	ld	-21 (ix),a
	ld	a,-20 (ix)
	adc	a, #0x00
	ld	-20 (ix),a
	ld	a,-19 (ix)
	adc	a, #0x00
	ld	-19 (ix),a
	ld	a,-18 (ix)
	adc	a, #0x00
	ld	-18 (ix),a
;../_fsmul.c:269: if (result & SIGNBIT)
	bit	7, -18 (ix)
	jp	Z,00105$
;../_fsmul.c:272: result += 0x40;
	ld	a,-21 (ix)
	add	a, #0x40
	ld	-21 (ix),a
	ld	a,-20 (ix)
	adc	a, #0x00
	ld	-20 (ix),a
	ld	a,-19 (ix)
	adc	a, #0x00
	ld	-19 (ix),a
	ld	a,-18 (ix)
	adc	a, #0x00
	ld	-18 (ix),a
;../_fsmul.c:273: result >>= 8;
	push	af
	pop	af
	ld	b,#0x08
00160$:
	srl	-18 (ix)
	rr	-19 (ix)
	rr	-20 (ix)
	rr	-21 (ix)
	djnz	00160$
	jr	00106$
00105$:
;../_fsmul.c:277: result >>= 7;
	push	af
	pop	af
	ld	b,#0x07
00162$:
	srl	-18 (ix)
	rr	-19 (ix)
	rr	-20 (ix)
	rr	-21 (ix)
	djnz	00162$
;../_fsmul.c:278: exp--;
	dec	1 (sp)
	ld	hl, 1 (sp)
00106$:
;../_fsmul.c:281: result &= ~HIDDEN;
	res	7, -19 (ix)
;../_fsmul.c:284: if (exp >= 0x100)
	ld	a,-22 (ix)
	xor	a, #0x80
	sub	a, #0x81
	jp	C,00111$
;../_fsmul.c:285: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	ld	hl,#0x000B
	add	hl,sp
	ld	a,-24 (ix)
	or	a, a
	jr	Z,00115$
	ld	bc,#0x0000
	ld	de,#0x8000
	jr	00116$
00115$:
	ld	bc,#0x0000
	ld	de,#0x0000
00116$:
	set	7, e
	ld	a,d
	or	a, #0x7F
	ld	d,a
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	jp	00112$
00111$:
;../_fsmul.c:286: else if (exp < 0)
	bit	7, -22 (ix)
	jr	Z,00108$
;../_fsmul.c:287: fl1.l = 0;
	ld	hl,#0x000B
	add	hl,sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00112$
00108$:
;../_fsmul.c:289: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	ld	hl,#0x000B
	add	hl,sp
	ld	19 (sp), hl
	ld	a,-24 (ix)
	or	a, a
	jr	Z,00117$
	ld	-9 (ix),#0x00
	ld	-8 (ix),#0x00
	ld	-7 (ix),#0x00
	ld	-6 (ix),#0x80
	jr	00118$
00117$:
	xor	a, a
	ld	-9 (ix),a
	ld	-8 (ix),a
	ld	-7 (ix),a
	ld	-6 (ix),a
00118$:
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	a,-22 (ix)
	rla
	sbc	a, a
	ld	e,a
	ld	d,a
	ld	b,#0x17
00164$:
	add	hl, hl
	rl	e
	rl	d
	djnz	00164$
	ld	a,l
	or	a, -9 (ix)
	ld	l,a
	ld	a,h
	or	a, -8 (ix)
	ld	h,a
	ld	a,e
	or	a, -7 (ix)
	ld	e,a
	ld	a,d
	or	a, -6 (ix)
	ld	d,a
	ld	a,l
	or	a, -21 (ix)
	ld	c,a
	ld	a,h
	or	a, -20 (ix)
	ld	b,a
	ld	a,e
	or	a, -19 (ix)
	ld	e,a
	ld	a,d
	or	a, -18 (ix)
	ld	d,a
	ld	hl, 19 (sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
00112$:
;../_fsmul.c:290: return (fl1.f);
	ld	hl,#0x000B
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
00113$:
	ld	sp, ix
	pop	ix
	ret
___fsmul_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
