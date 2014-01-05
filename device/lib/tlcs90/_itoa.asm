;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:29 2013
;--------------------------------------------------------
	.module _itoa
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __itoa
	.globl __uitoa
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
;../_itoa.c:40: void _uitoa(unsigned int value, char* string, unsigned char radix)
;	---------------------------------
; Function _uitoa
; ---------------------------------
__uitoa_start::
__uitoa:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-3
;../_itoa.c:45: do {
	ld	c,#0x00
00103$:
;../_itoa.c:46: string[index] = '0' + (value % radix);
	ld	hl, 9 (sp)
	ld	b,#0x00
	add	hl, bc
	ld	e,8 (ix)
	ld	d,#0x00
	push	hl
	push	bc
	push	de
	push	de
	ld	hl, 15 (sp)
	push	hl
	call	__moduint_rrx_s
	add	sp, #4
	ld	-1 (ix),h
	ld	-2 (ix),l
	pop	de
	pop	bc
	pop	hl
	ld	a,-2 (ix)
	add	a, #0x30
	ld	b,a
	ld	(hl),b
;../_itoa.c:47: if (string[index] > '9')
	ld	a,#0x39
	sub	a, b
	jp	PO, 00133$
	xor	a, #0x80
00133$:
	jp	P,00102$
;../_itoa.c:48: string[index] += 'A' - '9' - 1;
	ld	a,(hl)
	add	a, #0x07
	ld	(hl),a
00102$:
;../_itoa.c:49: value /= radix;
	push	bc
	push	de
	ld	hl, 11 (sp)
	push	hl
	call	__divuint_rrx_s
	add	sp, #4
	pop	bc
	ld	7 (sp), hl
;../_itoa.c:50: ++index;
	inc	c
;../_itoa.c:51: } while (value != 0);
	ld	a,5 (ix)
	or	a,4 (ix)
	jp	NZ,00103$
;../_itoa.c:54: string[index--] = '\0';
	ld	d,c
	dec	d
	ld	hl, 9 (sp)
	ld	b,#0x00
	add	hl, bc
	ld	(hl),#0x00
;../_itoa.c:57: while (index > i) {
	ld	e,#0x00
00106$:
	ld	a,e
	sub	a, d
	jp	PO, 00134$
	xor	a, #0x80
00134$:
	jp	P,00109$
;../_itoa.c:58: char tmp = string[i];
	ld	a,6 (ix)
	add	a, e
	ld	c,a
	ld	a,7 (ix)
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	ld	-3 (ix),a
;../_itoa.c:59: string[i] = string[index];
	ld	a,6 (ix)
	add	a, d
	ld	-2 (ix),a
	ld	a,7 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	ld	hl, 1 (sp)
	ld	a,(hl)
	ld	(bc),a
;../_itoa.c:60: string[index] = tmp;
	ld	hl, 1 (sp)
	ld	a,-3 (ix)
	ld	(hl),a
;../_itoa.c:61: ++i;
	inc	e
;../_itoa.c:62: --index;
	dec	d
	jp	00106$
00109$:
	ld	sp, ix
	pop	ix
	ret
__uitoa_end::
;../_itoa.c:66: void _itoa(int value, char* string, unsigned char radix)
;	---------------------------------
; Function _itoa
; ---------------------------------
__itoa_start::
__itoa:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_itoa.c:68: if (value < 0 && radix == 10) {
	bit	7, 5 (ix)
	jr	Z,00102$
	ld	a,8 (ix)
	sub	a, #0x0A
	jr	NZ,00102$
;../_itoa.c:69: *string++ = '-';
	ld	hl, 6 (sp)
	ld	(hl),#0x2D
	inc	hl
	ld	6 (sp), hl
;../_itoa.c:70: value = -value;
	xor	a, a
	sub	a, 4 (ix)
	ld	4 (ix),a
	ld	a, #0x00
	sbc	a, 5 (ix)
	ld	5 (ix),a
00102$:
;../_itoa.c:72: _uitoa(value, string, radix);
	ld	a,8 (ix)
	push	af
	inc	sp
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	call	__uitoa
	add	sp, #5
	pop	ix
	ret
__itoa_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
