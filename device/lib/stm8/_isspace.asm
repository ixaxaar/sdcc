;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:50 2013
;--------------------------------------------------------
	.module _isspace
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace
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
;	../_isspace.c: 33: char isspace (unsigned char c)
;	-----------------------------------------
;	 function isspace
;	-----------------------------------------
_isspace:
;	../_isspace.c: 35: if ( c == UC(' ')  ||
	ld	a, (0x03, sp)
	cp	a, #0x20
	jreq	00101$
;	../_isspace.c: 36: c == UC('\f') ||
	ld	a, (0x03, sp)
	cp	a, #0x0c
	jreq	00101$
;	../_isspace.c: 37: c == UC('\n') ||
	ld	a, (0x03, sp)
	cp	a, #0x0a
	jreq	00101$
;	../_isspace.c: 38: c == UC('\r') ||
	ld	a, (0x03, sp)
	cp	a, #0x0d
	jreq	00101$
;	../_isspace.c: 39: c == UC('\t') ||
	ld	a, (0x03, sp)
	cp	a, #0x09
	jreq	00101$
;	../_isspace.c: 40: c == UC('\v') )
	ld	a, (0x03, sp)
	cp	a, #0x0b
	jrne	00102$
00101$:
;	../_isspace.c: 41: return 1;
	ld	a, #0x01
	jra	00108$
00102$:
;	../_isspace.c: 42: return 0;
	clr	a
00108$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
