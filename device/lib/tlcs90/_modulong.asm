;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:23 2013
;--------------------------------------------------------
	.module _modulong
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulong
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
;../_modulong.c:340: _modulong (unsigned long a, unsigned long b)
;	---------------------------------
; Function _modulong
; ---------------------------------
__modulong_start::
__modulong:
	push	ix
	ld	ix,#0
	add	ix,sp
;../_modulong.c:342: unsigned char count = 0;
;../_modulong.c:344: while (!MSB_SET(b))
	ld	de,#0x0000
00103$:
	ld	a,11 (ix)
	rlc	a
	and	a,#0x01
	jp	NZ,00117$
;../_modulong.c:346: b <<= 1;
	push	af
	pop	af
	sla	8 (ix)
	rl	9 (ix)
	rl	10 (ix)
	rl	11 (ix)
;../_modulong.c:347: if (b > a)
	ld	a,4 (ix)
	sub	a, 8 (ix)
	ld	a,5 (ix)
	sbc	a, 9 (ix)
	ld	a,6 (ix)
	sbc	a, 10 (ix)
	ld	a,7 (ix)
	sbc	a, 11 (ix)
	jr	NC,00102$
;../_modulong.c:349: b >>=1;
	push	af
	pop	af
	srl	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
;../_modulong.c:350: break;
	jr	00117$
00102$:
;../_modulong.c:352: count++;
	inc	e
	ld	d,e
	jp	00103$
;../_modulong.c:354: do
00117$:
00108$:
;../_modulong.c:356: if (a >= b)
	ld	a,4 (ix)
	sub	a, 8 (ix)
	ld	a,5 (ix)
	sbc	a, 9 (ix)
	ld	a,6 (ix)
	sbc	a, 10 (ix)
	ld	a,7 (ix)
	sbc	a, 11 (ix)
	jr	C,00107$
;../_modulong.c:357: a -= b;
	ld	a,4 (ix)
	sub	a, 8 (ix)
	ld	4 (ix),a
	ld	a,5 (ix)
	sbc	a, 9 (ix)
	ld	5 (ix),a
	ld	a,6 (ix)
	sbc	a, 10 (ix)
	ld	6 (ix),a
	ld	a,7 (ix)
	sbc	a, 11 (ix)
	ld	7 (ix),a
00107$:
;../_modulong.c:358: b >>= 1;
	push	af
	pop	af
	srl	11 (ix)
	rr	10 (ix)
	rr	9 (ix)
	rr	8 (ix)
;../_modulong.c:360: while (count--);
	ld	h,d
	dec	d
	ld	a,h
	or	a, a
	jp	NZ,00108$
;../_modulong.c:362: return a;
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	e,6 (ix)
	ld	d,7 (ix)
	pop	ix
	ret
__modulong_end::
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
