;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _isupper
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isupper
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
;../_isupper.c:33: char isupper (unsigned char c)
;	---------------------------------
; Function isupper
; ---------------------------------
_isupper_start::
_isupper:
;../_isupper.c:35: if ( c >= UC('A') && c <= UC('Z') )
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	sub	a, #0x41
	jr	C,00102$
	ld	a,#0x5A
	sub	a, 0 (iy)
	jr	C,00102$
;../_isupper.c:36: return 1;
	ld	l,#0x01
	ret
00102$:
;../_isupper.c:37: return 0;
	ld	l,#0x00
	ret
_isupper_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
