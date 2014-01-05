;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:14 2013
;--------------------------------------------------------
	.module _divslong
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslong
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
;Allocation info for local variables in function '_divslong'
;------------------------------------------------------------
;y                         Allocated to stack - _bp -6
;x                         Allocated to registers r4 r5 r6 r7 
;r                         Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	_divslong.c:259: _divslong (long x, long y)
;	-----------------------------------------
;	 function _divslong
;	-----------------------------------------
__divslong:
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
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0x0C
	mov	sp,a
;	_divslong.c:263: r = (unsigned long)(x < 0 ? -x : x) / (unsigned long)(y < 0 ? -y : y);
	mov	a,r7
	rlc	a
	clr	a
	rlc	a
	mov	r3,a
	jz	00106$
	mov	r0,_bp
	inc	r0
	clr	c
	clr	a
	subb	a,r4
	mov	@r0,a
	clr	a
	subb	a,r5
	inc	r0
	mov	@r0,a
	clr	a
	subb	a,r6
	inc	r0
	mov	@r0,a
	clr	a
	subb	a,r7
	inc	r0
	mov	@r0,a
	sjmp	00107$
00106$:
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00107$:
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	rlc	a
	clr	a
	rlc	a
	mov	r2,a
	jz	00108$
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	mov	r4,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r5,a
	inc	r0
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
	add	a,#0xfa
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00109$:
	push	ar3
	push	ar2
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	_divslong.c:264: if ((x < 0) ^ (y < 0))
	mov	a,r2
	xrl	a,r3
	jz	00102$
;	_divslong.c:265: return -r;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	mov	r2,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r3,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r6,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	sjmp	00104$
00102$:
;	_divslong.c:267: return r;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
00104$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
