;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module modff
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _modff_PARM_2
	.globl _modff
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
_modff_PARM_2:
	.ds 3
_modff_x_1_23:
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
;Allocation info for local variables in function 'modff'
;------------------------------------------------------------
;y                         Allocated with name '_modff_PARM_2'
;x                         Allocated with name '_modff_x_1_23'
;------------------------------------------------------------
;	modff.c:33: float modff(float x, float * y)
;	-----------------------------------------
;	 function modff
;	-----------------------------------------
_modff:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_modff_x_1_23,dpl
	mov	(_modff_x_1_23 + 1),dph
	mov	(_modff_x_1_23 + 2),b
	mov	(_modff_x_1_23 + 3),a
;	modff.c:35: *y=(long)x;
	mov	r1,_modff_PARM_2
	mov	r2,(_modff_PARM_2 + 1)
	mov	r3,(_modff_PARM_2 + 2)
	mov	dpl,_modff_x_1_23
	mov	dph,(_modff_x_1_23 + 1)
	mov	b,(_modff_x_1_23 + 2)
	mov	a,(_modff_x_1_23 + 3)
	push	ar3
	push	ar2
	push	ar1
	lcall	___fs2slong
	lcall	___slong2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar1
	pop	ar2
	pop	ar3
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	modff.c:36: return (x-*y);
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_modff_x_1_23
	mov	dph,(_modff_x_1_23 + 1)
	mov	b,(_modff_x_1_23 + 2)
	mov	a,(_modff_x_1_23 + 3)
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
