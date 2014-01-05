;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module _isxdigit
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isxdigit
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
;../_isxdigit.c:33: char isxdigit (unsigned char c)
;	---------------------------------
; Function isxdigit
; ---------------------------------
_isxdigit_start::
_isxdigit:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_isxdigit.c:35: if ( ( c >= UC('0') && c <= UC('9')) ||
	ld	a,4 (ix)
	sub	a, #0x30
	jr	C,00105$
	ld	a,#0x39
	sub	a, 4 (ix)
	jr	NC,00101$
00105$:
;../_isxdigit.c:36: ( c >= UC('a') && c <= UC('f')) ||
	ld	a,4 (ix)
	sub	a, #0x61
	jr	C,00107$
	ld	a,#0x66
	sub	a, 4 (ix)
	jr	NC,00101$
00107$:
;../_isxdigit.c:37: ( c >= UC('A') && c <= UC('F')) )
	ld	a,4 (ix)
	sub	a, #0x41
	jr	C,00102$
	ld	a,#0x46
	sub	a, 4 (ix)
	jr	C,00102$
00101$:
;../_isxdigit.c:38: return 1;
	ld	l,#0x01
	jr	00108$
00102$:
;../_isxdigit.c:39: return 0;
	ld	l,#0x00
00108$:
	pop	ix
	ret
_isxdigit_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
