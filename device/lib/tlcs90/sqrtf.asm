;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:21 2013
;--------------------------------------------------------
	.module sqrtf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
	.globl _frexpf
	.globl _sqrtf
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
;../sqrtf.c:37: float sqrtf(const float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function sqrtf
; ---------------------------------
_sqrtf_start::
_sqrtf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-10
;../sqrtf.c:42: if (x==0.0) return x;
	ld	a,7 (ix)
	res	7, a
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a,4 (ix)
	jr	NZ,00107$
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	e,6 (ix)
	ld	d,7 (ix)
	jp	00111$
00107$:
;../sqrtf.c:43: else if (x==1.0) return 1.0;
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 20 (sp)
	push	hl
	ld	hl, 20 (sp)
	push	hl
	call	___fseq
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00104$
	ld	hl,#0x0000
	ld	de,#0x3F80
	jp	00111$
00104$:
;../sqrtf.c:44: else if (x<0.0)
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 20 (sp)
	push	hl
	ld	hl, 20 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00108$
;../sqrtf.c:46: errno=EDOM;
	ld	hl,#_errno + 0
	ld	(hl), #0x21
	ld	hl,#_errno + 1
	ld	(hl), #0x00
;../sqrtf.c:47: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00111$
00108$:
;../sqrtf.c:49: f=frexpf(x, &n);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	ld	hl, 18 (sp)
	push	hl
	ld	hl, 18 (sp)
	push	hl
	call	_frexpf
	add	sp, #6
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),e
	ld	-5 (ix),d
;../sqrtf.c:50: y=0.41731+0.59016*f; /*Educated guess*/
	ld	hl, 4 (sp)
	push	hl
	ld	hl, 4 (sp)
	push	hl
	ld	hl,#0x3F17
	push	hl
	ld	hl,#0x14BA
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3ED5
	push	hl
	ld	hl,#0xA9A8
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
;../sqrtf.c:52: y+=f/y;
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ex	de, hl
;../sqrtf.c:53: y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/
	push	hl
	push	de
	ld	bc,#0xFFFE
	push	bc
	push	hl
	push	de
	call	_ldexpf
	add	sp, #6
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
;../sqrtf.c:55: if (n&1)
	bit	0, -10 (ix)
	jr	Z,00110$
;../sqrtf.c:57: y*=0.7071067812;
	push	de
	push	bc
	ld	hl,#0x3F35
	push	hl
	ld	hl,#0x04F3
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
;../sqrtf.c:58: ++n;
	inc	-10 (ix)
	jr	NZ,00135$
	inc	-9 (ix)
00135$:
00110$:
;../sqrtf.c:60: return ldexpf(y, n/2);
	pop	hl
	push	hl
	bit	7, h
	jr	Z,00113$
	inc	hl
00113$:
	sra	h
	rr	l
	push	hl
	push	de
	push	bc
	call	_ldexpf
	add	sp, #6
00111$:
	ld	sp, ix
	pop	ix
	ret
_sqrtf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
