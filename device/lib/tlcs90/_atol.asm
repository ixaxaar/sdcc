;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _atol
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
;../_atol.c:29: long atol(char * s)
;	---------------------------------
; Function atol
; ---------------------------------
_atol_start::
_atol:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-12
;../_atol.c:31: register long rv=0; 
	xor	a, a
	ld	-12 (ix),a
	ld	-11 (ix),a
	ld	-10 (ix),a
	ld	-9 (ix),a
;../_atol.c:35: while (*s) {
	ld	hl, 16 (sp)
00107$:
	ld	d,(hl)
;../_atol.c:38: if (*s == '-' || *s == '+') 
	ld	a,d
	sub	a, #0x2D
	jr	NZ,00168$
	ld	a,#0x01
	jr	00169$
00168$:
	xor	a,a
00169$:
	ld	b,a
	ld	a,d
	sub	a, #0x2B
	jr	NZ,00170$
	ld	a,#0x01
	jr	00171$
00170$:
	xor	a,a
00171$:
	ld	-1 (ix),a
;../_atol.c:35: while (*s) {
	ld	a,d
	or	a, a
	jr	Z,00133$
;../_atol.c:36: if (*s <= '9' && *s >= '0')
	ld	a,#0x39
	sub	a, d
	jp	PO, 00172$
	xor	a, #0x80
00172$:
	jp	M,00102$
	ld	a,d
	xor	a, #0x80
	sub	a, #0xB0
	jr	NC,00133$
;../_atol.c:37: break;
00102$:
;../_atol.c:38: if (*s == '-' || *s == '+') 
	ld	a,b
	or	a, a
	jr	NZ,00133$
	ld	a,-1 (ix)
	or	a, a
	jr	NZ,00133$
;../_atol.c:40: s++;
	inc	hl
	jp	00107$
00133$:
	ld	16 (sp), hl
;../_atol.c:43: sign = (*s == '-');
	ld	-2 (ix),b
;../_atol.c:44: if (*s == '-' || *s == '+') s++;
	ld	a,b
	or	a, a
	jr	NZ,00110$
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00131$
00110$:
	inc	hl
	ld	16 (sp), hl
;../_atol.c:46: while (*s && *s >= '0' && *s <= '9') {
00131$:
	ld	a,4 (ix)
	ld	-4 (ix),a
	ld	a,5 (ix)
	ld	-3 (ix),a
00115$:
	ld	hl, 8 (sp)
	ld	c,(hl)
	ld	a,c
	or	a, a
	jp	Z,00117$
	ld	a,c
	xor	a, #0x80
	sub	a, #0xB0
	jp	C,00117$
	ld	a,#0x39
	sub	a, c
	jp	PO, 00173$
	xor	a, #0x80
00173$:
	jp	M,00117$
;../_atol.c:47: rv = (rv * 10) + (*s - '0');
	push	bc
	ld	hl, 4 (sp)
	push	hl
	ld	hl, 4 (sp)
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x000A
	push	hl
	call	__mullong_rrx_s
	add	sp, #8
	pop	bc
	ld	a,c
	rla
	sbc	a, a
	ld	b,a
	ld	a,c
	add	a,#0xD0
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	ld	-8 (ix),c
	ld	-7 (ix),b
	ld	a,b
	rla
	sbc	a, a
	ld	-6 (ix),a
	ld	-5 (ix),a
	ld	a,l
	add	a, -8 (ix)
	ld	l,a
	ld	a,h
	adc	a, -7 (ix)
	ld	h,a
	ld	a,e
	adc	a, -6 (ix)
	ld	e,a
	ld	a,d
	adc	a, -5 (ix)
	ld	d,a
	ld	-12 (ix),l
	ld	-11 (ix),h
	ld	-10 (ix),e
	ld	-9 (ix),d
;../_atol.c:48: s++;
	inc	-4 (ix)
	jp	NZ,00115$
	inc	-3 (ix)
	jp	00115$
00117$:
;../_atol.c:51: return (sign ? -rv : rv);
	ld	a,-2 (ix)
	or	a, a
	jr	Z,00120$
	xor	a, a
	sub	a, -12 (ix)
	ld	l,a
	ld	a, #0x00
	sbc	a, -11 (ix)
	ld	h,a
	ld	a, #0x00
	sbc	a, -10 (ix)
	ld	e,a
	ld	a, #0x00
	sbc	a, -9 (ix)
	ld	d,a
	jr	00121$
00120$:
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	e,-10 (ix)
	ld	d,-9 (ix)
00121$:
	ld	sp, ix
	pop	ix
	ret
_atol_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
