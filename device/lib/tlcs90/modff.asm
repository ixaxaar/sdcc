;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:22 2013
;--------------------------------------------------------
	.module modff
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _modff
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
;../modff.c:33: float modff(float x, float * y)
;	---------------------------------
; Function modff
; ---------------------------------
_modff_start::
_modff:
	push	ix
;../modff.c:35: *y=(long)x;
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	call	___fs2slong
	add	sp, #4
	push	de
	push	hl
	call	___slong2fs
	add	sp, #4
	ld	c,l
	ld	b,h
	pop	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../modff.c:36: return (x-*y);
	push	de
	push	bc
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	pop	ix
	ret
_modff_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
