;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:32 2013
;--------------------------------------------------------
	.module _slong2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___slong2fs
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
;	../_slong2fs.c: 79: float __slong2fs (signed long sl) {
;	-----------------------------------------
;	 function __slong2fs
;	-----------------------------------------
___slong2fs:
;	../_slong2fs.c: 80: if (sl<0) 
	ldw	x, (0x05, sp)
	cpw	x, #0x0000
	ld	a, (0x04, sp)
	sbc	a, #0x00
	ld	a, (0x03, sp)
	sbc	a, #0x00
	jrsge	00102$
;	../_slong2fs.c: 81: return -__ulong2fs(-sl);
	ldw	y, (0x05, sp)
	negw	y
	clr	a
	sbc	a, (0x04, sp)
	ld	xl, a
	clr	a
	sbc	a, (0x03, sp)
	ld	xh, a
	pushw	y
	pushw	x
	call	___ulong2fs
	addw	sp, #4
	ld	a, yh
	xor	a, #0x80
	ld	yh, a
	jra	00104$
00102$:
;	../_slong2fs.c: 83: return __ulong2fs(sl);
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	call	___ulong2fs
	addw	sp, #4
00104$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
