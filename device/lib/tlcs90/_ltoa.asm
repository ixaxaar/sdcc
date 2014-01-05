;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:29 2013
;--------------------------------------------------------
	.module _ltoa
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __ltoa
	.globl __ultoa
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
;../_ltoa.c:56: void _ultoa(unsigned long value, char* string, unsigned char radix)
;	---------------------------------
; Function _ultoa
; ---------------------------------
__ultoa_start::
__ultoa:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-38
;../_ltoa.c:61: do {
	ld	hl,#0x0000
	add	hl,sp
	ld	36 (sp), hl
	ld	c,#0x20
00103$:
;../_ltoa.c:62: unsigned char c = '0' + (value % radix);
	ld	a,10 (ix)
	ld	-6 (ix),a
	ld	-5 (ix),#0x00
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	push	bc
	ld	hl, 36 (sp)
	push	hl
	ld	hl, 36 (sp)
	push	hl
	ld	hl, 50 (sp)
	push	hl
	ld	hl, 50 (sp)
	push	hl
	call	__modulong_rrx_s
	add	sp, #8
	pop	bc
	ld	a,l
	add	a, #0x30
	ld	d,a
;../_ltoa.c:63: if (c > (unsigned char)'9')
	ld	a,#0x39
	sub	a, d
	jr	NC,00102$
;../_ltoa.c:64: c += 'A' - '9' - 1;
	ld	a,d
	add	a, #0x07
	ld	d,a
00102$:
;../_ltoa.c:65: buffer[--index] = c;
	dec	c
	ld	hl, 36 (sp)
	ld	b,#0x00
	add	hl, bc
	ld	(hl),d
;../_ltoa.c:66: value /= radix;
	push	bc
	ld	hl, 36 (sp)
	push	hl
	ld	hl, 36 (sp)
	push	hl
	ld	hl, 50 (sp)
	push	hl
	ld	hl, 50 (sp)
	push	hl
	call	__divulong_rrx_s
	add	sp, #8
	pop	bc
	ld	4 (ix),l
	ld	5 (ix),h
	ld	6 (ix),e
;../_ltoa.c:67: } while (value);
	ld	7 (ix), d
	ld	a, d
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a,4 (ix)
	jp	NZ,00103$
;../_ltoa.c:69: do {
	ex	de, hl
	ld	hl, 46 (sp)
	ex	de, hl
00106$:
;../_ltoa.c:70: *string++ = buffer[index];
	ld	hl, 36 (sp)
	ld	b,#0x00
	add	hl, bc
	ld	a,(hl)
	ld	(de),a
	inc	de
;../_ltoa.c:71: } while ( ++index != NUMBER_OF_DIGITS );
	inc	c
	ld	a,c
	sub	a, #0x20
	jr	NZ,00106$
;../_ltoa.c:73: *string = 0;  /* string terminator */
	xor	a, a
	ld	(de),a
	ld	sp, ix
	pop	ix
	ret
__ultoa_end::
;../_ltoa.c:76: void _ltoa(long value, char* string, unsigned char radix)
;	---------------------------------
; Function _ltoa
; ---------------------------------
__ltoa_start::
__ltoa:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_ltoa.c:78: if (value < 0 && radix == 10) {
	bit	7, 7 (ix)
	jr	Z,00102$
	ld	a,10 (ix)
	sub	a, #0x0A
	jr	NZ,00102$
;../_ltoa.c:79: *string++ = '-';
	ld	hl, 8 (sp)
	ld	(hl),#0x2D
	inc	hl
	ld	8 (sp), hl
;../_ltoa.c:80: value = -value;
	xor	a, a
	sub	a, 4 (ix)
	ld	4 (ix),a
	ld	a, #0x00
	sbc	a, 5 (ix)
	ld	5 (ix),a
	ld	a, #0x00
	sbc	a, 6 (ix)
	ld	6 (ix),a
	ld	a, #0x00
	sbc	a, 7 (ix)
	ld	7 (ix),a
00102$:
;../_ltoa.c:82: _ultoa(value, string, radix);
	ld	a,10 (ix)
	push	af
	inc	sp
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	ld	hl, 9 (sp)
	push	hl
	call	__ultoa
	add	sp, #7
	pop	ix
	ret
__ltoa_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
