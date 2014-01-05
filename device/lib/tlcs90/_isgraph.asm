;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _isgraph
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isgraph
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
;../_isgraph.c:31: char isgraph (unsigned char c)
;	---------------------------------
; Function isgraph
; ---------------------------------
_isgraph_start::
_isgraph:
;../_isgraph.c:33: if ( c >= 0x21 && c <= 0x7e )
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	sub	a, #0x21
	jr	C,00102$
	ld	a,#0x7E
	sub	a, 0 (iy)
	jr	C,00102$
;../_isgraph.c:34: return 1;
	ld	l,#0x01
	ret
00102$:
;../_isgraph.c:35: return 0;
	ld	l,#0x00
	ret
_isgraph_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
