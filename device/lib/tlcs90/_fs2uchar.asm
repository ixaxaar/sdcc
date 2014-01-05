;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:17 2013
;--------------------------------------------------------
	.module _fs2uchar
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2uchar
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
;../_fs2uchar.c:51: unsigned char __fs2uchar (float f)
;	---------------------------------
; Function __fs2uchar
; ---------------------------------
___fs2uchar_start::
___fs2uchar:
	push	ix
;../_fs2uchar.c:53: unsigned long ul=__fs2ulong(f);
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	___fs2ulong
	add	sp, #4
;../_fs2uchar.c:54: if (ul>=UCHAR_MAX) return UCHAR_MAX;
	ld	a,l
	sub	a, #0xFF
	ld	a,h
	sbc	a, #0x00
	ld	a,e
	sbc	a, #0x00
	ld	a,d
	sbc	a, #0x00
	jr	C,00102$
	ld	l,#0xFF
;../_fs2uchar.c:55: return ul;
00102$:
	pop	ix
	ret
___fs2uchar_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
