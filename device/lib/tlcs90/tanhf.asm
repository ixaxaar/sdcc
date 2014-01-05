;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:22 2013
;--------------------------------------------------------
	.module tanhf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _expf
	.globl _tanhf
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
;../tanhf.c:50: float tanhf(const float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function tanhf
; ---------------------------------
_tanhf_start::
_tanhf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-12
;../tanhf.c:54: f=fabsf(x);
	ld	hl, 18 (sp)
	push	hl
	ld	hl, 18 (sp)
	push	hl
	call	_fabsf
	add	sp, #4
	ld	c,l
	ld	b,h
;../tanhf.c:55: if(f>SBIG) r=1.0;
	push	bc
	push	de
	ld	hl,#0x4110
	push	hl
	ld	hl,#0x2CB0
	push	hl
	push	de
	push	bc
	call	___fsgt
	add	sp, #8
	ld	a,l
	pop	de
	pop	bc
	or	a, a
	jr	Z,00108$
	ld	bc,#0x0000
	ld	de,#0x3F80
	jp	00109$
00108$:
;../tanhf.c:56: else if(f>K1)
	push	bc
	push	de
	ld	hl,#0x3F0C
	push	hl
	ld	hl,#0x9F54
	push	hl
	push	de
	push	bc
	call	___fsgt
	add	sp, #8
	ld	a,l
	pop	de
	pop	bc
	or	a, a
	jp	Z,00105$
;../tanhf.c:58: r=0.5-1.0/(expf(f+f)+1.0);
	push	de
	push	bc
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	push	de
	push	hl
	call	_expf
	add	sp, #4
	ld	c,l
	ld	b,h
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsdiv
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fssub
	add	sp, #8
	ex	de, hl
;../tanhf.c:59: r+=r;
	push	hl
	push	de
	push	hl
	push	de
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	jp	00109$
00105$:
;../tanhf.c:61: else if(f<EPS) r=f;
	push	bc
	push	de
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fslt
	add	sp, #8
	ld	a,l
	pop	de
	pop	bc
	or	a, a
	jp	NZ,00109$
;../tanhf.c:64: g=f*f;
	push	bc
	push	de
	push	de
	push	bc
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ld	-9 (ix),d
	ld	-10 (ix),e
	ld	-11 (ix),h
	ld	-12 (ix),l
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	ld	hl,#0xBB7B
	push	hl
	ld	hl,#0x11B2
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl,#0xBF52
	push	hl
	ld	hl,#0xE2C6
	push	hl
	ld	hl, 18 (sp)
	push	hl
	ld	hl, 18 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 18 (sp)
	push	hl
	ld	hl, 18 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl,#0x401E
	push	hl
	ld	hl,#0x2A1A
	push	hl
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-5 (ix),d
	ld	-6 (ix),e
	ld	-7 (ix),h
	ld	-8 (ix),l
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 18 (sp)
	push	hl
	ld	hl, 18 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	-5 (ix),d
	ld	-6 (ix),e
	ld	-7 (ix),h
	ld	-8 (ix),l
	pop	de
	pop	bc
	push	bc
	push	de
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ld	-5 (ix),d
	ld	-6 (ix),e
	ld	-7 (ix),h
	ld	-8 (ix),l
	pop	de
	pop	bc
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
00109$:
;../tanhf.c:67: if(x<0.0) r=-r;
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 26 (sp)
	push	hl
	ld	hl, 26 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,l
	pop	de
	pop	bc
	or	a, a
	jr	Z,00111$
	ld	a,d
	xor	a,#0x80
	ld	d,a
00111$:
;../tanhf.c:68: return r;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
_tanhf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
