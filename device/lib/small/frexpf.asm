;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:49 2013
;--------------------------------------------------------
	.module frexpf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf_PARM_2
	.globl _frexpf
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
_frexpf_PARM_2:
	.ds 3
_frexpf_fl_1_24:
	.ds 4
_frexpf_i_1_24:
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
;Allocation info for local variables in function 'frexpf'
;------------------------------------------------------------
;pw2                       Allocated with name '_frexpf_PARM_2'
;x                         Allocated to registers r4 r5 r6 r7 
;fl                        Allocated with name '_frexpf_fl_1_24'
;i                         Allocated with name '_frexpf_i_1_24'
;------------------------------------------------------------
;	frexpf.c:34: float frexpf(const float x, int *pw2)
;	-----------------------------------------
;	 function frexpf
;	-----------------------------------------
_frexpf:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	frexpf.c:39: fl.f=x;
	mov	(_frexpf_fl_1_24 + 0),r4
	mov	(_frexpf_fl_1_24 + 1),r5
	mov	(_frexpf_fl_1_24 + 2),r6
	mov	(_frexpf_fl_1_24 + 3),r7
;	frexpf.c:41: i  = ( fl.l >> 23) & 0x000000ff;
	mov	r4,(_frexpf_fl_1_24 + 2)
	mov	a,(_frexpf_fl_1_24 + 3)
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
	mov	_frexpf_i_1_24,r4
;	frexpf.c:42: i -= 0x7e;
	clr	a
	mov	(_frexpf_i_1_24 + 1),a
	mov	(_frexpf_i_1_24 + 2),a
	mov	(_frexpf_i_1_24 + 3),a
	mov	a,_frexpf_i_1_24
	add	a,#0x82
	mov	_frexpf_i_1_24,a
	mov	a,(_frexpf_i_1_24 + 1)
	addc	a,#0xFF
	mov	(_frexpf_i_1_24 + 1),a
	mov	a,(_frexpf_i_1_24 + 2)
	addc	a,#0xFF
	mov	(_frexpf_i_1_24 + 2),a
	mov	a,(_frexpf_i_1_24 + 3)
	addc	a,#0xFF
	mov	(_frexpf_i_1_24 + 3),a
;	frexpf.c:43: *pw2 = i;
	mov	r2,_frexpf_PARM_2
	mov	r3,(_frexpf_PARM_2 + 1)
	mov	r7,(_frexpf_PARM_2 + 2)
	mov	r4,_frexpf_i_1_24
	mov	r5,(_frexpf_i_1_24 + 1)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	frexpf.c:44: fl.l &= 0x807fffff; /* strip all exponent bits */
	mov	r4,_frexpf_fl_1_24
	mov	r5,(_frexpf_fl_1_24 + 1)
	mov	r6,(_frexpf_fl_1_24 + 2)
	mov	r7,(_frexpf_fl_1_24 + 3)
	anl	ar6,#0x7F
	anl	ar7,#0x80
	mov	(_frexpf_fl_1_24 + 0),r4
;	frexpf.c:45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	mov	(_frexpf_fl_1_24 + 1),r5
	mov	(_frexpf_fl_1_24 + 2),r6
	mov	(_frexpf_fl_1_24 + 3),r7
	mov	r4,_frexpf_fl_1_24
	mov	a,#0x3F
	orl	a,(_frexpf_fl_1_24 + 3)
	mov	r7,a
	mov	(_frexpf_fl_1_24 + 0),r4
	mov	(_frexpf_fl_1_24 + 1),r5
	mov	(_frexpf_fl_1_24 + 2),r6
	mov	(_frexpf_fl_1_24 + 3),r7
;	frexpf.c:46: return(fl.f);
	mov	dpl,_frexpf_fl_1_24
	mov	dph,(_frexpf_fl_1_24 + 1)
	mov	b,(_frexpf_fl_1_24 + 2)
	mov	a,(_frexpf_fl_1_24 + 3)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
