;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:22 2013
;--------------------------------------------------------
	.module atanf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
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
;../atanf.c:55: float atanf(const float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function atanf
; ---------------------------------
_atanf_start::
_atanf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-14
;../atanf.c:58: int n=0;
	ld	hl,#0x0000
	ex	(sp), hl
;../atanf.c:61: f=fabsf(x);
	ld	hl, 20 (sp)
	push	hl
	ld	hl, 20 (sp)
	push	hl
	call	_fabsf
	add	sp, #4
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),e
	ld	-5 (ix),d
;../atanf.c:62: if(f>1.0)
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00102$
;../atanf.c:64: f=1.0/f;
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),e
	ld	-5 (ix),d
;../atanf.c:65: n=2;
	ld	hl,#0x0002
	ex	(sp), hl
00102$:
;../atanf.c:67: if(f>K1)
	ld	hl,#0x3E89
	push	hl
	ld	hl,#0x30A3
	push	hl
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a,l
	or	a, a
	jp	Z,00104$
;../atanf.c:69: f=((K2*f-1.0)+f)/(K3+f);
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl,#0x3F3B
	push	hl
	ld	hl,#0x67AF
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fssub
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl,#0x3FDD
	push	hl
	ld	hl,#0xB3D7
	push	hl
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 16 (sp)
	push	hl
	ld	hl, 16 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),e
	ld	-5 (ix),d
;../atanf.c:73: n++;
	inc	-14 (ix)
	jr	NZ,00134$
	inc	-13 (ix)
00134$:
00104$:
;../atanf.c:75: if(fabsf(f)<EPS) r=f;
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	call	_fabsf
	add	sp, #4
	ld	c,l
	ld	b,h
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fslt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00106$
	ld	c,-8 (ix)
	ld	b,-7 (ix)
	ld	e,-6 (ix)
	ld	d,-5 (ix)
	jp	00107$
00106$:
;../atanf.c:78: g=f*f;
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-12 (ix),l
	ld	-11 (ix),h
	ld	-10 (ix),e
	ld	-9 (ix),d
;../atanf.c:79: r=f+P(g,f)/Q(g);
	ld	hl, 4 (sp)
	push	hl
	ld	hl, 4 (sp)
	push	hl
	ld	hl,#0xBD50
	push	hl
	ld	hl,#0x8691
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0xBEF1
	push	hl
	ld	hl,#0x10F6
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 4 (sp)
	push	hl
	ld	hl, 4 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl,#0x3FB4
	push	hl
	ld	hl,#0xCCD3
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 16 (sp)
	push	hl
	ld	hl, 16 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
00107$:
;../atanf.c:81: if(n>1) r=-r;
	ld	a,#0x01
	cp	a, -14 (ix)
	ld	a,#0x00
	sbc	a, -13 (ix)
	jp	PO, 00135$
	xor	a, #0x80
00135$:
	jp	P,00109$
	ld	a,d
	xor	a,#0x80
	ld	d,a
00109$:
;../atanf.c:82: r+=a[n];
	pop	hl
	push	hl
	add	hl, hl
	add	hl, hl
	ld	a,#<(_atanf_a_1_24)
	add	a, l
	ld	l,a
	ld	a,#>(_atanf_a_1_24)
	adc	a, h
	ld	h,a
	push	de
	push	bc
	ex	de,hl
	ld	hl, #0x000E
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	b,l
	ld	c,h
;../atanf.c:83: if(x<0.0) r=-r;
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 28 (sp)
	push	hl
	ld	hl, 28 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,l
	pop	de
	pop	bc
	or	a, a
	jr	Z,00111$
	ld	a,d
	xor	a,#0x80
	ld	d,a
00111$:
;../atanf.c:84: return r;
	ld	l,b
	ld	h,c
	ld	sp, ix
	pop	ix
	ret
_atanf_end::
_atanf_a_1_24:
	.byte #0x00,#0x00,#0x00,#0x00	;  0.000000e+00
	.byte #0x92,#0x0A,#0x06,#0x3F	;  5.235988e-01
	.byte #0xDB,#0x0F,#0xC9,#0x3F	;  1.570796e+00
	.byte #0x92,#0x0A,#0x86,#0x3F	;  1.047198e+00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
