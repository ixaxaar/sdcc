;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:21 2013
;--------------------------------------------------------
	.module tanf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _tanf
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
;../tanf.c:36: float tanf(const float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function tanf
; ---------------------------------
_tanf_start::
_tanf:
;../tanf.c:38: return tancotf(x, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, 5 (sp)
	push	hl
	ld	hl, 5 (sp)
	push	hl
	call	_tancotf
	add	sp, #5
	ret
_tanf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
