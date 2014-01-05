;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:52 2013
;--------------------------------------------------------
	.module _memset
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
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
;	../_memset.c: 41: void *memset (void *s, int c, size_t n)
;	-----------------------------------------
;	 function memset
;	-----------------------------------------
_memset:
	sub	sp, #2
;	../_memset.c: 44: register unsigned char *ret = s;
	ldw	y, (0x05, sp)
;	../_memset.c: 46: while (n--)
	ldw	(0x01, sp), y
	ldw	y, (0x09, sp)
00101$:
	ldw	x, y
	decw	y
	tnzw	x
	jreq	00103$
;	../_memset.c: 48: *(unsigned char *) ret = c;
	ld	a, (0x08, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
;	../_memset.c: 49: ret = ((unsigned char *) ret) + 1;
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x01, sp), x
	jra	00101$
00103$:
;	../_memset.c: 52: return s;
	ldw	x, (0x05, sp)
	addw	sp, #2
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
