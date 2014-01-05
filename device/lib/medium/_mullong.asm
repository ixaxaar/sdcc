;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:53 2013
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mmcs51 --model-medium
	
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
	.area	OSEG    (OVR,DATA)
__mullong_sloc0_1_0:
	.ds 4
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
__mullong_PARM_2:
	.ds 4
__mullong_a_1_1:
	.ds 4
__mullong_t_1_2:
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
;Allocation info for local variables in function '_mullong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__mullong_sloc0_1_0'
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
	mov	r0,#__mullong_a_1_1
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
;	_mullong.c:738: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
	mov	r1,#__mullong_a_1_1
	movx	a,@r1
	mov	r7,a
	mov	r6,#__mullong_PARM_2
	mov	a,#0x02
	add	a,r6
	mov	r1,a
	movx	a,@r1
	mov	b,r7
	mul	ab
	mov	r7,a
	mov	r5,b
	mov	r0,#(__mullong_t_1_2 + 0x0002)
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
;	_mullong.c:739: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
	mov	r1,#__mullong_a_1_1
	movx	a,@r1
	mov	r7,a
	mov	r1,#__mullong_PARM_2
	movx	a,@r1
	mov	b,r7
	mul	ab
	mov	r7,a
	mov	r5,b
	mov	r0,#__mullong_t_1_2
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
;	_mullong.c:740: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	mov	r0,#(__mullong_t_1_2 + 0x0003)
	movx	a,@r0
	mov	r7,a
	mov	r6,#__mullong_a_1_1
	mov	a,#0x03
	add	a,r6
	mov	r1,a
	movx	a,@r1
	mov	r6,a
	mov	r1,#__mullong_PARM_2
	movx	a,@r1
	mov	b,r6
	mul	ab
	add	a,r7
	mov	r0,#(__mullong_t_1_2 + 0x0003)
	movx	@r0,a
;	_mullong.c:741: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	mov	r0,#(__mullong_t_1_2 + 0x0003)
	movx	a,@r0
	mov	r7,a
	mov	r6,#__mullong_a_1_1
	mov	a,#0x02
	add	a,r6
	mov	r1,a
	movx	a,@r1
	mov	r6,a
	mov	a,#(__mullong_PARM_2 + 1)
	mov	r1,a
	movx	a,@r1
	mov	b,r6
	mul	ab
	add	a,r7
	mov	r0,#(__mullong_t_1_2 + 0x0003)
	movx	@r0,a
;	_mullong.c:742: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
	mov	r0,#(__mullong_t_1_2 + 0x0002)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r5,#__mullong_a_1_1
	mov	a,#0x02
	add	a,r5
	mov	r1,a
	movx	a,@r1
	mov	r5,a
	mov	r1,#__mullong_PARM_2
	movx	a,@r1
	mov	b,r5
	mul	ab
	mov	r3,b
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	r0,#(__mullong_t_1_2 + 0x0002)
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	_mullong.c:744: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
	mov	r0,#(__mullong_t_1_2 + 0x0002)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	a,#(__mullong_a_1_1 + 1)
	mov	r1,a
	movx	a,@r1
	mov	r5,a
	mov	a,#(__mullong_PARM_2 + 1)
	mov	r1,a
	movx	a,@r1
	mov	b,r5
	mul	ab
	mov	r3,b
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	r0,#(__mullong_t_1_2 + 0x0002)
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	_mullong.c:746: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
	mov	r7,#__mullong_a_1_1
	mov	a,#0x03
	add	a,r7
	mov	r1,a
	mov	a,#(__mullong_a_1_1 + 1)
	mov	r0,a
	movx	a,@r0
	mov	r7,a
	mov	r6,#__mullong_PARM_2
	mov	a,#0x02
	add	a,r6
	mov	r0,a
	movx	a,@r0
	mov	b,r7
	mul	ab
	movx	@r1,a
;	_mullong.c:747: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
	mov	a,#(__mullong_a_1_1 + 1)
	mov	r1,a
	mov	a,#(__mullong_a_1_1 + 1)
	mov	r0,a
	movx	a,@r0
	mov	r7,a
	mov	r0,#__mullong_PARM_2
	movx	a,@r0
	mov	b,r7
	mul	ab
	mov	r5,b
	movx	@r1,a
	inc	r1
	mov	a,r5
	movx	@r1,a
;	_mullong.c:749: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
	mov	r7,#__mullong_PARM_2
	mov	a,#0x03
	add	a,r7
	mov	r1,a
	mov	r0,#__mullong_a_1_1
	movx	a,@r0
	mov	r7,a
	mov	r6,#__mullong_PARM_2
	mov	a,#0x03
	add	a,r6
	mov	r0,a
	movx	a,@r0
	mov	b,r7
	mul	ab
	movx	@r1,a
;	_mullong.c:750: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
	mov	a,#(__mullong_PARM_2 + 1)
	mov	r1,a
	mov	r0,#__mullong_a_1_1
	movx	a,@r0
	mov	r7,a
	mov	a,#(__mullong_PARM_2 + 1)
	mov	r0,a
	movx	a,@r0
	mov	b,r7
	mul	ab
	mov	r5,b
	movx	@r1,a
	inc	r1
	mov	a,r5
	movx	@r1,a
;	_mullong.c:752: bcast(b)->bi.b0 = 0;                                // B
	mov	r1,#__mullong_PARM_2
	clr	a
	movx	@r1,a
;	_mullong.c:753: bcast(a)->bi.b0 = 0;                                // C
	mov	r1,#__mullong_a_1_1
	movx	@r1,a
;	_mullong.c:754: t.l += a;
	mov	r0,#__mullong_t_1_2
	movx	a,@r0
	mov	__mullong_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(__mullong_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(__mullong_sloc0_1_0 + 2),a
	inc	r0
	movx	a,@r0
	mov	(__mullong_sloc0_1_0 + 3),a
	mov	r0,#__mullong_a_1_1
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	a,r2
	add	a,__mullong_sloc0_1_0
	mov	__mullong_sloc0_1_0,a
	mov	a,r3
	addc	a,(__mullong_sloc0_1_0 + 1)
	mov	(__mullong_sloc0_1_0 + 1),a
	mov	a,r6
	addc	a,(__mullong_sloc0_1_0 + 2)
	mov	(__mullong_sloc0_1_0 + 2),a
	mov	a,r7
	addc	a,(__mullong_sloc0_1_0 + 3)
	mov	(__mullong_sloc0_1_0 + 3),a
	mov	r0,#__mullong_t_1_2
	mov	a,__mullong_sloc0_1_0
	movx	@r0,a
	inc	r0
	mov	a,(__mullong_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(__mullong_sloc0_1_0 + 2)
	movx	@r0,a
	inc	r0
	mov	a,(__mullong_sloc0_1_0 + 3)
	movx	@r0,a
;	_mullong.c:756: return t.l + b;
	mov	r0,#__mullong_t_1_2
	movx	a,@r0
	inc	r0
	movx	a,@r0
	inc	r0
	movx	a,@r0
	inc	r0
	movx	a,@r0
	mov	r0,#__mullong_PARM_2
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	a,r4
	add	a,__mullong_sloc0_1_0
	mov	r4,a
	mov	a,r5
	addc	a,(__mullong_sloc0_1_0 + 1)
	mov	r5,a
	mov	a,r6
	addc	a,(__mullong_sloc0_1_0 + 2)
	mov	r6,a
	mov	a,r7
	addc	a,(__mullong_sloc0_1_0 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
