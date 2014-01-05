;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _strspn
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strspn
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
;../_strspn.c:31: size_t strspn (
;	---------------------------------
; Function strspn
; ---------------------------------
_strspn_start::
_strspn:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_strspn.c:39: while (ch = *string) {
	ld	bc,#0x0000
	ex	de, hl
	ld	hl, 4 (sp)
	ex	de, hl
00104$:
	ld	a,(de)
;../_strspn.c:40: if ( strchr(control,ch) )
	ld	l,a
	or	a,a
	jr	Z,00106$
	rla
	sbc	a, a
	ld	h,a
	push	bc
	push	de
	push	hl
	ld	hl, 12 (sp)
	push	hl
	call	_strchr
	add	sp, #4
	pop	de
	pop	bc
	ld	a,h
	or	a,l
	jr	Z,00106$
;../_strspn.c:41: count++ ;
	inc	bc
;../_strspn.c:44: string++ ;
	inc	de
	jp	00104$
00106$:
;../_strspn.c:47: return count ;
	ld	l, c
	ld	h, b
	pop	ix
	ret
_strspn_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
