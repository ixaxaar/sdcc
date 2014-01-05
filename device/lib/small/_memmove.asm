;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:51 2013
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove_PARM_3
	.globl _memmove_PARM_2
	.globl _memmove
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
_memmove_PARM_2:
	.ds 3
_memmove_PARM_3:
	.ds 2
_memmove_dst_1_21:
	.ds 3
_memmove_ret_1_22:
	.ds 3
_memmove_sloc0_1_0:
	.ds 2
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
;Allocation info for local variables in function 'memmove'
;------------------------------------------------------------
;src                       Allocated with name '_memmove_PARM_2'
;acount                    Allocated with name '_memmove_PARM_3'
;dst                       Allocated with name '_memmove_dst_1_21'
;ret                       Allocated with name '_memmove_ret_1_22'
;d                         Allocated to registers r5 r6 r7 
;s                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated with name '_memmove_sloc0_1_0'
;------------------------------------------------------------
;	_memmove.c:40: void * memmove (
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
_memmove:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_memmove_dst_1_21,dpl
	mov	(_memmove_dst_1_21 + 1),dph
	mov	(_memmove_dst_1_21 + 2),b
;	_memmove.c:46: void * ret = dst;
	mov	_memmove_ret_1_22,_memmove_dst_1_21
	mov	(_memmove_ret_1_22 + 1),(_memmove_dst_1_21 + 1)
	mov	(_memmove_ret_1_22 + 2),(_memmove_dst_1_21 + 2)
;	_memmove.c:50: if ((uintptr_t)src < (uintptr_t)dst) {
	mov	r0,_memmove_PARM_2
	mov	r1,(_memmove_PARM_2 + 1)
	mov	r3,(_memmove_PARM_2 + 2)
	mov	r4,#0x00
	mov	r2,_memmove_dst_1_21
	mov	r5,(_memmove_dst_1_21 + 1)
	mov	r6,(_memmove_dst_1_21 + 2)
	mov	r7,#0x00
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r5
	mov	a,r3
	subb	a,r6
	mov	a,r4
	subb	a,r7
	jnc	00108$
;	_memmove.c:54: d = ((char *)dst)+acount-1;
	mov	r5,_memmove_dst_1_21
	mov	r6,(_memmove_dst_1_21 + 1)
	mov	r7,(_memmove_dst_1_21 + 2)
	mov	a,_memmove_PARM_3
	add	a,r5
	mov	r5,a
	mov	a,(_memmove_PARM_3 + 1)
	addc	a,r6
	mov	r6,a
	dec	r5
	cjne	r5,#0xFF,00130$
	dec	r6
00130$:
;	_memmove.c:55: s = ((char *)src)+acount-1;
	mov	r2,_memmove_PARM_2
	mov	r3,(_memmove_PARM_2 + 1)
	mov	r4,(_memmove_PARM_2 + 2)
	mov	a,_memmove_PARM_3
	add	a,r2
	mov	r2,a
	mov	a,(_memmove_PARM_3 + 1)
	addc	a,r3
	mov	r3,a
	dec	r2
	cjne	r2,#0xFF,00131$
	dec	r3
00131$:
;	_memmove.c:56: while (acount--) {
	mov	_memmove_sloc0_1_0,_memmove_PARM_3
	mov	(_memmove_sloc0_1_0 + 1),(_memmove_PARM_3 + 1)
00101$:
	mov	r0,_memmove_sloc0_1_0
	mov	r1,(_memmove_sloc0_1_0 + 1)
	dec	_memmove_sloc0_1_0
	mov	a,#0xFF
	cjne	a,_memmove_sloc0_1_0,00132$
	dec	(_memmove_sloc0_1_0 + 1)
00132$:
	mov	a,r0
	orl	a,r1
	jz	00109$
;	_memmove.c:57: *d-- = *s--;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	dec	r2
	cjne	r2,#0xFF,00134$
	dec	r3
00134$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	dec	r5
	cjne	r5,#0xFF,00135$
	dec	r6
00135$:
	sjmp	00101$
00108$:
;	_memmove.c:64: d = dst;
	mov	r5,_memmove_dst_1_21
	mov	r6,(_memmove_dst_1_21 + 1)
	mov	r7,(_memmove_dst_1_21 + 2)
;	_memmove.c:65: s = src;
	mov	r2,_memmove_PARM_2
	mov	r3,(_memmove_PARM_2 + 1)
	mov	r4,(_memmove_PARM_2 + 2)
;	_memmove.c:66: while (acount--) {
	mov	_memmove_sloc0_1_0,_memmove_PARM_3
	mov	(_memmove_sloc0_1_0 + 1),(_memmove_PARM_3 + 1)
00104$:
	mov	r0,_memmove_sloc0_1_0
	mov	r1,(_memmove_sloc0_1_0 + 1)
	dec	_memmove_sloc0_1_0
	mov	a,#0xFF
	cjne	a,_memmove_sloc0_1_0,00136$
	dec	(_memmove_sloc0_1_0 + 1)
00136$:
	mov	a,r0
	orl	a,r1
	jz	00109$
;	_memmove.c:67: *d++ = *s++;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00104$
00109$:
;	_memmove.c:71: return(ret);
	mov	dpl,_memmove_ret_1_22
	mov	dph,(_memmove_ret_1_22 + 1)
	mov	b,(_memmove_ret_1_22 + 2)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
