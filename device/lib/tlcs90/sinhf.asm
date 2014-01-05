;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:22 2013
;--------------------------------------------------------
	.module sinhf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _sinhf
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
;../sinhf.c:35: float sinhf(const float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function sinhf
; ---------------------------------
_sinhf_start::
_sinhf:
;../sinhf.c:37: return sincoshf(x, 0);
	ld	hl,#0x0000
	push	hl
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	_sincoshf
	add	sp, #6
	ret
_sinhf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
