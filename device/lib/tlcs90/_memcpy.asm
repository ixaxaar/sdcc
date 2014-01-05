;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:25 2013
;--------------------------------------------------------
	.module _memcpy
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
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
;../_memcpy.c:36: void * memcpy (
;	---------------------------------
; Function memcpy
; ---------------------------------
_memcpy_start::
_memcpy:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-4
;../_memcpy.c:42: void * ret = dst;
	ld	a,4 (ix)
	ld	-4 (ix),a
	ld	a,5 (ix)
	ld	-3 (ix),a
;../_memcpy.c:43: char * d = dst;
	ld	a,4 (ix)
	ld	-2 (ix),a
	ld	a,5 (ix)
	ld	-1 (ix),a
;../_memcpy.c:44: char * s = src;
	ld	c,6 (ix)
	ld	b,7 (ix)
;../_memcpy.c:49: while (acount--) {
	ex	de, hl
	ld	hl, 12 (sp)
	ex	de, hl
00101$:
	ld	l, e
	ld	h, d
	dec	de
	ld	a,h
	or	a,l
	jr	Z,00103$
;../_memcpy.c:50: *d++ = *s++;
	ld	a,(bc)
	inc	bc
	ld	hl, 2 (sp)
	ld	(hl),a
	inc	-2 (ix)
	jr	NZ,00101$
	inc	-1 (ix)
	jr	00101$
00103$:
;../_memcpy.c:53: return(ret);
	pop	hl
	push	hl
	ld	sp, ix
	pop	ix
	ret
_memcpy_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
