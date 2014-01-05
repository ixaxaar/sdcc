;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:51 2013
;--------------------------------------------------------
	.module _strncpy
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy
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
;	../_strncpy.c: 33: char *strncpy (
;	-----------------------------------------
;	 function strncpy
;	-----------------------------------------
_strncpy:
	sub	sp, #10
;	../_strncpy.c: 38: register char * d1 =  d;
	ldw	y, (0x0d, sp)
	ldw	(0x01, sp), y
;	../_strncpy.c: 40: while ( n && *s )
	ldw	y, (0x11, sp)
	ldw	(0x05, sp), y
	ldw	y, (0x0f, sp)
	ldw	(0x07, sp), y
	ldw	x, (0x01, sp)
00102$:
	ldw	y, (0x05, sp)
	jreq	00114$
	ldw	y, (0x07, sp)
	ld	a, (y)
	tnz	a
	jreq	00114$
;	../_strncpy.c: 42: n-- ;
	ldw	y, (0x05, sp)
	decw	y
	ldw	(0x05, sp), y
;	../_strncpy.c: 43: *d++ = *s++ ;
	ldw	y, (0x07, sp)
	incw	y
	ldw	(0x07, sp), y
	ld	(x), a
	incw	x
	jra	00102$
;	../_strncpy.c: 45: while ( n-- )
00114$:
	ldw	y, (0x05, sp)
	ldw	(0x09, sp), y
00105$:
	ldw	y, (0x09, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x09, sp)
	decw	y
	ldw	(0x09, sp), y
	ldw	y, (0x03, sp)
	jreq	00107$
;	../_strncpy.c: 47: *d++ = '\0' ;
	clr	(x)
	incw	x
	jra	00105$
00107$:
;	../_strncpy.c: 49: return d1;
	ldw	x, (0x01, sp)
	addw	sp, #10
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
