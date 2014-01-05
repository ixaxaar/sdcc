;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:29:00 2013
;--------------------------------------------------------
	.module _ltoa
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __ltoa
	.globl __ultoa
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../_ltoa.c: 56: void _ultoa(unsigned long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _ultoa
;	-----------------------------------------
__ultoa:
	sub	sp, #39
;	../_ltoa.c: 61: do {
	ldw	x, sp
	incw	x
	incw	x
	ldw	(0x22, sp), x
	ld	a, #0x20
	ld	(0x01, sp), a
00103$:
;	../_ltoa.c: 62: unsigned char c = '0' + (value % radix);
	ld	a, (0x30, sp)
	ld	(0x27, sp), a
	clr	(0x26, sp)
	clr	(0x25, sp)
	clr	(0x24, sp)
	ldw	x, (0x26, sp)
	pushw	x
	ldw	x, (0x26, sp)
	pushw	x
	ldw	x, (0x30, sp)
	pushw	x
	ldw	x, (0x30, sp)
	pushw	x
	call	__modulong
	addw	sp, #8
	ld	a, xl
	add	a, #0x30
;	../_ltoa.c: 63: if (c > (unsigned char)'9')
	cp	a, #0x39
	jrule	00102$
;	../_ltoa.c: 64: c += 'A' - '9' - 1;
	add	a, #0x07
00102$:
;	../_ltoa.c: 65: buffer[--index] = c;
	dec	(0x01, sp)
	clrw	x
	exg	a, xl
	ld	a, (0x01, sp)
	exg	a, xl
	addw	x, (0x22, sp)
	ld	(x), a
;	../_ltoa.c: 66: value /= radix;
	ldw	x, (0x26, sp)
	pushw	x
	ldw	x, (0x26, sp)
	pushw	x
	ldw	x, (0x30, sp)
	pushw	x
	ldw	x, (0x30, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x2c, sp), x
	ldw	(0x2a, sp), y
;	../_ltoa.c: 67: } while (value);
	ldw	x, (0x2c, sp)
	jrne	00103$
	ldw	x, (0x2a, sp)
	jrne	00103$
;	../_ltoa.c: 69: do {
	ldw	x, (0x2e, sp)
00106$:
;	../_ltoa.c: 70: *string++ = buffer[index];
	clrw	y
	ld	a, (0x01, sp)
	ld	yl, a
	addw	y, (0x22, sp)
	ld	a, (y)
	ld	(x), a
	incw	x
;	../_ltoa.c: 71: } while ( ++index != NUMBER_OF_DIGITS );
	inc	(0x01, sp)
	ld	a, (0x01, sp)
	cp	a, #0x20
	jrne	00106$
;	../_ltoa.c: 73: *string = 0;  /* string terminator */
	clr	(x)
	addw	sp, #39
	ret
;	../_ltoa.c: 76: void _ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _ltoa
;	-----------------------------------------
__ltoa:
;	../_ltoa.c: 78: if (value < 0 && radix == 10) {
	ldw	x, (0x05, sp)
	cpw	x, #0x0000
	ld	a, (0x04, sp)
	sbc	a, #0x00
	ld	a, (0x03, sp)
	sbc	a, #0x00
	jrsge	00102$
	ld	a, (0x09, sp)
	cp	a, #0x0a
	jrne	00102$
;	../_ltoa.c: 79: *string++ = '-';
	ldw	x, (0x07, sp)
	ld	a, #0x2d
	ld	(x), a
	incw	x
	ldw	(0x07, sp), x
;	../_ltoa.c: 80: value = -value;
	ldw	y, (0x05, sp)
	negw	y
	clr	a
	sbc	a, (0x04, sp)
	ld	xl, a
	clr	a
	sbc	a, (0x03, sp)
	ld	xh, a
	ldw	(0x05, sp), y
	ldw	(0x03, sp), x
00102$:
;	../_ltoa.c: 82: _ultoa(value, string, radix);
	ld	a, (0x09, sp)
	push	a
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	call	__ultoa
	addw	sp, #7
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
