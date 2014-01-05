;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:56 2013
;--------------------------------------------------------
	.module _divulong
	.optsdcc -mmcs51 --model-large
	
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
	.area	OSEG    (OVR,DATA)
__divulong_sloc0_1_0:
	.ds 1
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
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
__divulong_PARM_2:
	.ds 4
__divulong_x_1_1:
	.ds 4
__divulong_reste_1_2:
	.ds 4
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
;y                         Allocated with name '__divulong_PARM_2'
;x                         Allocated with name '__divulong_x_1_1'
;reste                     Allocated with name '__divulong_reste_1_2'
;count                     Allocated with name '__divulong_count_1_2'
;sloc0                     Allocated with name '__divulong_sloc0_1_0'
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
	mov	dptr,#__divulong_x_1_1
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	_divulong.c:333: unsigned long reste = 0L;
	mov	dptr,#__divulong_reste_1_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_divulong.c:337: do
	mov	dptr,#__divulong_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	__divulong_sloc0_1_0,#0x20
00105$:
;	_divulong.c:340: c = MSB_SET(x);
	mov	dptr,#__divulong_x_1_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	rlc	a
	mov	__divulong_c_1_2,c
;	_divulong.c:341: x <<= 1;
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	dptr,#__divulong_x_1_1
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	_divulong.c:342: reste <<= 1;
	mov	dptr,#__divulong_reste_1_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	dptr,#__divulong_reste_1_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	_divulong.c:343: if (c)
	jnb	__divulong_c_1_2,00102$
;	_divulong.c:344: reste |= 1L;
	mov	dptr,#__divulong_reste_1_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__divulong_reste_1_2
	mov	a,#0x01
	orl	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
00102$:
;	_divulong.c:346: if (reste >= y)
	mov	dptr,#__divulong_reste_1_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jc	00106$
;	_divulong.c:348: reste -= y;
	mov	dptr,#__divulong_reste_1_2
	mov	a,r0
	clr	c
	subb	a,r4
	movx	@dptr,a
	mov	a,r1
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	subb	a,r7
	inc	dptr
	movx	@dptr,a
;	_divulong.c:350: x |= 1L;
	mov	dptr,#__divulong_x_1_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__divulong_x_1_1
	mov	a,#0x01
	orl	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
00106$:
;	_divulong.c:353: while (--count);
	djnz	__divulong_sloc0_1_0,00125$
	sjmp	00126$
00125$:
	ljmp	00105$
00126$:
;	_divulong.c:354: return x;
	mov	dptr,#__divulong_x_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
