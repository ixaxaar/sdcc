;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:22 2013
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
	.globl _atan2f
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
;../atan2f.c:34: float atan2f(const float x, const float y)
;	---------------------------------
; Function atan2f
; ---------------------------------
_atan2f_start::
_atan2f:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-13
;../atan2f.c:38: if ((x==0.0) && (y==0.0))
	ld	a,7 (ix)
	res	7, a
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a,4 (ix)
	jr	NZ,00102$
	ld	a,11 (ix)
	res	7, a
	or	a, 10 (ix)
	or	a, 9 (ix)
	or	a,8 (ix)
	jr	NZ,00102$
;../atan2f.c:40: errno=EDOM;
	ld	hl,#_errno + 0
	ld	(hl), #0x21
	ld	hl,#_errno + 1
	ld	(hl), #0x00
;../atan2f.c:41: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00109$
00102$:
;../atan2f.c:44: if(fabsf(y)>=fabsf(x))
	ld	hl, 23 (sp)
	push	hl
	ld	hl, 23 (sp)
	push	hl
	call	_fabsf
	add	sp, #4
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	call	_fabsf
	add	sp, #4
;../atan2f.c:47: if(y<0.0) r+=(x>=0?PI:-PI);
	push	hl
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 27 (sp)
	push	hl
	ld	hl, 27 (sp)
	push	hl
;../atan2f.c:44: if(fabsf(y)>=fabsf(x))
	call	___fslt
	add	sp, #8
	ld	-5 (ix),l
	pop	de
	pop	bc
	push	de
	push	bc
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	-4 (ix), l
	ld	a, l
	or	a, a
	jp	NZ,00107$
;../atan2f.c:46: r=atanf(x/y);
	ld	hl, 23 (sp)
	push	hl
	ld	hl, 23 (sp)
	push	hl
	ld	hl, 23 (sp)
	push	hl
	ld	hl, 23 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl, 11 (sp)
	push	hl
	ld	hl, 11 (sp)
	push	hl
	call	_atanf
	add	sp, #4
	ld	-10 (ix),d
	ld	-11 (ix),e
	ld	-12 (ix),h
	ld	-13 (ix),l
	ld	hl, #9
	add	hl, sp
	ex	de, hl
	ld	hl, #0
	add	hl, sp
	ld	bc, #4
	ldir
;../atan2f.c:47: if(y<0.0) r+=(x>=0?PI:-PI);
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 27 (sp)
	push	hl
	ld	hl, 27 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,l
	or	a, a
	jp	Z,00108$
	ld	a,-5 (ix)
	sub	a,#0x01
	ld	a,#0x00
	rla
	or	a, a
	jr	Z,00111$
	ld	bc,#0x0FDB
	ld	hl,#0x4049
	jr	00112$
00111$:
	ld	bc,#0x0FDB
	ld	hl,#0xC049
00112$:
	push	hl
	push	bc
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
	jp	00108$
00107$:
;../atan2f.c:51: r=-atanf(y/x);
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 27 (sp)
	push	hl
	ld	hl, 27 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	_atanf
	add	sp, #4
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	a,-6 (ix)
	xor	a,#0x80
	ld	-6 (ix),a
	ld	a,-9 (ix)
	ld	-9 (ix),a
	ld	a,-8 (ix)
	ld	-8 (ix),a
	ld	a,-7 (ix)
	ld	-7 (ix),a
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	hl, #4
	add	hl, sp
	ld	bc, #4
	ldir
;../atan2f.c:52: r+=(x<0.0?-HALF_PI:HALF_PI);
	ld	a,-5 (ix)
	or	a, a
	jr	Z,00113$
	ld	bc,#0x0FDB
	ld	de,#0xBFC9
	jr	00114$
00113$:
	ld	bc,#0x0FDB
	ld	de,#0x3FC9
00114$:
	push	de
	push	bc
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
00108$:
;../atan2f.c:54: return r;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
00109$:
	ld	sp, ix
	pop	ix
	ret
_atan2f_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
