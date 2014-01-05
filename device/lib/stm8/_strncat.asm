;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:51 2013
;--------------------------------------------------------
	.module _strncat
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat
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
;	../_strncat.c: 31: char * strncat (
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
_strncat:
	sub	sp, #8
;	../_strncat.c: 37: char *start = front;
	ldw	y, (0x0b, sp)
	ldw	(0x01, sp), y
;	../_strncat.c: 39: while (*front++);
	ldw	x, (0x01, sp)
00101$:
	ld	a, (x)
	incw	x
	tnz	a
	jrne	00101$
;	../_strncat.c: 41: front--;
	decw	x
	ldw	(0x0b, sp), x
;	../_strncat.c: 43: while (count--)
	ldw	y, (0x0d, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x0b, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x0f, sp)
	ldw	(0x05, sp), y
00106$:
	ldw	y, (0x05, sp)
	ldw	x, (0x05, sp)
	decw	x
	ldw	(0x05, sp), x
	tnzw	y
	jreq	00108$
;	../_strncat.c: 44: if (!(*front++ = *back++))
	ldw	x, (0x03, sp)
	ld	a, (x)
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	ldw	x, (0x07, sp)
	ld	(x), a
	ldw	x, (0x07, sp)
	incw	x
	ldw	(0x07, sp), x
	ldw	y, (0x07, sp)
	ldw	(0x0b, sp), y
	tnz	a
	jrne	00106$
;	../_strncat.c: 45: return(start);
	ldw	x, (0x01, sp)
	jra	00109$
00108$:
;	../_strncat.c: 47: *front = '\0';
	ldw	x, (0x0b, sp)
	clr	(x)
;	../_strncat.c: 48: return(start);
	ldw	x, (0x01, sp)
00109$:
	addw	sp, #8
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
