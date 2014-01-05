;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:24 2013
;--------------------------------------------------------
	.module rand
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rand
	.globl _srand
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_next:
	.ds 4
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
;../rand.c:33: int rand(void)
;	---------------------------------
; Function rand
; ---------------------------------
_rand_start::
_rand:
;../rand.c:35: next = next * 1103515245UL + 12345;
	ld	hl,(_next + 2)
	push	hl
	ld	hl,(_next)
	push	hl
	ld	hl,#0x41C6
	push	hl
	ld	hl,#0x4E6D
	push	hl
	call	__mullong_rrx_s
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	a,c
	ld	hl,#_next
	add	a, #0x39
	ld	(hl),a
	ld	a,b
	adc	a, #0x30
	inc	hl
	ld	(hl),a
	ld	a,e
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	a,d
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;../rand.c:36: return (unsigned int)(next/65536) % (RAND_MAX + 1U);
	push	af
	ld	iy,#_next
	ld	l,0 (iy)
	ld	iy,#_next
	ld	h,1 (iy)
	ld	iy,#_next
	ld	e,2 (iy)
	ld	iy,#_next
	ld	d,3 (iy)
	pop	af
	ld	b,#0x10
00103$:
	srl	d
	rr	e
	rr	h
	rr	l
	djnz	00103$
	res	7, h
	ret
_rand_end::
;../rand.c:39: void srand(unsigned int seed)
;	---------------------------------
; Function srand
; ---------------------------------
_srand_start::
_srand:
;../rand.c:41: next = seed;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#_next + 0),a
	ld	hl, #2+1
	add	hl, sp
	ld	a, (hl)
	ld	(#_next + 1),a
	ld	hl,#_next + 2
	ld	(hl), #0x00
	ld	hl,#_next + 3
	ld	(hl), #0x00
	ret
_srand_end::
	.area _CODE
	.area _INITIALIZER
__xinit__next:
	.byte #0x01,#0x00,#0x00,#0x00	; 1
	.area _CABS (ABS)
