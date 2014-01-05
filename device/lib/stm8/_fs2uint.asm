;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:32 2013
;--------------------------------------------------------
	.module _fs2uint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2uint
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
;	../_fs2uint.c: 54: unsigned int __fs2uint (float f)
;	-----------------------------------------
;	 function __fs2uint
;	-----------------------------------------
___fs2uint:
	sub	sp, #4
;	../_fs2uint.c: 56: unsigned long ul=__fs2ulong(f);
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	___fs2ulong
	addw	sp, #4
	ldw	(0x01, sp), y
;	../_fs2uint.c: 57: if (ul>=UINT_MAX) return UINT_MAX;
	cpw	x, #0xffff
	ld	a, (0x02, sp)
	sbc	a, #0x00
	ld	a, (0x01, sp)
	sbc	a, #0x00
	jrc	00102$
	ldw	x, #0xffff
;	../_fs2uint.c: 58: return ul;
00102$:
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
