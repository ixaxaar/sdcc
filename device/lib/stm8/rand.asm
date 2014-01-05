;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:50 2013
;--------------------------------------------------------
	.module rand
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rand
	.globl _srand
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_next:
	.ds 4
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
;	../rand.c: 33: int rand(void)
;	-----------------------------------------
;	 function rand
;	-----------------------------------------
_rand:
;	../rand.c: 35: next = next * 1103515245UL + 12345;
	push	_next+3
	push	_next+2
	push	_next+1
	push	_next+0
	push	#0x6d
	push	#0x4e
	push	#0xc6
	push	#0x41
	call	__mullong
	addw	sp, #8
	exgw	x, y
	addw	y, #0x3039
	ld	a, xl
	adc	a, #0x00
	ld	xl, a
	ld	a, xh
	adc	a, #0x00
	ld	xh, a
	ldw	_next+2, y
	ldw	_next+0, x
;	../rand.c: 36: return (unsigned int)(next/65536) % (RAND_MAX + 1U);
	ldw	x, _next+0
	clrw	y
	ld	a, xh
	and	a, #0x7f
	ld	xh, a
	ret
;	../rand.c: 39: void srand(unsigned int seed)
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
_srand:
;	../rand.c: 41: next = seed;
	ldw	y, (0x03, sp)
	clrw	x
	ldw	_next+2, y
	ldw	_next+0, x
	ret
	.area CODE
	.area INITIALIZER
__xinit__next:
	.byte #0x00,#0x00,#0x00,#0x01	; 1
	.area CABS (ABS)
