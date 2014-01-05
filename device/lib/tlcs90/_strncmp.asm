;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _strncmp
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
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
;../_strncmp.c:31: int strncmp (
;	---------------------------------
; Function strncmp
; ---------------------------------
_strncmp_start::
_strncmp:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-4
;../_strncmp.c:37: if (!count)
	ld	a,9 (ix)
	or	a,8 (ix)
	jr	NZ,00114$
;../_strncmp.c:38: return(0);
	ld	hl,#0x0000
	jp	00108$
;../_strncmp.c:40: while (--count && *first && *first == *last) {
00114$:
	ld	c,4 (ix)
	ld	b,5 (ix)
	ex	de, hl
	ld	hl, 10 (sp)
	ex	de, hl
	ld	a,8 (ix)
	ld	-2 (ix),a
	ld	a,9 (ix)
	ld	-1 (ix),a
00105$:
	dec	2 (sp)
	ld	hl, 2 (sp)
	ld	a,(bc)
	ld	-4 (ix),a
	ld	a,(de)
	ld	-3 (ix),a
	ld	a,-1 (ix)
	or	a,-2 (ix)
	jr	Z,00107$
	ld	a,-4 (ix)
	or	a, a
	jr	Z,00107$
	ld	a,-4 (ix)
	sub	a, -3 (ix)
	jr	NZ,00107$
;../_strncmp.c:41: first++;
	inc	bc
;../_strncmp.c:42: last++;
	inc	de
	jr	00105$
00107$:
;../_strncmp.c:45: return( *first - *last );
	ld	l,-4 (ix)
	ld	a,-4 (ix)
	rla
	sbc	a, a
	ld	h,a
	ld	e,-3 (ix)
	ld	a,-3 (ix)
	rla
	sbc	a, a
	ld	d,a
	cp	a, a
	sbc	hl, de
00108$:
	ld	sp, ix
	pop	ix
	ret
_strncmp_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
