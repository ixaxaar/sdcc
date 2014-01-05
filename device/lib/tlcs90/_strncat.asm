;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat
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
;../_strncat.c:31: char * strncat (
;	---------------------------------
; Function strncat
; ---------------------------------
_strncat_start::
_strncat:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-6
;../_strncat.c:37: char *start = front;
	ld	a,4 (ix)
	ld	-6 (ix),a
	ld	a,5 (ix)
	ld	-5 (ix),a
;../_strncat.c:39: while (*front++);
	pop	hl
	push	hl
00101$:
	ld	a,(hl)
	inc	hl
	or	a, a
	jr	NZ,00101$
;../_strncat.c:41: front--;
	ld	a,l
	add	a,#0xFF
	ld	4 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	5 (ix),a
;../_strncat.c:43: while (count--)
	ld	a,6 (ix)
	ld	-2 (ix),a
	ld	a,7 (ix)
	ld	-1 (ix),a
	ld	a,4 (ix)
	ld	-4 (ix),a
	ld	a,5 (ix)
	ld	-3 (ix),a
	ex	de, hl
	ld	hl, 14 (sp)
	ex	de, hl
00106$:
	ld	l, e
	ld	h, d
	dec	de
	ld	a,h
	or	a,l
	jr	Z,00108$
;../_strncat.c:44: if (!(*front++ = *back++))
	ld	hl, 4 (sp)
	ld	b,(hl)
	inc	-2 (ix)
	jr	NZ,00132$
	inc	-1 (ix)
00132$:
	ld	hl, 2 (sp)
	ld	(hl),b
	inc	-4 (ix)
	jr	NZ,00133$
	inc	-3 (ix)
00133$:
	ld	a,-4 (ix)
	ld	4 (ix),a
	ld	a,-3 (ix)
	ld	5 (ix),a
	ld	a,b
	or	a, a
	jp	NZ,00106$
;../_strncat.c:45: return(start);
	pop	hl
	push	hl
	jr	00109$
00108$:
;../_strncat.c:47: *front = '\0';
	ld	hl, 10 (sp)
	ld	(hl),#0x00
;../_strncat.c:48: return(start);
	pop	hl
	push	hl
00109$:
	ld	sp, ix
	pop	ix
	ret
_strncat_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
