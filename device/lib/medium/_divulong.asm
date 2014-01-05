;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:53 2013
;--------------------------------------------------------
	.module _divulong
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulong_PARM_2
	.globl __divulong
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
__divulong_c_1_2:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
__divulong_PARM_2:
	.ds 4
__divulong_x_1_1:
	.ds 4
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
;Allocation info for local variables in function '_divulong'
;------------------------------------------------------------
;	_divulong.c:331: _divulong (unsigned long x, unsigned long y)
;	-----------------------------------------
;	 function _divulong
;	-----------------------------------------
__divulong:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	r0,#__divulong_x_1_1
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
;	_divulong.c:333: unsigned long reste = 0L;
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	_divulong.c:337: do
	mov	r5,#0x20
00105$:
;	_divulong.c:340: c = MSB_SET(x);
	mov	r0,#(__divulong_x_1_1 + 3)
	movx	a,@r0
	rlc	a
	mov	__divulong_c_1_2,c
;	_divulong.c:341: x <<= 1;
	mov	r0,#__divulong_x_1_1
	movx	a,@r0
	add	a,acc
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
;	_divulong.c:342: reste <<= 1;
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	_divulong.c:343: if (c)
	jnb	__divulong_c_1_2,00102$
;	_divulong.c:344: reste |= 1L;
	orl	ar2,#0x01
00102$:
;	_divulong.c:346: if (reste >= y)
	mov	r0,#__divulong_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r2
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r3
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r6
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r7
	subb	a,b
	jc	00106$
;	_divulong.c:348: reste -= y;
	mov	r0,#__divulong_PARM_2
	setb	c
	movx	a,@r0
	subb	a,r2
	cpl	a
	cpl	c
	mov	r2,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r3
	cpl	a
	cpl	c
	mov	r3,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r6
	cpl	a
	cpl	c
	mov	r6,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r7
	cpl	a
	mov	r7,a
;	_divulong.c:350: x |= 1L;
	mov	r0,#__divulong_x_1_1
	movx	a,@r0
	orl	a,#0x01
	movx	@r0,a
00106$:
;	_divulong.c:353: while (--count);
	djnz	r5,00105$
;	_divulong.c:354: return x;
	mov	r0,#__divulong_x_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
