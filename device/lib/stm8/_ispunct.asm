;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:50 2013
;--------------------------------------------------------
	.module _ispunct
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace
	.globl _isprint
	.globl _isupper
	.globl _islower
	.globl _isdigit
	.globl _ispunct
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
;	../_ispunct.c: 31: char ispunct (unsigned char c)
;	-----------------------------------------
;	 function ispunct
;	-----------------------------------------
_ispunct:
;	../_ispunct.c: 33: if ( isprint (c) &&
	ld	a, (0x03, sp)
	push	a
	call	_isprint
	addw	sp, #1
	tnz	a
	jreq	00102$
;	../_ispunct.c: 34: !islower(c) &&
	ld	a, (0x03, sp)
	push	a
	call	_islower
	addw	sp, #1
	tnz	a
	jrne	00102$
;	../_ispunct.c: 35: !isupper(c) &&
	ld	a, (0x03, sp)
	push	a
	call	_isupper
	addw	sp, #1
	tnz	a
	jrne	00102$
;	../_ispunct.c: 36: !isspace(c) &&
	ld	a, (0x03, sp)
	push	a
	call	_isspace
	addw	sp, #1
	tnz	a
	jrne	00102$
;	../_ispunct.c: 37: !isdigit(c) )
	ld	a, (0x03, sp)
	push	a
	call	_isdigit
	addw	sp, #1
	tnz	a
	jrne	00102$
;	../_ispunct.c: 38: return 1;
	ld	a, #0x01
	jra	00107$
00102$:
;	../_ispunct.c: 39: return 0;
	clr	a
00107$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
