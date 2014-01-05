;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:00 2013
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong_PARM_2
	.globl __mullong
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
__mullong_PARM_2:
	.ds 4
__mullong_a_1_1:
	.ds 4
__mullong_t_1_2:
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
;Allocation info for local variables in function '_mullong'
;------------------------------------------------------------
;b                         Allocated with name '__mullong_PARM_2'
;a                         Allocated with name '__mullong_a_1_1'
;t                         Allocated with name '__mullong_t_1_2'
;------------------------------------------------------------
;	_mullong.c:734: _mullong (long a, long b)
;	-----------------------------------------
;	 function _mullong
;	-----------------------------------------
__mullong:
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
	mov	dptr,#__mullong_a_1_1
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
;	_mullong.c:738: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
	mov	dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r7,a
	mov	r5,#__mullong_PARM_2
	mov	r6,#(__mullong_PARM_2 >> 8)
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	b,r7
	mul	ab
	mov	r7,a
	mov	r5,b
	mov	dptr,#(__mullong_t_1_2 + 0x0002)
	mov	a,r7
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_mullong.c:739: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
	mov	dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	b,r7
	mul	ab
	mov	r7,a
	mov	r5,b
	mov	dptr,#__mullong_t_1_2
	mov	a,r7
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_mullong.c:740: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	mov	dptr,#(__mullong_t_1_2 + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r5,#__mullong_a_1_1
	mov	r6,#(__mullong_a_1_1 >> 8)
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	b,r6
	mul	ab
	add	a,r7
	mov	dptr,#(__mullong_t_1_2 + 0x0003)
	movx	@dptr,a
;	_mullong.c:741: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	mov	dptr,#(__mullong_t_1_2 + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r5,#__mullong_a_1_1
	mov	r6,#(__mullong_a_1_1 >> 8)
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#__mullong_PARM_2
	mov	r5,#(__mullong_PARM_2 >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	movx	a,@dptr
	mov	b,r6
	mul	ab
	add	a,r7
	mov	dptr,#(__mullong_t_1_2 + 0x0003)
	movx	@dptr,a
;	_mullong.c:742: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
	mov	dptr,#(__mullong_t_1_2 + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#__mullong_a_1_1
	mov	r5,#(__mullong_a_1_1 >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	b,r5
	mul	ab
	mov	r3,b
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#(__mullong_t_1_2 + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_mullong.c:744: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
	mov	dptr,#(__mullong_t_1_2 + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#__mullong_a_1_1
	mov	r5,#(__mullong_a_1_1 >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#__mullong_PARM_2
	mov	r4,#(__mullong_PARM_2 >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	b,r5
	mul	ab
	mov	r3,b
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#(__mullong_t_1_2 + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_mullong.c:746: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
	mov	r6,#__mullong_a_1_1
	mov	r7,#(__mullong_a_1_1 >> 8)
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#__mullong_a_1_1
	mov	r5,#(__mullong_a_1_1 >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#__mullong_PARM_2
	mov	r4,#(__mullong_PARM_2 >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	b,r5
	mul	ab
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	_mullong.c:747: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
	mov	r6,#__mullong_a_1_1
	mov	r7,#(__mullong_a_1_1 >> 8)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
00103$:
	mov	r4,#__mullong_a_1_1
	mov	r5,#(__mullong_a_1_1 >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	b,r5
	mul	ab
	mov	r5,a
	mov	r3,b
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	_mullong.c:749: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
	mov	r6,#__mullong_PARM_2
	mov	r7,#(__mullong_PARM_2 >> 8)
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r5,a
	mov	r3,#__mullong_PARM_2
	mov	r4,#(__mullong_PARM_2 >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	b,r5
	mul	ab
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	_mullong.c:750: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
	mov	r6,#__mullong_PARM_2
	mov	r7,#(__mullong_PARM_2 >> 8)
	inc	r6
	cjne	r6,#0x00,00104$
	inc	r7
00104$:
	mov	dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r5,a
	mov	r3,#__mullong_PARM_2
	mov	r4,#(__mullong_PARM_2 >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	b,r5
	mul	ab
	mov	r5,a
	mov	r3,b
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	_mullong.c:752: bcast(b)->bi.b0 = 0;                                // B
	mov	dptr,#__mullong_PARM_2
	clr	a
	movx	@dptr,a
;	_mullong.c:753: bcast(a)->bi.b0 = 0;                                // C
	mov	dptr,#__mullong_a_1_1
	movx	@dptr,a
;	_mullong.c:754: t.l += a;
	mov	dptr,#__mullong_t_1_2
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
	mov	dptr,#__mullong_a_1_1
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
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#__mullong_t_1_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_mullong.c:756: return t.l + b;
	mov	dptr,#__mullong_t_1_2
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#__mullong_PARM_2
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
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
