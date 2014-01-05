;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _atoi
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
;../_atoi.c:29: int atoi(const char * s)
;	---------------------------------
; Function atoi
; ---------------------------------
_atoi_start::
_atoi:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-4
;../_atoi.c:31: register int rv=0; 
	ld	hl,#0x0000
	ex	(sp), hl
;../_atoi.c:35: while (*s) {
	ld	hl, 8 (sp)
00107$:
	ld	d,(hl)
;../_atoi.c:38: if (*s == '-' || *s == '+') 
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
;../_atoi.c:35: while (*s) {
	ld	a,d
	or	a, a
	jr	Z,00133$
;../_atoi.c:36: if (*s <= '9' && *s >= '0')
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
;../_atoi.c:37: break;
00102$:
;../_atoi.c:38: if (*s == '-' || *s == '+') 
	ld	a,b
	or	a, a
	jr	NZ,00133$
	ld	a,-1 (ix)
	or	a, a
	jr	NZ,00133$
;../_atoi.c:40: s++;
	inc	hl
	jp	00107$
00133$:
	ld	8 (sp), hl
;../_atoi.c:43: sign = (*s == '-');
	ld	-2 (ix),b
;../_atoi.c:44: if (*s == '-' || *s == '+') s++;
	ld	a,b
	or	a, a
	jr	NZ,00110$
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00131$
00110$:
	inc	hl
	ld	8 (sp), hl
;../_atoi.c:46: while (*s && *s >= '0' && *s <= '9') {
00131$:
	ex	de, hl
	ld	hl, 8 (sp)
	ex	de, hl
00115$:
	ld	a,(de)
	ld	c,a
	or	a,a
	jp	Z,00117$
	xor	a, #0x80
	sub	a, #0xB0
	jp	C,00117$
	ld	a,#0x39
	sub	a, c
	jp	PO, 00173$
	xor	a, #0x80
00173$:
	jp	M,00117$
;../_atoi.c:47: rv = (rv * 10) + (*s - '0');
	push	de
	ex	de, hl
	ld	hl, 2 (sp)
	ex	de, hl
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
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
	add	hl,bc
	ld	0 (sp), hl
;../_atoi.c:48: s++;
	inc	de
	jp	00115$
00117$:
;../_atoi.c:51: return (sign ? -rv : rv);
	ld	a,-2 (ix)
	or	a, a
	jr	Z,00120$
	xor	a, a
	sub	a, -4 (ix)
	ld	l,a
	ld	a, #0x00
	sbc	a, -3 (ix)
	ld	b,a
	jr	00121$
00120$:
	ld	l,-4 (ix)
	ld	b,-3 (ix)
00121$:
	ld	h, b
	ld	sp, ix
	pop	ix
	ret
_atoi_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
