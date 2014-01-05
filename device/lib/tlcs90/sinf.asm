;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:20 2013
;--------------------------------------------------------
	.module sinf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _sinf
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
;../sinf.c:36: float sinf(const float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function sinf
; ---------------------------------
_sinf_start::
_sinf:
;../sinf.c:38: if (x==0.0) return 0.0;
	ld	iy,#2
	add	iy,sp
	ld	a,3 (iy)
	res	7, a
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a,0 (iy)
	jr	NZ,00102$
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	ret
00102$:
;../sinf.c:39: return sincosf(x, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, 5 (sp)
	push	hl
	ld	hl, 5 (sp)
	push	hl
	call	_sincosf
	add	sp, #5
	ret
_sinf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
