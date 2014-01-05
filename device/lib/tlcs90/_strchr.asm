;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _strchr
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
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
;../_strchr.c:39: char * strchr (
;	---------------------------------
; Function strchr
; ---------------------------------
_strchr_start::
_strchr:
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;../_strchr.c:45: while (*string && *string != ch)
	ld	c,4 (ix)
	ld	b,5 (ix)
00102$:
	ld	a,(bc)
	ld	-1 (ix), a
	ld	d, a
	ld	a,-1 (ix)
	rla
	sbc	a, a
	ld	e,a
	ld	a,6 (ix)
	sub	a, d
	jr	NZ,00126$
	ld	a,7 (ix)
	sub	a, e
	jr	NZ,00126$
	ld	a,#0x01
	jr	00127$
00126$:
	xor	a,a
00127$:
	ld	d,a
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00104$
	ld	a,d
	or	a, a
	jr	NZ,00104$
;../_strchr.c:46: string++;
	inc	bc
	jp	00102$
00104$:
;../_strchr.c:48: if (*string == ch)
	ld	a,d
	or	a, a
	jr	Z,00106$
;../_strchr.c:49: return(string);
	ld	l, c
	ld	h, b
	jr	00107$
00106$:
;../_strchr.c:50: return ( NULL );
	ld	hl,#0x0000
00107$:
	inc	sp
	pop	ix
	ret
_strchr_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
