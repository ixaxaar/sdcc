;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:21 2013
;--------------------------------------------------------
	.module cotf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
	.globl _cotf
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
;../cotf.c:37: float cotf(const float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function cotf
; ---------------------------------
_cotf_start::
_cotf:
	push	ix
;../cotf.c:41: y=fabsf(x);
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	_fabsf
	add	sp, #4
	ld	c,l
	ld	b,h
;../cotf.c:42: if (y<1.0E-30) //This one requires more thinking...
	ld	hl,#0x0DA2
	push	hl
	ld	hl,#0x4260
	push	hl
	push	de
	push	bc
	call	___fslt
	add	sp, #8
	ld	a,l
	or	a, a
	jp	Z,00105$
;../cotf.c:44: errno = ERANGE;
	ld	hl,#_errno + 0
	ld	(hl), #0x22
	ld	hl,#_errno + 1
	ld	(hl), #0x00
;../cotf.c:45: if (x<0.0)
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00102$
;../cotf.c:46: return -HUGE_VALF;
	ld	hl,#0xFFFF
	ld	de,#0xFF7F
	jr	00106$
00102$:
;../cotf.c:48: return +HUGE_VALF;
	ld	hl,#0xFFFF
	ld	de,#0x7F7F
	jr	00106$
00105$:
;../cotf.c:50: return tancotf(x, 1);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	call	_tancotf
	add	sp, #5
00106$:
	pop	ix
	ret
_cotf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
