;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:50 2013
;--------------------------------------------------------
	.module _strchr
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
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
;	../_strchr.c: 39: char * strchr (
;	-----------------------------------------
;	 function strchr
;	-----------------------------------------
_strchr:
	sub	sp, #3
;	../_strchr.c: 45: while (*string && *string != ch)
	ldw	x, (0x06, sp)
00102$:
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x03, sp)
	ld	(0x02, sp), a
	ld	a, (0x02, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x01, sp), a
	pushw	x
	ldw	x, (0x03, sp)
	cpw	x, (0x0a, sp)
	popw	x
	jrne	00127$
	ld	a, #0x01
	jra	00128$
00127$:
	clr	a
00128$:
	tnz	(0x03, sp)
	jreq	00104$
	tnz	a
	jrne	00104$
;	../_strchr.c: 46: string++;
	incw	x
	jra	00102$
00104$:
;	../_strchr.c: 48: if (*string == ch)
	tnz	a
;	../_strchr.c: 49: return(string);
	jrne	00107$
;	../_strchr.c: 50: return ( NULL );
	clrw	x
00107$:
	addw	sp, #3
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
