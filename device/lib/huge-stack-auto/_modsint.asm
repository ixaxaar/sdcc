;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:14 2013
;--------------------------------------------------------
	.module _modsint
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modsint
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_modsint'
;------------------------------------------------------------
;b                         Allocated to stack - _bp -4
;a                         Allocated to registers r6 r7 
;r                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	_modsint.c:203: int _modsint (int a, int b)
;	-----------------------------------------
;	 function _modsint
;	-----------------------------------------
__modsint:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
;	_modsint.c:207: r = (unsigned)(a < 0 ? -a : a) % (unsigned)(b < 0 ? -b : b);
	mov	a,dph
	mov	r7,a
	rlc	a
	clr	a
	rlc	a
	mov	r5,a
	jz	00106$
	clr	c
	clr	a
	subb	a,r6
	mov	r3,a
	clr	a
	subb	a,r7
	mov	r4,a
	sjmp	00107$
00106$:
	mov	ar3,r6
	mov	ar4,r7
00107$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	a,@r0
	jnb	acc.7,00108$
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	mov	r6,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r7,a
	sjmp	00109$
00108$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00109$:
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar5
;	_modsint.c:209: if (a < 0)
	mov	a,r5
	jz	00102$
;	_modsint.c:210: return -r;
	clr	c
	clr	a
	subb	a,r6
	mov	r4,a
	clr	a
	subb	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	sjmp	00104$
00102$:
;	_modsint.c:212: return r;
	mov	dpl,r6
	mov	dph,r7
00104$:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
