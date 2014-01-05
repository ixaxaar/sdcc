;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:02 2013
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mmcs51 --model-huge
	
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
	.ds 3
_memmove_sloc1_1_0:
	.ds 4
_memmove_sloc2_1_0:
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
_memmove_PARM_2:
	.ds 3
_memmove_PARM_3:
	.ds 2
_memmove_dst_1_21:
	.ds 3
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
;d                         Allocated with name '_memmove_d_1_22'
;s                         Allocated with name '_memmove_s_1_22'
;sloc0                     Allocated with name '_memmove_sloc0_1_0'
;sloc1                     Allocated with name '_memmove_sloc1_1_0'
;sloc2                     Allocated with name '_memmove_sloc2_1_0'
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
	mov	dptr,#_memmove_dst_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_memmove.c:46: void * ret = dst;
	mov	dptr,#_memmove_dst_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	_memmove.c:50: if ((uintptr_t)src < (uintptr_t)dst) {
	mov	dptr,#_memmove_PARM_2
	movx	a,@dptr
	mov	_memmove_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_memmove_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_memmove_sloc0_1_0 + 2),a
	mov	_memmove_sloc1_1_0,_memmove_sloc0_1_0
	mov	(_memmove_sloc1_1_0 + 1),(_memmove_sloc0_1_0 + 1)
	mov	(_memmove_sloc1_1_0 + 2),(_memmove_sloc0_1_0 + 2)
	mov	(_memmove_sloc1_1_0 + 3),#0x00
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	ar1,r4
	mov	r4,#0x00
	clr	c
	mov	a,_memmove_sloc1_1_0
	subb	a,r2
	mov	a,(_memmove_sloc1_1_0 + 1)
	subb	a,r3
	mov	a,(_memmove_sloc1_1_0 + 2)
	subb	a,r1
	mov	a,(_memmove_sloc1_1_0 + 3)
	subb	a,r4
	jc	00129$
	ljmp	00108$
00129$:
;	_memmove.c:54: d = ((char *)dst)+acount-1;
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dptr,#_memmove_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	add	a,r2
	mov	r2,a
	mov	a,r1
	addc	a,r3
	mov	r3,a
	dec	r2
	cjne	r2,#0xFF,00130$
	dec	r3
00130$:
;	_memmove.c:55: s = ((char *)src)+acount-1;
	push	ar5
	push	ar6
	push	ar7
	mov	r5,_memmove_sloc0_1_0
	mov	r6,(_memmove_sloc0_1_0 + 1)
	mov	r7,(_memmove_sloc0_1_0 + 2)
	mov	a,r0
	add	a,r5
	mov	r5,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,#0xFF
	mov	_memmove_sloc1_1_0,a
	mov	a,r6
	addc	a,#0xFF
	mov	(_memmove_sloc1_1_0 + 1),a
	mov	(_memmove_sloc1_1_0 + 2),r7
;	_memmove.c:56: while (acount--) {
	mov	_memmove_sloc2_1_0,r0
	mov	(_memmove_sloc2_1_0 + 1),r1
;	_memmove.c:71: return(ret);
	pop	ar7
	pop	ar6
	pop	ar5
;	_memmove.c:56: while (acount--) {
00101$:
	mov	r0,_memmove_sloc2_1_0
	mov	r1,(_memmove_sloc2_1_0 + 1)
	dec	_memmove_sloc2_1_0
	mov	a,#0xFF
	cjne	a,_memmove_sloc2_1_0,00131$
	dec	(_memmove_sloc2_1_0 + 1)
00131$:
	mov	a,r0
	orl	a,r1
	jnz	00132$
	ljmp	00109$
00132$:
;	_memmove.c:57: *d-- = *s--;
	mov	dpl,_memmove_sloc1_1_0
	mov	dph,(_memmove_sloc1_1_0 + 1)
	mov	b,(_memmove_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	dec	_memmove_sloc1_1_0
	mov	a,#0xFF
	cjne	a,_memmove_sloc1_1_0,00133$
	dec	(_memmove_sloc1_1_0 + 1)
00133$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
	dec	r2
	cjne	r2,#0xFF,00134$
	dec	r3
00134$:
	sjmp	00101$
00108$:
;	_memmove.c:64: d = dst;
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	_memmove.c:65: s = src;
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_memmove_sloc0_1_0
	mov	r1,(_memmove_sloc0_1_0 + 1)
	mov	r7,(_memmove_sloc0_1_0 + 2)
	mov	_memmove_sloc1_1_0,r0
	mov	(_memmove_sloc1_1_0 + 1),r1
	mov	(_memmove_sloc1_1_0 + 2),r7
;	_memmove.c:66: while (acount--) {
	mov	dptr,#_memmove_PARM_3
	movx	a,@dptr
	mov	_memmove_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_memmove_sloc2_1_0 + 1),a
;	_memmove.c:71: return(ret);
	pop	ar7
	pop	ar6
	pop	ar5
;	_memmove.c:66: while (acount--) {
00104$:
	mov	r0,_memmove_sloc2_1_0
	mov	r1,(_memmove_sloc2_1_0 + 1)
	dec	_memmove_sloc2_1_0
	mov	a,#0xFF
	cjne	a,_memmove_sloc2_1_0,00135$
	dec	(_memmove_sloc2_1_0 + 1)
00135$:
	mov	a,r0
	orl	a,r1
	jz	00109$
;	_memmove.c:67: *d++ = *s++;
	mov	dpl,_memmove_sloc1_1_0
	mov	dph,(_memmove_sloc1_1_0 + 1)
	mov	b,(_memmove_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	_memmove_sloc1_1_0,dpl
	mov	(_memmove_sloc1_1_0 + 1),dph
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	sjmp	00104$
00109$:
;	_memmove.c:71: return(ret);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
