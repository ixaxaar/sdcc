;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:21 2013
;--------------------------------------------------------
	.module acosf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _acosf
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
;../acosf.c:36: float acosf(const float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function acosf
; ---------------------------------
_acosf_start::
_acosf:
;../acosf.c:38: if (x == 1.0) return 0.0;
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	call	___fseq
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00108$
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	ret
00108$:
;../acosf.c:39: else if (x ==-1.0) return PI;
	ld	hl,#0xBF80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	call	___fseq
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00105$
	ld	hl,#0x0FDB
	ld	de,#0x4049
	ret
00105$:
;../acosf.c:40: else if (x == 0.0) return HALF_PI;
	ld	iy,#2
	add	iy,sp
	ld	a,3 (iy)
	res	7, a
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a,0 (iy)
	jr	NZ,00102$
	ld	hl,#0x0FDB
	ld	de,#0x3FC9
	ret
00102$:
;../acosf.c:41: else               return asincosf(x, true);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl, 5 (sp)
	push	hl
	ld	hl, 5 (sp)
	push	hl
	call	_asincosf
	add	sp, #5
	ret
_acosf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
