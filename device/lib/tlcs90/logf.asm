;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:20 2013
;--------------------------------------------------------
	.module logf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
	.globl _logf
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
;../logf.c:216: float logf(const float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function logf
; ---------------------------------
_logf_start::
_logf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-35
;../logf.c:226: if (x<=0.0)
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 45 (sp)
	push	hl
	ld	hl, 45 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a, l
	or	a, a
	jr	NZ,00102$
;../logf.c:228: errno=EDOM;
	ld	hl,#_errno + 0
	ld	(hl), #0x21
	ld	hl,#_errno + 1
	ld	(hl), #0x00
;../logf.c:229: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00106$
00102$:
;../logf.c:231: f=frexpf(x, &n);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	ld	hl, 43 (sp)
	push	hl
	ld	hl, 43 (sp)
	push	hl
	call	_frexpf
	add	sp, #6
	ld	-17 (ix),l
	ld	-16 (ix),h
	ld	-15 (ix),e
	ld	-14 (ix),d
;../logf.c:232: znum=f-0.5;
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 24 (sp)
	push	hl
	ld	hl, 24 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-25 (ix),l
	ld	-24 (ix),h
	ld	-23 (ix),e
	ld	-22 (ix),d
;../logf.c:233: if (f>C0)
	ld	hl,#0x3F35
	push	hl
	ld	hl,#0x04F3
	push	hl
	ld	hl, 24 (sp)
	push	hl
	ld	hl, 24 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	-1 (ix), l
	ld	a, l
	or	a, a
	jp	Z,00104$
;../logf.c:235: znum-=0.5;
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 16 (sp)
	push	hl
	ld	hl, 16 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-25 (ix),l
	ld	-24 (ix),h
	ld	-23 (ix),e
	ld	-22 (ix),d
;../logf.c:236: zden=(f*0.5)+0.5;
	ld	hl, 20 (sp)
	push	hl
	ld	hl, 20 (sp)
	push	hl
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-5 (ix),l
	ld	-4 (ix),h
	ld	-3 (ix),e
	ld	-2 (ix),d
	jp	00105$
00104$:
;../logf.c:240: n--;
	pop	hl
	push	hl
	dec	hl
	ex	(sp), hl
;../logf.c:241: zden=znum*0.5+0.5;
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 32 (sp)
	push	hl
	ld	hl, 32 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-26 (ix),d
	ld	-27 (ix),e
	ld	-28 (ix),h
	ld	-29 (ix),l
	ld	hl, #30
	add	hl, sp
	ex	de, hl
	ld	hl, #6
	add	hl, sp
	ld	bc, #4
	ldir
00105$:
;../logf.c:243: z=znum/zden;
	ld	hl, 32 (sp)
	push	hl
	ld	hl, 32 (sp)
	push	hl
	ld	hl, 16 (sp)
	push	hl
	ld	hl, 16 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	-21 (ix),l
	ld	-20 (ix),h
	ld	-19 (ix),e
	ld	-18 (ix),d
;../logf.c:244: w=z*z;
	ld	hl, 16 (sp)
	push	hl
	ld	hl, 16 (sp)
	push	hl
	ld	hl, 20 (sp)
	push	hl
	ld	hl, 20 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
;../logf.c:246: Rz=z+z*(w*A(w)/B(w));
	push	bc
	push	de
	push	de
	push	bc
	ld	hl,#0xBF0D
	push	hl
	ld	hl,#0x7E3D
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	pop	de
	pop	bc
	ld	hl,#0xC0D4
	push	hl
	ld	hl,#0x3F3A
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 32 (sp)
	push	hl
	ld	hl, 32 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 20 (sp)
	push	hl
	ld	hl, 20 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 20 (sp)
	push	hl
	ld	hl, 20 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-13 (ix),l
	ld	-12 (ix),h
	ld	-11 (ix),e
	ld	-10 (ix),d
;../logf.c:247: xn=n;
	pop	hl
	push	hl
	push	hl
	call	___sint2fs
	add	sp, #2
	ld	-33 (ix),l
	ld	-32 (ix),h
	ld	-31 (ix),e
	ld	-30 (ix),d
;../logf.c:248: return ((xn*C2+Rz)+xn*C1);
	ld	hl, 4 (sp)
	push	hl
	ld	hl, 4 (sp)
	push	hl
	ld	hl,#0xB95E
	push	hl
	ld	hl,#0x8083
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 24 (sp)
	push	hl
	ld	hl, 24 (sp)
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	hl, 4 (sp)
	push	hl
	ld	hl, 4 (sp)
	push	hl
	ld	hl,#0x3F31
	push	hl
	ld	hl,#0x8000
	push	hl
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 32 (sp)
	push	hl
	ld	hl, 32 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
00106$:
	ld	sp, ix
	pop	ix
	ret
_logf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
