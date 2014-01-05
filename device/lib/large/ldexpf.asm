;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:55 2013
;--------------------------------------------------------
	.module ldexpf
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf_PARM_2
	.globl _ldexpf
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
_ldexpf_PARM_2:
	.ds 2
_ldexpf_x_1_23:
	.ds 4
_ldexpf_fl_1_24:
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
;Allocation info for local variables in function 'ldexpf'
;------------------------------------------------------------
;pw2                       Allocated with name '_ldexpf_PARM_2'
;x                         Allocated with name '_ldexpf_x_1_23'
;fl                        Allocated with name '_ldexpf_fl_1_24'
;e                         Allocated with name '_ldexpf_e_1_24'
;------------------------------------------------------------
;	ldexpf.c:34: float ldexpf(const float x, const int pw2)
;	-----------------------------------------
;	 function ldexpf
;	-----------------------------------------
_ldexpf:
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
	mov	dptr,#_ldexpf_x_1_23
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
;	ldexpf.c:39: fl.f = x;
	mov	dptr,#_ldexpf_x_1_23
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
	mov	dptr,#_ldexpf_fl_1_24
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
;	ldexpf.c:41: e=(fl.l >> 23) & 0x000000ff;
	mov	dptr,#_ldexpf_fl_1_24
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	jnb	acc.0,00103$
	orl	a,#0xFE
00103$:
	rlc	a
	subb	a,acc
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	ldexpf.c:42: e+=pw2;
	mov	dptr,#_ldexpf_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	ar0,r2
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	a,r2
	addc	a,r6
	mov	a,r3
	addc	a,r7
;	ldexpf.c:43: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	mov	r5,#0x00
	mov	ar6,r4
	mov	a,r5
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r6
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dptr,#_ldexpf_fl_1_24
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
	anl	ar2,#0x7F
	anl	ar3,#0x80
	mov	a,r4
	orl	ar0,a
	mov	a,r5
	orl	ar1,a
	mov	a,r6
	orl	ar2,a
	mov	a,r7
	orl	ar3,a
	mov	dptr,#_ldexpf_fl_1_24
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
;	ldexpf.c:45: return(fl.f);
	mov	dptr,#_ldexpf_fl_1_24
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
