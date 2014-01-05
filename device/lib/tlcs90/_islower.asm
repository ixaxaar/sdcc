;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _islower
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _islower
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
;../_islower.c:33: char islower (unsigned char c)
;	---------------------------------
; Function islower
; ---------------------------------
_islower_start::
_islower:
;../_islower.c:35: if  ( c >= UC('a') && c <= UC('z') )
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	sub	a, #0x61
	jr	C,00102$
	ld	a,#0x7A
	sub	a, 0 (iy)
	jr	C,00102$
;../_islower.c:36: return 1;
	ld	l,#0x01
	ret
00102$:
;../_islower.c:37: return 0;
	ld	l,#0x00
	ret
_islower_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
