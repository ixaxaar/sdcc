;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:56 2013
;--------------------------------------------------------
	.module _modslong
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modslong_PARM_2
	.globl __modslong
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
__modslong_sloc0_1_0:
	.ds 4
__modslong_sloc1_1_0:
	.ds 4
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
__modslong_PARM_2:
	.ds 4
__modslong_a_1_1:
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
;Allocation info for local variables in function '_modslong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__modslong_sloc0_1_0'
;sloc1                     Allocated with name '__modslong_sloc1_1_0'
;b                         Allocated with name '__modslong_PARM_2'
;a                         Allocated with name '__modslong_a_1_1'
;r                         Allocated with name '__modslong_r_1_2'
;------------------------------------------------------------
;	_modslong.c:259: _modslong (long a, long b)
;	-----------------------------------------
;	 function _modslong
;	-----------------------------------------
__modslong:
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
	mov	dptr,#__modslong_a_1_1
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
;	_modslong.c:263: r = (unsigned long)(a < 0 ? -a : a) % (unsigned long)(b < 0 ? -b : b);
	mov	dptr,#__modslong_a_1_1
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
	rlc	a
	clr	a
	rlc	a
	mov	r3,a
	jz	00106$
	clr	c
	clr	a
	subb	a,r4
	mov	__modslong_sloc0_1_0,a
	clr	a
	subb	a,r5
	mov	(__modslong_sloc0_1_0 + 1),a
	clr	a
	subb	a,r6
	mov	(__modslong_sloc0_1_0 + 2),a
	clr	a
	subb	a,r7
	mov	(__modslong_sloc0_1_0 + 3),a
	sjmp	00107$
00106$:
	mov	__modslong_sloc0_1_0,r4
	mov	(__modslong_sloc0_1_0 + 1),r5
	mov	(__modslong_sloc0_1_0 + 2),r6
	mov	(__modslong_sloc0_1_0 + 3),r7
00107$:
	mov	r4,__modslong_sloc0_1_0
	mov	r5,(__modslong_sloc0_1_0 + 1)
	mov	r6,(__modslong_sloc0_1_0 + 2)
	mov	r7,(__modslong_sloc0_1_0 + 3)
	mov	dptr,#__modslong_PARM_2
	movx	a,@dptr
	mov	__modslong_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(__modslong_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(__modslong_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(__modslong_sloc0_1_0 + 3),a
	jnb	acc.7,00108$
	clr	c
	clr	a
	subb	a,__modslong_sloc0_1_0
	mov	__modslong_sloc1_1_0,a
	clr	a
	subb	a,(__modslong_sloc0_1_0 + 1)
	mov	(__modslong_sloc1_1_0 + 1),a
	clr	a
	subb	a,(__modslong_sloc0_1_0 + 2)
	mov	(__modslong_sloc1_1_0 + 2),a
	clr	a
	subb	a,(__modslong_sloc0_1_0 + 3)
	mov	(__modslong_sloc1_1_0 + 3),a
	sjmp	00109$
00108$:
	mov	__modslong_sloc1_1_0,__modslong_sloc0_1_0
	mov	(__modslong_sloc1_1_0 + 1),(__modslong_sloc0_1_0 + 1)
	mov	(__modslong_sloc1_1_0 + 2),(__modslong_sloc0_1_0 + 2)
	mov	(__modslong_sloc1_1_0 + 3),(__modslong_sloc0_1_0 + 3)
00109$:
	mov	dptr,#__modulong_PARM_2
	mov	a,__modslong_sloc1_1_0
	movx	@dptr,a
	mov	a,(__modslong_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(__modslong_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(__modslong_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	_modslong.c:265: if (a < 0)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar3
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,r3
	jz	00102$
;	_modslong.c:266: return -r;
	clr	c
	clr	a
	subb	a,r4
	mov	r0,a
	clr	a
	subb	a,r5
	mov	r1,a
	clr	a
	subb	a,r6
	mov	r2,a
	clr	a
	subb	a,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	ret
00102$:
;	_modslong.c:268: return r;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
