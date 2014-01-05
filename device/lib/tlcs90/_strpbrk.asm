;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _strpbrk
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strpbrk
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
;../_strpbrk.c:31: char * strpbrk (
;	---------------------------------
; Function strpbrk
; ---------------------------------
_strpbrk_start::
_strpbrk:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_strpbrk.c:36: char *ret = NULL;
	ld	bc,#0x0000
;../_strpbrk.c:39: while (ch = *control) {
	ld	hl, 6 (sp)
00105$:
	ld	a, (hl)
;../_strpbrk.c:40: char * p = strchr(string, ch);
	or	a,a
	jp	Z,00107$
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	push	hl
	push	bc
	push	de
	ex	de, hl
	ld	hl, 10 (sp)
	push	hl
	call	_strchr
	add	sp, #4
	ex	de,hl
	pop	bc
	pop	hl
;../_strpbrk.c:41: if (p != NULL && (ret == NULL || p < ret)) {
	ld	a,d
	or	a,e
	jr	Z,00102$
	ld	a,b
	or	a,c
	jr	Z,00101$
	ld	a,e
	sub	a, c
	ld	a,d
	sbc	a, b
	jr	NC,00102$
00101$:
;../_strpbrk.c:42: ret = p;
	ld	c, e
	ld	b, d
00102$:
;../_strpbrk.c:44: control++;
	inc	hl
	jp	00105$
00107$:
;../_strpbrk.c:47: return (ret);
	ld	l, c
	ld	h, b
	pop	ix
	ret
_strpbrk_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
