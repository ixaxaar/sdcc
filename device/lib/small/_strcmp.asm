;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _strcmp
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp_PARM_2
	.globl _strcmp
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
_strcmp_PARM_2:
	.ds 3
_strcmp_sloc0_1_0:
	.ds 3
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
;Allocation info for local variables in function 'strcmp'
;------------------------------------------------------------
;adst                      Allocated with name '_strcmp_PARM_2'
;asrc                      Allocated to registers 
;ret                       Allocated to registers r5 r6 
;sloc0                     Allocated with name '_strcmp_sloc0_1_0'
;------------------------------------------------------------
;	_strcmp.c:34: int strcmp (
;	-----------------------------------------
;	 function strcmp
;	-----------------------------------------
_strcmp:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_strcmp_sloc0_1_0,dpl
	mov	(_strcmp_sloc0_1_0 + 1),dph
	mov	(_strcmp_sloc0_1_0 + 2),b
;	_strcmp.c:53: while( ! (ret = *(unsigned char *)asrc - *(unsigned char *)adst) && *adst)
	mov	r2,_strcmp_PARM_2
	mov	r3,(_strcmp_PARM_2 + 1)
	mov	r4,(_strcmp_PARM_2 + 2)
00102$:
	mov	r0,_strcmp_sloc0_1_0
	mov	r1,(_strcmp_sloc0_1_0 + 1)
	mov	r7,(_strcmp_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	r7,#0x00
	mov	ar1,r2
	mov	ar5,r3
	mov	ar6,r4
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	mov	r6,#0x00
	mov	a,r0
	clr	c
	subb	a,r1
	mov	r0,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	mov	ar5,r0
	mov	ar6,r7
	mov	a,r0
	orl	a,r7
	jnz	00104$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00104$
;	_strcmp.c:54: ++asrc, ++adst;
	inc	_strcmp_sloc0_1_0
	clr	a
	cjne	a,_strcmp_sloc0_1_0,00119$
	inc	(_strcmp_sloc0_1_0 + 1)
00119$:
	inc	r2
	cjne	r2,#0x00,00102$
	inc	r3
	sjmp	00102$
00104$:
;	_strcmp.c:56: return( ret );
	mov	dpl,r5
	mov	dph,r6
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
