;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:54 2013
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mmcs51 --model-medium
	
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
_memmove_sloc0_1_0:
	.ds 4
_memmove_sloc1_1_0:
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
_memmove_PARM_2:
	.ds 3
_memmove_PARM_3:
	.ds 2
_memmove_dst_1_21:
	.ds 3
_memmove_ret_1_22:
	.ds 3
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
;sloc0                     Allocated with name '_memmove_sloc0_1_0'
;sloc1                     Allocated with name '_memmove_sloc1_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	r0,#_memmove_dst_1_21
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	_memmove.c:46: void * ret = dst;
	mov	r0,#_memmove_dst_1_21
	mov	r1,#_memmove_ret_1_22
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
;	_memmove.c:50: if ((uintptr_t)src < (uintptr_t)dst) {
	mov	r0,#_memmove_PARM_2
	movx	a,@r0
	mov	_memmove_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_memmove_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_memmove_sloc0_1_0 + 2),a
	mov	(_memmove_sloc0_1_0 + 3),#0x00
	mov	r0,#_memmove_dst_1_21
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	clr	c
	mov	a,_memmove_sloc0_1_0
	subb	a,r4
	mov	a,(_memmove_sloc0_1_0 + 1)
	subb	a,r5
	mov	a,(_memmove_sloc0_1_0 + 2)
	subb	a,r6
	mov	a,(_memmove_sloc0_1_0 + 3)
	subb	a,r7
	jnc	00108$
;	_memmove.c:54: d = ((char *)dst)+acount-1;
	mov	r0,#_memmove_dst_1_21
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#_memmove_PARM_3
	movx	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	movx	a,@r0
	addc	a,r6
	mov	r6,a
	dec	r5
	cjne	r5,#0xFF,00130$
	dec	r6
00130$:
;	_memmove.c:55: s = ((char *)src)+acount-1;
	mov	r0,#_memmove_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	r0,#_memmove_PARM_3
	movx	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	mov	r3,a
	dec	r2
	cjne	r2,#0xFF,00131$
	dec	r3
00131$:
;	_memmove.c:56: while (acount--) {
	mov	_memmove_sloc1_1_0,r2
	mov	(_memmove_sloc1_1_0 + 1),r3
	mov	(_memmove_sloc1_1_0 + 2),r4
	mov	r0,#_memmove_PARM_3
	movx	a,@r0
	mov	_memmove_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_memmove_sloc0_1_0 + 1),a
00101$:
	mov	r3,_memmove_sloc0_1_0
	mov	r4,(_memmove_sloc0_1_0 + 1)
	dec	_memmove_sloc0_1_0
	mov	a,#0xFF
	cjne	a,_memmove_sloc0_1_0,00132$
	dec	(_memmove_sloc0_1_0 + 1)
00132$:
	mov	a,r3
	orl	a,r4
	jnz	00133$
	ljmp	00109$
00133$:
;	_memmove.c:57: *d-- = *s--;
	mov	dpl,_memmove_sloc1_1_0
	mov	dph,(_memmove_sloc1_1_0 + 1)
	mov	b,(_memmove_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	dec	_memmove_sloc1_1_0
	mov	a,#0xFF
	cjne	a,_memmove_sloc1_1_0,00134$
	dec	(_memmove_sloc1_1_0 + 1)
00134$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	dec	r5
	cjne	r5,#0xFF,00135$
	dec	r6
00135$:
	sjmp	00101$
00108$:
;	_memmove.c:64: d = dst;
	mov	r0,#_memmove_dst_1_21
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
;	_memmove.c:65: s = src;
	mov	r0,#_memmove_PARM_2
	movx	a,@r0
	mov	_memmove_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_memmove_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_memmove_sloc0_1_0 + 2),a
;	_memmove.c:66: while (acount--) {
	mov	r0,#_memmove_PARM_3
	movx	a,@r0
	mov	_memmove_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_memmove_sloc1_1_0 + 1),a
00104$:
	mov	r3,_memmove_sloc1_1_0
	mov	r4,(_memmove_sloc1_1_0 + 1)
	dec	_memmove_sloc1_1_0
	mov	a,#0xFF
	cjne	a,_memmove_sloc1_1_0,00136$
	dec	(_memmove_sloc1_1_0 + 1)
00136$:
	mov	a,r3
	orl	a,r4
	jz	00109$
;	_memmove.c:67: *d++ = *s++;
	mov	dpl,_memmove_sloc0_1_0
	mov	dph,(_memmove_sloc0_1_0 + 1)
	mov	b,(_memmove_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	_memmove_sloc0_1_0,dpl
	mov	(_memmove_sloc0_1_0 + 1),dph
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00104$
00109$:
;	_memmove.c:71: return(ret);
	mov	r0,#_memmove_ret_1_22
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
