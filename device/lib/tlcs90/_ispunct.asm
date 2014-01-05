;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _ispunct
	.optsdcc -mtlcs90
	
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
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;../_ispunct.c:31: char ispunct (unsigned char c)
;	---------------------------------
; Function ispunct
; ---------------------------------
_ispunct_start::
_ispunct:
;../_ispunct.c:33: if ( isprint (c) &&
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_isprint
	inc	sp
	ld	a,l
	or	a, a
	jp	Z,00102$
;../_ispunct.c:34: !islower(c) &&
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_islower
	inc	sp
	ld	a,l
	or	a, a
	jp	NZ,00102$
;../_ispunct.c:35: !isupper(c) &&
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_isupper
	inc	sp
	ld	a,l
	or	a, a
	jp	NZ,00102$
;../_ispunct.c:36: !isspace(c) &&
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_isspace
	inc	sp
	ld	a,l
	or	a, a
	jr	NZ,00102$
;../_ispunct.c:37: !isdigit(c) )
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_isdigit
	inc	sp
	ld	a,l
	or	a, a
	jr	NZ,00102$
;../_ispunct.c:38: return 1;
	ld	l,#0x01
	ret
00102$:
;../_ispunct.c:39: return 0;
	ld	l,#0x00
	ret
_ispunct_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
