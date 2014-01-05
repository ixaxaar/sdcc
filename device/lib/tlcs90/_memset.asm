;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:25 2013
;--------------------------------------------------------
	.module _memset
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
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
;../_memset.c:41: void *memset (void *s, int c, size_t n)
;	---------------------------------
; Function memset
; ---------------------------------
_memset_start::
_memset:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_memset.c:44: register unsigned char *ret = s;
	ld	hl, 4 (sp)
;../_memset.c:46: while (n--)
	ex	de, hl
	ld	hl, 8 (sp)
	ex	de, hl
00101$:
	ld	b,e
	ld	c,d
	dec	de
	ld	a,c
	or	a,b
	jr	Z,00103$
;../_memset.c:48: *(unsigned char *) ret = c;
	ld	a,6 (ix)
	ld	(hl),a
;../_memset.c:49: ret = ((unsigned char *) ret) + 1;
	inc	hl
	jr	00101$
00103$:
;../_memset.c:52: return s;
	ld	hl, 4 (sp)
	pop	ix
	ret
_memset_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
