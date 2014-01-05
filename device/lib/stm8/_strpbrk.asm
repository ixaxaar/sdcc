;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:51 2013
;--------------------------------------------------------
	.module _strpbrk
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strpbrk
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
;	../_strpbrk.c: 31: char * strpbrk (
;	-----------------------------------------
;	 function strpbrk
;	-----------------------------------------
_strpbrk:
	sub	sp, #4
;	../_strpbrk.c: 36: char *ret = NULL;
	clrw	x
	ldw	(0x01, sp), x
;	../_strpbrk.c: 39: while (ch = *control) {
	ldw	y, (0x09, sp)
	ldw	(0x03, sp), y
00105$:
	ldw	x, (0x03, sp)
	ld	a, (x)
	ld	xl, a
	tnz	a
	jreq	00107$
;	../_strpbrk.c: 40: char * p = strchr(string, ch);
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	_strchr
	addw	sp, #4
;	../_strpbrk.c: 41: if (p != NULL && (ret == NULL || p < ret)) {
	tnzw	x
	jreq	00102$
	ldw	y, (0x01, sp)
	jreq	00101$
	cpw	x, (0x01, sp)
	jrnc	00102$
00101$:
;	../_strpbrk.c: 42: ret = p;
	ldw	(0x01, sp), x
00102$:
;	../_strpbrk.c: 44: control++;
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	jra	00105$
00107$:
;	../_strpbrk.c: 47: return (ret);
	ldw	x, (0x01, sp)
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
