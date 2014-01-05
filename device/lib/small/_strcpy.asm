;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:51 2013
;--------------------------------------------------------
	.module _strcpy
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcpy_PARM_2
	.globl _strcpy
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
_strcpy_PARM_2:
	.ds 3
_strcpy_d_1_21:
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
;Allocation info for local variables in function 'strcpy'
;------------------------------------------------------------
;s                         Allocated with name '_strcpy_PARM_2'
;d                         Allocated with name '_strcpy_d_1_21'
;d1                        Allocated to registers r0 r1 r7 
;------------------------------------------------------------
;	_strcpy.c:34: char * strcpy (
;	-----------------------------------------
;	 function strcpy
;	-----------------------------------------
_strcpy:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_strcpy_d_1_21,dpl
	mov	(_strcpy_d_1_21 + 1),dph
	mov	(_strcpy_d_1_21 + 2),b
;	_strcpy.c:48: while (*d1++ = *s++) ;
	mov	r2,_strcpy_PARM_2
	mov	r3,(_strcpy_PARM_2 + 1)
	mov	r4,(_strcpy_PARM_2 + 2)
	mov	r0,_strcpy_d_1_21
	mov	r1,(_strcpy_d_1_21 + 1)
	mov	r7,(_strcpy_d_1_21 + 2)
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	r0,dpl
	mov	r1,dph
	mov	a,r6
	jnz	00101$
;	_strcpy.c:50: return d;
	mov	dpl,_strcpy_d_1_21
	mov	dph,(_strcpy_d_1_21 + 1)
	mov	b,(_strcpy_d_1_21 + 2)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
