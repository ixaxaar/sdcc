;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:52 2013
;--------------------------------------------------------
	.module _memchr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memchr
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
;	../_memchr.c: 31: void *memchr(const void *s, int c, size_t n)
;	-----------------------------------------
;	 function memchr
;	-----------------------------------------
_memchr:
	sub	sp, #4
;	../_memchr.c: 33: unsigned char *p = (unsigned char *)s;
	ldw	y, (0x07, sp)
;	../_memchr.c: 34: unsigned char *end = p + n;
	ldw	x, y
	addw	x, (0x0b, sp)
	ldw	(0x01, sp), x
;	../_memchr.c: 38: return(0);
	ldw	x, y
00105$:
;	../_memchr.c: 35: for(; p != end; p++)
	cpw	x, (0x01, sp)
	jreq	00103$
;	../_memchr.c: 36: if(*p == c)
	ld	a, (x)
	clr	(0x03, sp)
	pushw	x
	ld	xl, a
	ld	a, (0x05, sp)
	ld	xh, a
	cpw	x, (0x0b, sp)
	popw	x
	jrne	00106$
;	../_memchr.c: 37: return((void *)p);
	ldw	x, y
	jra	00107$
00106$:
;	../_memchr.c: 35: for(; p != end; p++)
	incw	x
	ldw	y, x
	jra	00105$
00103$:
;	../_memchr.c: 38: return(0);
	clrw	x
00107$:
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
