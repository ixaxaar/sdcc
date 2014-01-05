;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _isdigit
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isdigit
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
;../_isdigit.c:33: char isdigit (unsigned char c)
;	---------------------------------
; Function isdigit
; ---------------------------------
_isdigit_start::
_isdigit:
;../_isdigit.c:35: if ( c >= UC('0') && c <= UC('9') )
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	sub	a, #0x30
	jr	C,00102$
	ld	a,#0x39
	sub	a, 0 (iy)
	jr	C,00102$
;../_isdigit.c:36: return 1;
	ld	l,#0x01
	ret
00102$:
;../_isdigit.c:37: return 0;
	ld	l,#0x00
	ret
_isdigit_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
