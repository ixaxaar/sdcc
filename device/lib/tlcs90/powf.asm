;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:20 2013
;--------------------------------------------------------
	.module powf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
	.globl _expf
	.globl _powf
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
;../powf.c:35: float powf(const float x, const float y)
;	---------------------------------
; Function powf
; ---------------------------------
_powf_start::
_powf:
	push	ix
	ld	ix,#0
	add	ix,sp
;../powf.c:37: if(y == 0.0) return 1.0;
	ld	a,11 (ix)
	res	7, a
	or	a, 10 (ix)
	or	a, 9 (ix)
	or	a,8 (ix)
	jr	NZ,00102$
	ld	hl,#0x0000
	ld	de,#0x3F80
	jp	00107$
00102$:
;../powf.c:38: if(y==1.0) return x;
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 14 (sp)
	push	hl
	ld	hl, 14 (sp)
	push	hl
	call	___fseq
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00104$
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	e,6 (ix)
	ld	d,7 (ix)
	jp	00107$
00104$:
;../powf.c:39: if(x <= 0.0) return 0.0;
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	NZ,00106$
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jr	00107$
00106$:
;../powf.c:40: return expf(logf(x) * y);
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	_logf
	add	sp, #4
	ld	c,l
	ld	b,h
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	push	de
	push	hl
	call	_expf
	add	sp, #4
00107$:
	pop	ix
	ret
_powf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
