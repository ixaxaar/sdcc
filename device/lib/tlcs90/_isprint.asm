;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _isprint
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isprint
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
;../_isprint.c:31: char isprint (unsigned char c)
;	---------------------------------
; Function isprint
; ---------------------------------
_isprint_start::
_isprint:
;../_isprint.c:33: if ( c >= 0x20 && c <= 0x7e )
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	sub	a, #0x20
	jr	C,00102$
	ld	a,#0x7E
	sub	a, 0 (iy)
	jr	C,00102$
;../_isprint.c:34: return 1;
	ld	l,#0x01
	ret
00102$:
;../_isprint.c:35: return 0;
	ld	l,#0x00
	ret
_isprint_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
