;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _iscntrl
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _iscntrl
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
;../_iscntrl.c:31: char iscntrl (unsigned char c)
;	---------------------------------
; Function iscntrl
; ---------------------------------
_iscntrl_start::
_iscntrl:
;../_iscntrl.c:33: if  ( c <= 0x1F || c == 0x7f )
	ld	a,#0x1F
	ld	iy,#2
	add	iy,sp
	sub	a, 0 (iy)
	jr	NC,00101$
	ld	a,0 (iy)
	sub	a, #0x7F
	jr	NZ,00102$
00101$:
;../_iscntrl.c:34: return 1;
	ld	l,#0x01
	ret
00102$:
;../_iscntrl.c:35: return 0;
	ld	l,#0x00
	ret
_iscntrl_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
