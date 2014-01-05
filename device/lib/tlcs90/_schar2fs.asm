;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:17 2013
;--------------------------------------------------------
	.module _schar2fs
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
	.globl ___schar2fs
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
;../_schar2fs.c:55: float __schar2fs (signed char sc) {
;	---------------------------------
; Function __schar2fs
; ---------------------------------
___schar2fs_start::
___schar2fs:
;../_schar2fs.c:56: return __slong2fs(sc);
	ld	iy,#2
	add	iy,sp
	ld	l,0 (iy)
	ld	a,0 (iy)
	rla
	sbc	a, a
	ld	h,a
	ld	e,a
	ld	d,a
	push	de
	push	hl
	call	___slong2fs
	add	sp, #4
	ret
___schar2fs_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
