;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _memcpy
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy_PARM_3
	.globl _memcpy_PARM_2
	.globl _memcpy
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
_memcpy_PARM_2:
	.ds 3
_memcpy_PARM_3:
	.ds 2
_memcpy_ret_1_22:
	.ds 3
_memcpy_sloc0_1_0:
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
;Allocation info for local variables in function 'memcpy'
;------------------------------------------------------------
;src                       Allocated with name '_memcpy_PARM_2'
;acount                    Allocated with name '_memcpy_PARM_3'
;dst                       Allocated to registers r5 r6 r7 
;ret                       Allocated with name '_memcpy_ret_1_22'
;d                         Allocated to registers 
;s                         Allocated to registers 
;sloc0                     Allocated with name '_memcpy_sloc0_1_0'
;------------------------------------------------------------
;	_memcpy.c:36: void * memcpy (
;	-----------------------------------------
;	 function memcpy
;	-----------------------------------------
_memcpy:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_memcpy.c:42: void * ret = dst;
	mov	_memcpy_ret_1_22,r5
	mov	(_memcpy_ret_1_22 + 1),r6
	mov	(_memcpy_ret_1_22 + 2),r7
;	_memcpy.c:43: char * d = dst;
;	_memcpy.c:44: char * s = src;
	mov	_memcpy_sloc0_1_0,_memcpy_PARM_2
	mov	(_memcpy_sloc0_1_0 + 1),(_memcpy_PARM_2 + 1)
	mov	(_memcpy_sloc0_1_0 + 2),(_memcpy_PARM_2 + 2)
;	_memcpy.c:49: while (acount--) {
	mov	r0,_memcpy_PARM_3
	mov	r1,(_memcpy_PARM_3 + 1)
00101$:
	mov	ar3,r0
	mov	ar4,r1
	dec	r0
	cjne	r0,#0xFF,00113$
	dec	r1
00113$:
	mov	a,r3
	orl	a,r4
	jz	00103$
;	_memcpy.c:50: *d++ = *s++;
	mov	dpl,_memcpy_sloc0_1_0
	mov	dph,(_memcpy_sloc0_1_0 + 1)
	mov	b,(_memcpy_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	_memcpy_sloc0_1_0,dpl
	mov	(_memcpy_sloc0_1_0 + 1),dph
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00101$
00103$:
;	_memcpy.c:53: return(ret);
	mov	dpl,_memcpy_ret_1_22
	mov	dph,(_memcpy_ret_1_22 + 1)
	mov	b,(_memcpy_ret_1_22 + 2)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
