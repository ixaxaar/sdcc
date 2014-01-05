;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:25 2013
;--------------------------------------------------------
	.module _free
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl __sdcc_prev_memheader
	.globl _free
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
__sdcc_prev_memheader::
	.ds 2
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
;../_free.c:62: _sdcc_find_memheader(void * p)
;	---------------------------------
; Function _sdcc_find_memheader
; ---------------------------------
__sdcc_find_memheader_start::
__sdcc_find_memheader:
;../_free.c:65: if (!p)
	ld	hl, #2+1
	add	hl, sp
	ld	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00102$
;../_free.c:66: return NULL;
	ld	hl,#0x0000
	ret
00102$:
;../_free.c:67: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
	pop	bc
	pop	de
	push	de
	push	bc
	ld	a,e
	add	a,#0xFA
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
;../_free.c:68: _sdcc_prev_memheader = pthis->prev;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#__sdcc_prev_memheader
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	(#__sdcc_prev_memheader + 1),a
;../_free.c:70: return (pthis);
	ex	de,hl
	ret
__sdcc_find_memheader_end::
;../_free.c:74: free (void *p)
;	---------------------------------
; Function free
; ---------------------------------
_free_start::
_free:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-2
;../_free.c:78: if ( p ) //For allocated pointers only!
	ld	a,5 (ix)
	or	a,4 (ix)
	jp	Z,00108$
;../_free.c:95: }
	di
;../_free.c:81: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
	ld	hl, 6 (sp)
	ld	bc, #0xFFFA
	add	hl,bc
;../_free.c:82: if ( pthis->prev ) // For the regular header
	ld	c,l
	ld	b,h
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	a,h
	jp	Z,00104$
;../_free.c:84: prev_header = pthis->prev;
	ld	0 (sp), hl
;../_free.c:85: prev_header->next = pthis->next;
	ld	l, c
	ld	h, b
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	pop	hl
	push	hl
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_free.c:86: if (pthis->next)
	ld	l, c
	ld	h, b
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,d
	or	a,e
	jr	Z,00105$
;../_free.c:88: pthis->next->prev = prev_header;
	inc	de
	inc	de
	ld	a,-2 (ix)
	ld	(de),a
	inc	de
	ld	a,-1 (ix)
	ld	(de),a
	jr	00105$
00104$:
;../_free.c:93: pthis->len = 0; //For the first header
	ld	hl,#0x0004
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00105$:
	ei
00108$:
	ld	sp, ix
	pop	ix
	ret
_free_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
