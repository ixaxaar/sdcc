;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:50 2013
;--------------------------------------------------------
	.module labs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _labs
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
;	../labs.c: 63: long int labs(long int j)
;	-----------------------------------------
;	 function labs
;	-----------------------------------------
_labs:
;	../labs.c: 65: return (j < 0) ? -j : j;
	ldw	x, (0x05, sp)
	cpw	x, #0x0000
	ld	a, (0x04, sp)
	sbc	a, #0x00
	ld	a, (0x03, sp)
	sbc	a, #0x00
	jrsge	00103$
	ldw	y, (0x05, sp)
	negw	y
	clr	a
	sbc	a, (0x04, sp)
	ld	xl, a
	clr	a
	sbc	a, (0x03, sp)
	ld	xh, a
	jra	00104$
00103$:
	ldw	y, (0x05, sp)
	ldw	x, (0x03, sp)
00104$:
	exgw	x, y
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)