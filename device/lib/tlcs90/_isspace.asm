;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _isspace
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace
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
;../_isspace.c:33: char isspace (unsigned char c)
;	---------------------------------
; Function isspace
; ---------------------------------
_isspace_start::
_isspace:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_isspace.c:35: if ( c == UC(' ')  ||
	ld	a,4 (ix)
	sub	a, #0x20
	jr	Z,00101$
;../_isspace.c:36: c == UC('\f') ||
	ld	a,4 (ix)
	sub	a, #0x0C
	jr	Z,00101$
;../_isspace.c:37: c == UC('\n') ||
	ld	a,4 (ix)
	sub	a, #0x0A
	jr	Z,00101$
;../_isspace.c:38: c == UC('\r') ||
	ld	a,4 (ix)
	sub	a, #0x0D
	jr	Z,00101$
;../_isspace.c:39: c == UC('\t') ||
	ld	a,4 (ix)
	sub	a, #0x09
	jr	Z,00101$
;../_isspace.c:40: c == UC('\v') )
	ld	a,4 (ix)
	sub	a, #0x0B
	jr	NZ,00102$
00101$:
;../_isspace.c:41: return 1;
	ld	l,#0x01
	jr	00108$
00102$:
;../_isspace.c:42: return 0;
	ld	l,#0x00
00108$:
	pop	ix
	ret
_isspace_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
