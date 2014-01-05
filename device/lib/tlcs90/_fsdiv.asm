;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:18 2013
;--------------------------------------------------------
	.module _fsdiv
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsdiv
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
;../_fsdiv.c:274: float __fsdiv (float a1, float a2)
;	---------------------------------
; Function __fsdiv
; ---------------------------------
___fsdiv_start::
___fsdiv:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-35
;../_fsdiv.c:283: fl1.f = a1;
	ld	hl,#0x0017
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0027
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../_fsdiv.c:284: fl2.f = a2;
	ld	hl,#0x0013
	add	hl,sp
	ex	de,hl
	ld	hl, #0x002B
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../_fsdiv.c:287: exp = EXP (fl1.l) ;
	ld	hl,#0x0017
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x17
00164$:
	srl	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00164$
	ld	-34 (ix), e
	ld	-33 (ix), #0x00
;../_fsdiv.c:288: exp -= EXP (fl2.l);
	ld	hl,#0x0013
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x17
00166$:
	srl	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00166$
	ld	-4 (ix),e
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,-33 (ix)
	rla
	sbc	a, a
	ld	c,a
	ld	b,a
	ld	a,l
	sub	a, -4 (ix)
	ld	l,a
	ld	a,h
	sbc	a, -3 (ix)
	ld	h,a
	ld	a,c
	sbc	a, -2 (ix)
	ld	a,b
	sbc	a, -1 (ix)
	ld	-34 (ix),l
	ld	-33 (ix),h
;../_fsdiv.c:289: exp += EXCESS;
	ld	a,-34 (ix)
	add	a, #0x7E
	ld	-34 (ix),a
	ld	a,-33 (ix)
	adc	a, #0x00
	ld	-33 (ix),a
;../_fsdiv.c:292: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	ld	hl,#0x0017
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	a, (hl)
	rlc	a
	and	a,#0x01
	ld	-4 (ix),a
	ld	hl,#0x0013
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	a, (hl)
	rlc	a
	and	a,#0x01
	xor	a, -4 (ix)
	ld	-35 (ix),a
;../_fsdiv.c:295: if (!fl2.l)
	ld	hl,#0x0013
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
	jp	NZ,00102$
;../_fsdiv.c:297: fl2.l = 0x7FC00000;
	ld	hl,#0x0013
	add	hl,sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl),#0xC0
	inc	hl
	ld	(hl),#0x7F
;../_fsdiv.c:298: return (fl2.f);
	ld	hl,#0x0013
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
	jp	00118$
00102$:
;../_fsdiv.c:302: if (!fl1.l)
	ld	hl,#0x0017
	add	hl,sp
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	a, (hl)
	or	a, c
	or	a, e
	or	a,d
	jr	NZ,00104$
;../_fsdiv.c:303: return (0);
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00118$
00104$:
;../_fsdiv.c:306: mant1 = MANT (fl1.l);
	ld	hl,#0x0017
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	res	7, c
	ld	h,#0x00
	ld	-28 (ix),e
	ld	-27 (ix),d
	ld	a,c
	set	7, a
	ld	-26 (ix),a
	ld	-25 (ix),h
;../_fsdiv.c:307: mant2 = MANT (fl2.l);
	ld	hl,#0x0013
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	res	7, c
	ld	h,#0x00
	ld	-32 (ix),e
	ld	-31 (ix),d
	ld	a,c
	set	7, a
	ld	-30 (ix),a
	ld	-29 (ix),h
;../_fsdiv.c:310: if (mant1 < mant2)
	ld	a,-28 (ix)
	sub	a, -32 (ix)
	ld	a,-27 (ix)
	sbc	a, -31 (ix)
	ld	a,-26 (ix)
	sbc	a, -30 (ix)
	ld	a,-25 (ix)
	sbc	a, -29 (ix)
	jp	PO, 00168$
	xor	a, #0x80
00168$:
	jp	P,00106$
;../_fsdiv.c:312: mant1 <<= 1;
	push	af
	pop	af
	ld	b,#0x01
	sla	-28 (ix)
	rl	-27 (ix)
	rl	-26 (ix)
	rl	-25 (ix)
;../_fsdiv.c:313: exp--;
	dec	1 (sp)
	ld	hl, 1 (sp)
00106$:
;../_fsdiv.c:317: mask = 0x1000000;
	ld	-24 (ix),#0x00
	ld	-23 (ix),#0x00
	ld	-22 (ix),#0x00
	ld	-21 (ix),#0x01
;../_fsdiv.c:318: result = 0;
	xor	a, a
	ld	-20 (ix),a
	ld	-19 (ix),a
	ld	-18 (ix),a
	ld	-17 (ix),a
;../_fsdiv.c:319: while (mask)
00109$:
	ld	a,-21 (ix)
	or	a, -22 (ix)
	or	a, -23 (ix)
	or	a,-24 (ix)
	jp	Z,00111$
;../_fsdiv.c:321: if (mant1 >= mant2)
	ld	a,-28 (ix)
	sub	a, -32 (ix)
	ld	a,-27 (ix)
	sbc	a, -31 (ix)
	ld	a,-26 (ix)
	sbc	a, -30 (ix)
	ld	a,-25 (ix)
	sbc	a, -29 (ix)
	jp	PO, 00171$
	xor	a, #0x80
00171$:
	jp	M,00108$
;../_fsdiv.c:323: result |= mask;
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	d,-18 (ix)
	ld	e,-17 (ix)
	ld	a,l
	or	a, -24 (ix)
	ld	l,a
	ld	a,h
	or	a, -23 (ix)
	ld	h,a
	ld	a,d
	or	a, -22 (ix)
	ld	c,a
	ld	a,e
	or	a, -21 (ix)
	ld	b,a
	ld	-20 (ix),l
	ld	-19 (ix),h
	ld	-18 (ix),c
	ld	-17 (ix),b
;../_fsdiv.c:324: mant1 -= mant2;
	ld	a,-28 (ix)
	sub	a, -32 (ix)
	ld	-28 (ix),a
	ld	a,-27 (ix)
	sbc	a, -31 (ix)
	ld	-27 (ix),a
	ld	a,-26 (ix)
	sbc	a, -30 (ix)
	ld	-26 (ix),a
	ld	a,-25 (ix)
	sbc	a, -29 (ix)
	ld	-25 (ix),a
00108$:
;../_fsdiv.c:326: mant1 <<= 1;
	push	af
	pop	af
	sla	-28 (ix)
	rl	-27 (ix)
	rl	-26 (ix)
	rl	-25 (ix)
;../_fsdiv.c:327: mask >>= 1;
	push	af
	pop	af
	ld	b,#0x01
	srl	-21 (ix)
	rr	-22 (ix)
	rr	-23 (ix)
	rr	-24 (ix)
	jp	00109$
00111$:
;../_fsdiv.c:331: result += 1;
	inc	-20 (ix)
	jr	NZ,00176$
	inc	-19 (ix)
	jr	NZ,00176$
	inc	-18 (ix)
	jr	NZ,00176$
	inc	-17 (ix)
00176$:
;../_fsdiv.c:334: exp++;
	inc	-34 (ix)
	jr	NZ,00177$
	inc	-33 (ix)
00177$:
;../_fsdiv.c:335: result >>= 1;
	push	af
	pop	af
	sra	-17 (ix)
	rr	-18 (ix)
	rr	-19 (ix)
	rr	-20 (ix)
;../_fsdiv.c:337: result &= ~HIDDEN;
	ld	h,-20 (ix)
	ld	l,-19 (ix)
	ld	d,-18 (ix)
	ld	e,-17 (ix)
	ld	-20 (ix),h
	ld	-19 (ix),l
	ld	a,d
	and	a, #0x7F
	ld	-18 (ix),a
	ld	-17 (ix),e
;../_fsdiv.c:340: if (exp >= 0x100)
	ld	a,-33 (ix)
	xor	a, #0x80
	sub	a, #0x81
	jp	C,00116$
;../_fsdiv.c:341: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	ld	hl,#0x0017
	add	hl,sp
	ld	a,-35 (ix)
	or	a, a
	jr	Z,00120$
	ld	bc,#0x0000
	ld	de,#0x8000
	jr	00121$
00120$:
	ld	bc,#0x0000
	ld	de,#0x0000
00121$:
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
	jp	00117$
00116$:
;../_fsdiv.c:342: else if (exp < 0)
	bit	7, -33 (ix)
	jr	Z,00113$
;../_fsdiv.c:343: fl1.l = 0;
	ld	hl,#0x0017
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
	jp	00117$
00113$:
;../_fsdiv.c:345: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	ld	hl,#0x0017
	add	hl,sp
	ld	31 (sp), hl
	ld	a,-35 (ix)
	or	a, a
	jr	Z,00122$
	ld	-8 (ix),#0x00
	ld	-7 (ix),#0x00
	ld	-6 (ix),#0x00
	ld	-5 (ix),#0x80
	jr	00123$
00122$:
	xor	a, a
	ld	-8 (ix),a
	ld	-7 (ix),a
	ld	-6 (ix),a
	ld	-5 (ix),a
00123$:
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,-33 (ix)
	rla
	sbc	a, a
	ld	e,a
	ld	d,a
	ld	b,#0x17
00180$:
	add	hl, hl
	rl	e
	rl	d
	djnz	00180$
	ld	a,-8 (ix)
	or	a, l
	ld	-8 (ix),a
	ld	a,-7 (ix)
	or	a, h
	ld	-7 (ix),a
	ld	a,-6 (ix)
	or	a, e
	ld	-6 (ix),a
	ld	a,-5 (ix)
	or	a, d
	ld	-5 (ix),a
	ld	e,-20 (ix)
	ld	d,-19 (ix)
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	a,-8 (ix)
	or	a, e
	ld	e,a
	ld	a,-7 (ix)
	or	a, d
	ld	d,a
	ld	a,-6 (ix)
	or	a, l
	ld	b,a
	ld	a,-5 (ix)
	or	a, h
	ld	c,a
	ld	hl, 31 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
00117$:
;../_fsdiv.c:346: return (fl1.f);
	ld	hl,#0x0017
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
00118$:
	ld	sp, ix
	pop	ix
	ret
___fsdiv_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
