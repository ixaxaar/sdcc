;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:22 2013
;--------------------------------------------------------
	.module sincoshf
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
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
;../sincoshf.c:56: float sincoshf(const float x, const int iscosh)
;	---------------------------------
; Function sincoshf
; ---------------------------------
_sincoshf_start::
_sincoshf:
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-22
;../sincoshf.c:62: else { y=x;  sign=0; }
	ld	hl, #18
	add	hl, sp
	ex	de, hl
	ld	hl, #26
	add	hl, sp
	ld	bc, #4
	ldir
;../sincoshf.c:61: if (x<0.0) { y=-x; sign=1; }
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 32 (sp)
	push	hl
	ld	hl, 32 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	c,l
	ld	a,c
	or	a, a
	jr	Z,00102$
	ld	a,7 (ix)
	xor	a,#0x80
	ld	e,a
	ld	h,4 (ix)
	ld	l,5 (ix)
	ld	d,6 (ix)
	ld	-13 (ix),h
	ld	-12 (ix),l
	ld	-11 (ix),d
	ld	-10 (ix),e
	ld	-22 (ix),#0x01
	jr	00103$
00102$:
;../sincoshf.c:62: else { y=x;  sign=0; }
	ld	hl, #9
	add	hl, sp
	ex	de, hl
	ld	hl, #18
	add	hl, sp
	ld	bc, #4
	ldir
	ld	-22 (ix),#0x00
00103$:
;../sincoshf.c:64: if ((y>1.0) || iscosh)
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a, l
	or	a, a
	jr	NZ,00117$
	ld	a,9 (ix)
	or	a,8 (ix)
	jp	Z,00118$
00117$:
;../sincoshf.c:66: if(y>YBAR)
	ld	hl,#0x4110
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	-5 (ix), l
	ld	a, l
	or	a, a
	jp	Z,00110$
;../sincoshf.c:68: w=y-K1;
	ld	hl,#0x3F31
	push	hl
	ld	hl,#0x7300
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	c,l
	ld	b,h
;../sincoshf.c:69: if (w>WMAX)
	push	bc
	push	de
	ld	hl,#0x4233
	push	hl
	ld	hl,#0xBDCF
	push	hl
	push	de
	push	bc
	call	___fsgt
	add	sp, #8
	ld	a,l
	pop	de
	pop	bc
	or	a, a
	jr	Z,00105$
;../sincoshf.c:71: errno=ERANGE;
	ld	hl,#_errno + 0
	ld	(hl), #0x22
	ld	hl,#_errno + 1
	ld	(hl), #0x00
;../sincoshf.c:72: z=HUGE_VALF;
	ld	bc,#0xFFFF
	ld	de,#0x7F7F
	jp	00111$
00105$:
;../sincoshf.c:76: z=expf(w);
	push	de
	push	bc
	call	_expf
	add	sp, #4
	ld	-9 (ix),l
	ld	-8 (ix),h
	ld	-7 (ix),e
	ld	-6 (ix),d
;../sincoshf.c:77: z+=K3*z;
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl,#0x3768
	push	hl
	ld	hl,#0x0897
	push	hl
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	jp	00111$
00110$:
;../sincoshf.c:82: z=expf(y);
	ld	hl, 11 (sp)
	push	hl
	ld	hl, 11 (sp)
	push	hl
	call	_expf
	add	sp, #4
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	hl, #1
	add	hl, sp
	ex	de, hl
	ld	hl, #13
	add	hl, sp
	ld	bc, #4
	ldir
;../sincoshf.c:83: w=1.0/z;
	ld	hl, 3 (sp)
	push	hl
	ld	hl, 3 (sp)
	push	hl
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	hl, #5
	add	hl, sp
	ex	de, hl
	ld	hl, #13
	add	hl, sp
	ld	bc, #4
	ldir
;../sincoshf.c:84: if(!iscosh) w=-w;
	ld	a,9 (ix)
	or	a,8 (ix)
	jr	NZ,00108$
	ld	a,-14 (ix)
	xor	a,#0x80
	ld	-14 (ix),a
00108$:
;../sincoshf.c:85: z=(z+w)*0.5;
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
00111$:
;../sincoshf.c:87: if(sign) z=-z;
	bit	0,-22 (ix)
	jp	Z,00119$
	ld	a,d
	xor	a,#0x80
	ld	d,a
	jp	00119$
00118$:
;../sincoshf.c:91: if (y<EPS)
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00115$
;../sincoshf.c:92: z=x;
	ld	c,-4 (ix)
	ld	b,-3 (ix)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	jp	00119$
00115$:
;../sincoshf.c:95: z=x*x;
	ld	hl, 28 (sp)
	push	hl
	ld	hl, 28 (sp)
	push	hl
	ld	hl, 32 (sp)
	push	hl
	ld	hl, 32 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-9 (ix),l
	ld	-8 (ix),h
	ld	-7 (ix),e
	ld	-6 (ix),d
;../sincoshf.c:96: z=x+x*z*P(z)/Q(z);
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 32 (sp)
	push	hl
	ld	hl, 32 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl,#0xBE42
	push	hl
	ld	hl,#0xE6EA
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0xC0E4
	push	hl
	ld	hl,#0x69F0
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 24 (sp)
	push	hl
	ld	hl, 24 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl,#0xC22B
	push	hl
	ld	hl,#0x4F93
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 24 (sp)
	push	hl
	ld	hl, 24 (sp)
	push	hl
	call	___fsdiv
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
	ld	c,l
	ld	b,h
00119$:
;../sincoshf.c:99: return z;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
_sincoshf_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
