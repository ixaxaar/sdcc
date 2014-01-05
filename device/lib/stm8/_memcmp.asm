;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:52 2013
;--------------------------------------------------------
	.module _memcmp
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp
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
;	../_memcmp.c: 31: int memcmp (
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
_memcmp:
	sub	sp, #5
;	../_memcmp.c: 37: if (!count)
	ldw	x, (0x0c, sp)
	jrne	00112$
;	../_memcmp.c: 38: return(0);
	clrw	x
	jra	00107$
;	../_memcmp.c: 40: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	ldw	y, (0x0c, sp)
	ldw	(0x01, sp), y
00104$:
	ldw	x, (0x01, sp)
	decw	x
	ldw	(0x01, sp), x
	ldw	x, (0x01, sp)
	jreq	00106$
	ldw	x, (0x08, sp)
	ld	a, (x)
	ldw	y, (0x0a, sp)
	push	a
	ld	a, (y)
	ld	(0x06, sp), a
	pop	a
	cp	a, (0x05, sp)
	jrne	00106$
;	../_memcmp.c: 41: buf1 = (char *)buf1 + 1;
	incw	x
	ldw	(0x08, sp), x
;	../_memcmp.c: 42: buf2 = (char *)buf2 + 1;
	ldw	x, y
	incw	x
	ldw	(0x0a, sp), x
	jra	00104$
00106$:
;	../_memcmp.c: 45: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	ldw	x, (0x08, sp)
	ld	a, (x)
	clrw	x
	ld	xl, a
	ldw	y, (0x0a, sp)
	ld	a, (y)
	ld	(0x04, sp), a
	clr	(0x03, sp)
	subw	x, (0x03, sp)
00107$:
	addw	sp, #5
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
