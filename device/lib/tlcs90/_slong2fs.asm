;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:17 2013
;--------------------------------------------------------
	.module _slong2fs
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___slong2fs
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
;../_slong2fs.c:79: float __slong2fs (signed long sl) {
;	---------------------------------
; Function __slong2fs
; ---------------------------------
___slong2fs_start::
___slong2fs:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_slong2fs.c:80: if (sl<0) 
	bit	7, 7 (ix)
	jr	Z,00102$
;../_slong2fs.c:81: return -__ulong2fs(-sl);
	xor	a, a
	sub	a, 4 (ix)
	ld	l,a
	ld	a, #0x00
	sbc	a, 5 (ix)
	ld	h,a
	ld	a, #0x00
	sbc	a, 6 (ix)
	ld	e,a
	ld	a, #0x00
	sbc	a, 7 (ix)
	ld	d,a
	push	de
	push	hl
	call	___ulong2fs
	add	sp, #4
	ld	a,d
	xor	a,#0x80
	ld	d,a
	jr	00104$
00102$:
;../_slong2fs.c:83: return __ulong2fs(sl);
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	___ulong2fs
	add	sp, #4
00104$:
	pop	ix
	ret
___slong2fs_end::
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
