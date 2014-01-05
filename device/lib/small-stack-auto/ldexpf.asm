;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:02 2013
;--------------------------------------------------------
	.module ldexpf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;pw2                       Allocated to stack - _bp -4
;x                         Allocated to registers r4 r5 r6 r7 
;fl                        Allocated to stack - _bp +9
;e                         Allocated to stack - _bp +13
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +5
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
	push	_bp
	mov	_bp,sp
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0x10
	mov	sp,a
;	ldexpf.c:39: fl.f = x;
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
;	ldexpf.c:41: e=(fl.l >> 23) & 0x000000ff;
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	ar4,r6
	mov	a,r7
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
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	ldexpf.c:42: e+=pw2;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	a,@r0
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	ldexpf.c:43: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar4
	mov	a,r5
	anl	a,#0x01
	mov	c,acc.0
	xch	a,@r0
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
	dec	r0
	dec	r0
	mov	@r0,#0x00
	dec	r0
	mov	@r0,#0x00
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	mov	a,#0x7F
	anl	a,r6
	inc	r0
	mov	@r0,a
	mov	a,#0x80
	anl	a,r7
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	orl	ar4,a
	inc	r0
	mov	a,@r0
	orl	ar5,a
	inc	r0
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
;	ldexpf.c:45: return(fl.f);
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
