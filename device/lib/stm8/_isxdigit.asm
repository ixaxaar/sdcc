;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:50 2013
;--------------------------------------------------------
	.module _isxdigit
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isxdigit
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../_isxdigit.c: 33: char isxdigit (unsigned char c)
;	-----------------------------------------
;	 function isxdigit
;	-----------------------------------------
_isxdigit:
;	../_isxdigit.c: 35: if ( ( c >= UC('0') && c <= UC('9')) ||
	ld	a, (0x03, sp)
	cp	a, #0x30
	jrc	00105$
	ld	a, (0x03, sp)
	cp	a, #0x39
	jrule	00101$
00105$:
;	../_isxdigit.c: 36: ( c >= UC('a') && c <= UC('f')) ||
	ld	a, (0x03, sp)
	cp	a, #0x61
	jrc	00107$
	ld	a, (0x03, sp)
	cp	a, #0x66
	jrule	00101$
00107$:
;	../_isxdigit.c: 37: ( c >= UC('A') && c <= UC('F')) )
	ld	a, (0x03, sp)
	cp	a, #0x41
	jrc	00102$
	ld	a, (0x03, sp)
	cp	a, #0x46
	jrugt	00102$
00101$:
;	../_isxdigit.c: 38: return 1;
	ld	a, #0x01
	jra	00108$
00102$:
;	../_isxdigit.c: 39: return 0;
	clr	a
00108$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
