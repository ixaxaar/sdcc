;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:20 2013
;--------------------------------------------------------
	.module log10f
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
	.globl _log10f
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
;../log10f.c:34: float log10f(const float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function log10f
; ---------------------------------
_log10f_start::
_log10f:
;../log10f.c:36: return logf(x)*0.4342944819;
	ld	hl, 4 (sp)
	push	hl
	ld	hl, 4 (sp)
	push	hl
	call	_logf
	add	sp, #4
	ex	de, hl
	push	hl
	push	de
	ld	hl,#0x3EDE
	push	hl
	ld	hl,#0x5BD9
	push	hl
	call	___fsmul
	add	sp, #8
	ret
_log10f_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
