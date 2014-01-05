;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:25 2013
;--------------------------------------------------------
	.module _memchr
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memchr
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
;../_memchr.c:31: void *memchr(const void *s, int c, size_t n)
;	---------------------------------
; Function memchr
; ---------------------------------
_memchr_start::
_memchr:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-4
;../_memchr.c:33: unsigned char *p = (unsigned char *)s;
	ex	de, hl
	ld	hl, 8 (sp)
	ex	de, hl
;../_memchr.c:34: unsigned char *end = p + n;
	ld	hl, 12 (sp)
	add	hl,de
	ld	0 (sp), hl
;../_memchr.c:38: return(0);
	ld	c, e
	ld	b, d
00105$:
;../_memchr.c:35: for(; p != end; p++)
	ld	a,-4 (ix)
	sub	a, c
	jr	NZ,00121$
	ld	a,-3 (ix)
	sub	a, b
	jr	Z,00103$
00121$:
;../_memchr.c:36: if(*p == c)
	ld	a,(bc)
	ld	-2 (ix),a
	ld	-1 (ix),#0x00
	ld	a,6 (ix)
	sub	a, -2 (ix)
	jr	NZ,00106$
	ld	a,7 (ix)
	sub	a, -1 (ix)
	jr	NZ,00106$
;../_memchr.c:37: return((void *)p);
	ex	de,hl
	jr	00107$
00106$:
;../_memchr.c:35: for(; p != end; p++)
	inc	bc
	ld	e, c
	ld	d, b
	jr	00105$
00103$:
;../_memchr.c:38: return(0);
	ld	hl,#0x0000
00107$:
	ld	sp, ix
	pop	ix
	ret
_memchr_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
