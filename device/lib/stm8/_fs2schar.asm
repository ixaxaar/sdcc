;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:32 2013
;--------------------------------------------------------
	.module _fs2schar
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slong
	.globl ___fs2schar
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
;	../_fs2schar.c: 87: signed char __fs2schar (float f)
;	-----------------------------------------
;	 function __fs2schar
;	-----------------------------------------
___fs2schar:
	sub	sp, #4
;	../_fs2schar.c: 89: signed long sl=__fs2slong(f);
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	___fs2slong
	addw	sp, #4
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	../_fs2schar.c: 90: if (sl>=SCHAR_MAX)
	ldw	x, (0x03, sp)
	cpw	x, #0x007f
	ld	a, (0x02, sp)
	sbc	a, #0x00
	ld	a, (0x01, sp)
	sbc	a, #0x00
	jrslt	00102$
;	../_fs2schar.c: 91: return SCHAR_MAX;
	ld	a, #0x7f
	jra	00105$
00102$:
;	../_fs2schar.c: 92: if (sl<=SCHAR_MIN)
	ldw	x, #0xff80
	cpw	x, (0x03, sp)
	ld	a, #0xff
	sbc	a, (0x02, sp)
	ld	a, #0xff
	sbc	a, (0x01, sp)
	jrslt	00104$
;	../_fs2schar.c: 93: return -SCHAR_MIN;
	ld	a, #0x80
	jra	00105$
00104$:
;	../_fs2schar.c: 94: return sl;
	ld	a, (0x04, sp)
00105$:
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
