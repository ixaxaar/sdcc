;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:52 2013
;--------------------------------------------------------
	.module _memcpy
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
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
;	../_memcpy.c: 36: void * memcpy (
;	-----------------------------------------
;	 function memcpy
;	-----------------------------------------
_memcpy:
	sub	sp, #8
;	../_memcpy.c: 42: void * ret = dst;
	ldw	y, (0x0b, sp)
	ldw	(0x01, sp), y
;	../_memcpy.c: 43: char * d = dst;
	ldw	y, (0x0b, sp)
;	../_memcpy.c: 44: char * s = src;
	ldw	x, (0x0d, sp)
;	../_memcpy.c: 49: while (acount--) {
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
	ldw	y, (0x0f, sp)
00101$:
	ldw	(0x03, sp), y
	decw	y
	ldw	x, (0x03, sp)
	jreq	00103$
;	../_memcpy.c: 50: *d++ = *s++;
	ldw	x, (0x07, sp)
	ld	a, (x)
	ldw	x, (0x07, sp)
	incw	x
	ldw	(0x07, sp), x
	ldw	x, (0x05, sp)
	ld	(x), a
	ldw	x, (0x05, sp)
	incw	x
	ldw	(0x05, sp), x
	jra	00101$
00103$:
;	../_memcpy.c: 53: return(ret);
	ldw	x, (0x01, sp)
	addw	sp, #8
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
