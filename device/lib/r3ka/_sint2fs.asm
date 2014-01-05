;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Sun Dec 29 12:49:45 2013
;--------------------------------------------------------
	.r3k
	.module _sint2fs
	.optsdcc -mr3ka
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
	.globl ___sint2fs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
;../_sint2fs.c:54: float __sint2fs (signed int si) {
;	---------------------------------
; Function __sint2fs
; ---------------------------------
___sint2fs_start::
___sint2fs:
;../_sint2fs.c:55: return __slong2fs(si);
	ld	iy,#2
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,1 (iy)
	rla
	sbc	a, a
	ld	e,a
	ld	d,a
	push	de
	push	hl
	call	___slong2fs
	add	sp, #4
	ret
___sint2fs_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
