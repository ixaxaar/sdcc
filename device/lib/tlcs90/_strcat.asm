;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _strcat
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat
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
;../_strcat.c:31: char * strcat (
;	---------------------------------
; Function strcat
; ---------------------------------
_strcat_start::
_strcat:
	push	ix
;../_strcat.c:36: char * cp = dst;
	ld	hl, 4 (sp)
;../_strcat.c:38: while( *cp )
00101$:
	ld	a,(hl)
	or	a, a
	jr	Z,00111$
;../_strcat.c:39: cp++;                   /* find end of dst */
	inc	hl
	jr	00101$
;../_strcat.c:41: while( *cp++ = *src++ ) ;       /* Copy src to end of dst */
00111$:
	ld	iy, 6 (sp)
	ex	de,hl
00104$:
	ld	a, 0 (iy)
	inc	iy
	ld	(de),a
	inc	de
	or	a, a
	jr	NZ,00104$
;../_strcat.c:43: return( dst );                  /* return dst */
	ld	hl, 4 (sp)
	pop	ix
	ret
_strcat_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
