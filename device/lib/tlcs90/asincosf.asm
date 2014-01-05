;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:21 2013
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _ldexpf
	.globl _fabsf
	.globl _sqrtf
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
;../asincosf.c:47: float asincosf(const float x, const bool isacos)
;	---------------------------------
; Function asincosf
; ---------------------------------
_asincosf_start::
_asincosf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-36
;../asincosf.c:51: bool quartPI = isacos;
	ld	a,8 (ix)
	ld	-36 (ix),a
;../asincosf.c:56: y = fabsf(x);
	ld	hl, 42 (sp)
	push	hl
	ld	hl, 42 (sp)
	push	hl
	call	_fabsf
	add	sp, #4
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
;../asincosf.c:57: if (y < EPS)
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 38 (sp)
	push	hl
	ld	hl, 38 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	-13 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00107$
;../asincosf.c:59: r = y;
	ld	hl, #17
	add	hl, sp
	ex	de, hl
	ld	hl, #32
	add	hl, sp
	ld	bc, #4
	ldir
	jp	00108$
00107$:
;../asincosf.c:63: if (y > 0.5)
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 38 (sp)
	push	hl
	ld	hl, 38 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a,l
	or	a, a
	jp	Z,00104$
;../asincosf.c:65: quartPI = !isacos;
	ld	a,-36 (ix)
	xor	a, #0x01
	ld	-36 (ix),a
;../asincosf.c:66: if (y > 1.0)
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 38 (sp)
	push	hl
	ld	hl, 38 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00102$
;../asincosf.c:68: errno = EDOM;
	ld	hl,#_errno + 0
	ld	(hl), #0x21
	ld	hl,#_errno + 1
	ld	(hl), #0x00
;../asincosf.c:69: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00117$
00102$:
;../asincosf.c:71: g = (0.5 - y) + 0.5;
	ld	hl, 34 (sp)
	push	hl
	ld	hl, 34 (sp)
	push	hl
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fssub
	add	sp, #8
	ld	-28 (ix),d
	ld	-29 (ix),e
	ld	-30 (ix),h
	ld	-31 (ix),l
	ld	hl, #24
	add	hl, sp
	ex	de, hl
	ld	hl, #5
	add	hl, sp
	ld	bc, #4
	ldir
;../asincosf.c:72: g = ldexpf(g, -1);
	ld	hl,#0xFFFF
	push	hl
	ld	hl, 28 (sp)
	push	hl
	ld	hl, 28 (sp)
	push	hl
	call	_ldexpf
	add	sp, #6
	ld	-9 (ix),d
	ld	-10 (ix),e
	ld	-11 (ix),h
	ld	-12 (ix),l
	ld	hl, #5
	add	hl, sp
	ex	de, hl
	ld	hl, #24
	add	hl, sp
	ld	bc, #4
	ldir
;../asincosf.c:73: y = sqrtf(g);
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	call	_sqrtf
	add	sp, #4
	ld	-9 (ix),d
	ld	-10 (ix),e
	ld	-11 (ix),h
	ld	-12 (ix),l
	ld	hl, #9
	add	hl, sp
	ex	de, hl
	ld	hl, #24
	add	hl, sp
	ld	bc, #4
	ldir
;../asincosf.c:74: y = -(y + y);
	ld	hl, 11 (sp)
	push	hl
	ld	hl, 11 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-9 (ix),d
	ld	-10 (ix),e
	ld	-11 (ix),h
	ld	-12 (ix),l
	ld	a,-9 (ix)
	xor	a,#0x80
	ld	-1 (ix),a
	ld	a,-12 (ix)
	ld	-4 (ix),a
	ld	a,-11 (ix)
	ld	-3 (ix),a
	ld	a,-10 (ix)
	ld	-2 (ix),a
	jr	00105$
00104$:
;../asincosf.c:78: g = y * y;
	ld	hl, 34 (sp)
	push	hl
	ld	hl, 34 (sp)
	push	hl
	ld	hl, 38 (sp)
	push	hl
	ld	hl, 38 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-31 (ix),l
	ld	-30 (ix),h
	ld	-29 (ix),e
	ld	-28 (ix),d
00105$:
;../asincosf.c:80: r = y + y * ((P(g) * g) / Q(g));
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl,#0xBF01
	push	hl
	ld	hl,#0x2065
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3F6F
	push	hl
	ld	hl,#0x166B
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ld	-9 (ix),d
	ld	-10 (ix),e
	ld	-11 (ix),h
	ld	-12 (ix),l
	ld	hl,#0xC0B1
	push	hl
	ld	hl,#0x8D0B
	push	hl
	ld	hl, 11 (sp)
	push	hl
	ld	hl, 11 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x40B3
	push	hl
	ld	hl,#0x50F0
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 30 (sp)
	push	hl
	ld	hl, 30 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 38 (sp)
	push	hl
	ld	hl, 38 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 38 (sp)
	push	hl
	ld	hl, 38 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-19 (ix),l
	ld	-18 (ix),h
	ld	-17 (ix),e
	ld	-16 (ix),d
00108$:
;../asincosf.c:82: i = quartPI;
	ld	d,-36 (ix)
;../asincosf.c:85: if (x < 0.0)
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 48 (sp)
	push	hl
	ld	hl, 48 (sp)
	push	hl
;../asincosf.c:86: r = (b[i] + r) + b[i];
	call	___fslt
	add	sp, #8
	ld	-12 (ix),l
	pop	de
	ld	l,d
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	32 (sp), hl
;../asincosf.c:83: if (isacos)
	bit	0,8 (ix)
	jp	Z,00115$
;../asincosf.c:85: if (x < 0.0)
	ld	a,-12 (ix)
	or	a, a
	jp	Z,00110$
;../asincosf.c:86: r = (b[i] + r) + b[i];
	ld	a,#<(_asincosf_b_1_24)
	add	a, -4 (ix)
	ld	-15 (ix),a
	ld	a,#>(_asincosf_b_1_24)
	adc	a, -3 (ix)
	ld	-14 (ix),a
	ex	de, hl
	ld	hl, 21 (sp)
	ex	de, hl
	ld	hl, #0x001C
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 34 (sp)
	push	hl
	ld	hl, 34 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 30 (sp)
	push	hl
	ld	hl, 30 (sp)
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-35 (ix),l
	ld	-34 (ix),h
	ld	-33 (ix),e
	ld	-32 (ix),d
	jp	00116$
00110$:
;../asincosf.c:88: r = (a[i] - r) + a[i];
	ld	a,-4 (ix)
	add	a, #<(_asincosf_a_1_24)
	ld	-8 (ix),a
	ld	a,-3 (ix)
	adc	a, #>(_asincosf_a_1_24)
	ld	-7 (ix),a
	ex	de, hl
	ld	hl, 28 (sp)
	ex	de, hl
	ld	hl, #0x001C
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 34 (sp)
	push	hl
	ld	hl, 34 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-20 (ix),d
	ld	-21 (ix),e
	ld	-22 (ix),h
	ld	-23 (ix),l
	ld	hl, 30 (sp)
	push	hl
	ld	hl, 30 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-20 (ix),d
	ld	-21 (ix),e
	ld	-22 (ix),h
	ld	-23 (ix),l
	ld	hl, #1
	add	hl, sp
	ex	de, hl
	ld	hl, #13
	add	hl, sp
	ld	bc, #4
	ldir
	jp	00116$
00115$:
;../asincosf.c:92: r = (a[i] + r) + a[i];
	ld	de,#_asincosf_a_1_24+0
	ld	hl, 32 (sp)
	add	hl,de
	ex	de,hl
	ld	hl, #0x000D
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-35 (ix),l
	ld	-34 (ix),h
	ld	-33 (ix),e
	ld	-32 (ix),d
;../asincosf.c:93: if (x < 0.0)
	ld	a,-12 (ix)
	or	a, a
	jr	Z,00116$
;../asincosf.c:94: r = -r;
	ld	a,-32 (ix)
	xor	a,#0x80
	ld	-32 (ix),a
00116$:
;../asincosf.c:96: return r;
	ld	l,-35 (ix)
	ld	h,-34 (ix)
	ld	e,-33 (ix)
	ld	d,-32 (ix)
00117$:
	ld	sp, ix
	pop	ix
	ret
_asincosf_end::
_asincosf_a_1_24:
	.byte #0x00,#0x00,#0x00,#0x00	;  0.000000e+00
	.byte #0xDB,#0x0F,#0x49,#0x3F	;  7.853982e-01
_asincosf_b_1_24:
	.byte #0xDB,#0x0F,#0xC9,#0x3F	;  1.570796e+00
	.byte #0xDB,#0x0F,#0x49,#0x3F	;  7.853982e-01
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
