;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _strncpy
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy
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
;../_strncpy.c:33: char *strncpy (
;	---------------------------------
; Function strncpy
; ---------------------------------
_strncpy_start::
_strncpy:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-3
;../_strncpy.c:38: register char * d1 =  d;
	ld	c,4 (ix)
	ld	b,5 (ix)
;../_strncpy.c:40: while ( n && *s )
	ex	de, hl
	ld	hl, 11 (sp)
	ex	de, hl
	ld	hl, 9 (sp)
	push	bc
	pop	iy
00102$:
	ld	a,d
	or	a,e
	jr	Z,00114$
	ld	a,(hl)
	ld	-1 (ix), a
	or	a, a
	jr	Z,00114$
;../_strncpy.c:42: n-- ;
	dec	de
;../_strncpy.c:43: *d++ = *s++ ;
	ld	a,-1 (ix)
	inc	hl
	ld	0 (iy), a
	inc	iy
	jr	00102$
;../_strncpy.c:45: while ( n-- )
00114$:
	inc	sp
	inc	sp
	push	de
00105$:
	pop	de
	push	de
	pop	hl
	push	hl
	dec	hl
	ex	(sp), hl
	ld	a,d
	or	a,e
	jr	Z,00107$
;../_strncpy.c:47: *d++ = '\0' ;
	ld	0 (iy), #0x00
	inc	iy
	jr	00105$
00107$:
;../_strncpy.c:49: return d1;
	ld	l, c
	ld	h, b
	ld	sp, ix
	pop	ix
	ret
_strncpy_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
