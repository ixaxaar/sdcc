;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:20 2013
;--------------------------------------------------------
	.module expf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
	.globl _expf
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
;../expf.c:331: float expf(const float x)
;	---------------------------------
; Function expf
; ---------------------------------
_expf_start::
_expf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-34
;../expf.c:337: if(x>=0.0)
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 44 (sp)
	push	hl
	ld	hl, 44 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	NZ,00102$
;../expf.c:338: { y=x;  sign=0; }
	ld	hl, #1
	add	hl, sp
	ex	de, hl
	ld	hl, #38
	add	hl, sp
	ld	bc, #4
	ldir
	ld	-34 (ix),#0x00
	jr	00103$
00102$:
;../expf.c:340: { y=-x; sign=1; }
	ld	a,7 (ix)
	xor	a,#0x80
	ld	d,a
	ld	h,4 (ix)
	ld	l,5 (ix)
	ld	e,6 (ix)
	ld	-33 (ix),h
	ld	-32 (ix),l
	ld	-31 (ix),e
	ld	-30 (ix),d
	ld	-34 (ix),#0x01
00103$:
;../expf.c:342: if(y<EXPEPS) return 1.0;
	ld	hl,#0x33D6
	push	hl
	ld	hl,#0xBF95
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	-1 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00105$
	ld	hl,#0x0000
	ld	de,#0x3F80
	jp	00118$
00105$:
;../expf.c:344: if(y>BIGX)
	ld	hl,#0x42B1
	push	hl
	ld	hl,#0x7218
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00110$
;../expf.c:346: if(sign)
	bit	0,-34 (ix)
	jr	Z,00107$
;../expf.c:348: errno=ERANGE;
	ld	hl,#_errno + 0
	ld	(hl), #0x22
	ld	hl,#_errno + 1
	ld	(hl), #0x00
;../expf.c:350: ;
	ld	hl,#0xFFFF
	ld	de,#0x7F7F
	jp	00118$
00107$:
;../expf.c:354: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00118$
00110$:
;../expf.c:358: z=y*K1;
	ld	hl, 3 (sp)
	push	hl
	ld	hl, 3 (sp)
	push	hl
	ld	hl,#0x3FB8
	push	hl
	ld	hl,#0xAA3B
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-26 (ix),d
	ld	-27 (ix),e
	ld	-28 (ix),h
	ld	-29 (ix),l
	ld	hl, #29
	add	hl, sp
	ex	de, hl
	ld	hl, #5
	add	hl, sp
	ld	bc, #4
	ldir
;../expf.c:359: n=z;
	ld	hl, 31 (sp)
	push	hl
	ld	hl, 31 (sp)
	push	hl
	call	___fs2sint
	add	sp, #4
	ld	-12 (ix),h
	ld	-13 (ix), l
	ld	-7 (ix), l
	ld	a,-12 (ix)
	ld	-6 (ix),a
;../expf.c:361: if(n<0) --n;
	bit	7, -6 (ix)
	jr	Z,00112$
	dec	27 (sp)
	ld	hl, 27 (sp)
00112$:
;../expf.c:362: if(z-n>=0.5) ++n;
	ld	hl, 27 (sp)
	push	hl
	call	___sint2fs
	add	sp, #2
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 35 (sp)
	push	hl
	ld	hl, 35 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 29 (sp)
	push	hl
	ld	hl, 29 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	NZ,00114$
	inc	-7 (ix)
	jr	NZ,00148$
	inc	-6 (ix)
00148$:
00114$:
;../expf.c:363: xn=n;
	ld	hl, 27 (sp)
	push	hl
	call	___sint2fs
	add	sp, #2
	ld	-17 (ix),l
	ld	-16 (ix),h
	ld	-15 (ix),e
	ld	-14 (ix),d
;../expf.c:364: g=((y-xn*C1))-xn*C2;
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
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
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl,#0xB95E
	push	hl
	ld	hl,#0x8083
	push	hl
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 29 (sp)
	push	hl
	ld	hl, 29 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-18 (ix),d
	ld	-19 (ix),e
	ld	-20 (ix),h
	ld	-21 (ix),l
;../expf.c:365: z=g*g;
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-29 (ix),l
	ld	-28 (ix),h
	ld	-27 (ix),e
	ld	-26 (ix),d
;../expf.c:366: r=P(z)*g;
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl,#0x3B88
	push	hl
	ld	hl,#0x5308
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3E80
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 29 (sp)
	push	hl
	ld	hl, 29 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-22 (ix),d
	ld	-23 (ix),e
	ld	-24 (ix),h
	ld	-25 (ix),l
	ld	hl, #23
	add	hl, sp
	ex	de, hl
	ld	hl, #9
	add	hl, sp
	ld	bc, #4
	ldir
;../expf.c:367: r=0.5+(r/(Q(z)-r));
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl,#0x3D4C
	push	hl
	ld	hl,#0xBF5B
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
	ld	c,l
	ld	b,h
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 25 (sp)
	push	hl
	push	de
	push	bc
	call	___fssub
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 29 (sp)
	push	hl
	ld	hl, 29 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 29 (sp)
	push	hl
	ld	hl, 29 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	hl, #9
	add	hl, sp
	ex	de, hl
	ld	hl, #23
	add	hl, sp
	ld	bc, #4
	ldir
;../expf.c:369: n++;
	ld	a,-7 (ix)
	add	a, #0x01
	ld	-13 (ix),a
	ld	a,-6 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
;../expf.c:370: z=ldexpf(r, n);
	ld	hl, 21 (sp)
	push	hl
	ld	hl, 13 (sp)
	push	hl
	ld	hl, 13 (sp)
	push	hl
	call	_ldexpf
	add	sp, #6
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
;../expf.c:371: if(sign)
	bit	0,-34 (ix)
	jr	Z,00116$
;../expf.c:372: return 1.0/z;
	ld	hl, 25 (sp)
	push	hl
	ld	hl, 25 (sp)
	push	hl
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	-2 (ix),d
	ld	-3 (ix),e
	ld	-4 (ix),h
	ld	-5 (ix), l
	ld	h,-4 (ix)
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	jr	00118$
00116$:
;../expf.c:374: return z;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	e,-9 (ix)
	ld	d,-8 (ix)
00118$:
	ld	sp, ix
	pop	ix
	ret
_expf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
