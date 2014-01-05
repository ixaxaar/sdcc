;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:01 2013
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp_PARM_3
	.globl _memcmp_PARM_2
	.globl _memcmp
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
_memcmp_sloc0_1_0:
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
_memcmp_PARM_2:
	.ds 3
_memcmp_PARM_3:
	.ds 2
_memcmp_buf1_1_21:
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
;Allocation info for local variables in function 'memcmp'
;------------------------------------------------------------
;buf2                      Allocated with name '_memcmp_PARM_2'
;count                     Allocated with name '_memcmp_PARM_3'
;buf1                      Allocated with name '_memcmp_buf1_1_21'
;sloc0                     Allocated with name '_memcmp_sloc0_1_0'
;------------------------------------------------------------
;	_memcmp.c:31: int memcmp (
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
_memcmp:
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
	mov	dptr,#_memcmp_buf1_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_memcmp.c:37: if (!count)
	mov	dptr,#_memcmp_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00112$
;	_memcmp.c:38: return(0);
	mov	dptr,#0x0000
	ljmp	00107$
;	_memcmp.c:40: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
00104$:
	dec	r6
	cjne	r6,#0xFF,00123$
	dec	r7
00123$:
	mov	a,r6
	orl	a,r7
	jz	00106$
	push	ar6
	push	ar7
	mov	dptr,#_memcmp_buf1_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar0,r3
	mov	ar1,r4
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_memcmp_PARM_2
	movx	a,@dptr
	mov	_memcmp_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_memcmp_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_memcmp_sloc0_1_0 + 2),a
	mov	r1,_memcmp_sloc0_1_0
	mov	r2,(_memcmp_sloc0_1_0 + 1)
	mov	r7,(_memcmp_sloc0_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	mov	a,r0
	cjne	a,ar1,00125$
	sjmp	00126$
00125$:
	pop	ar7
	pop	ar6
	sjmp	00106$
00126$:
	pop	ar7
	pop	ar6
;	_memcmp.c:41: buf1 = (char *)buf1 + 1;
	inc	r3
	cjne	r3,#0x00,00127$
	inc	r4
00127$:
	mov	dptr,#_memcmp_buf1_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_memcmp.c:42: buf2 = (char *)buf2 + 1;
	mov	r3,_memcmp_sloc0_1_0
	mov	r4,(_memcmp_sloc0_1_0 + 1)
	mov	r5,(_memcmp_sloc0_1_0 + 2)
	inc	r3
	cjne	r3,#0x00,00128$
	inc	r4
00128$:
	mov	dptr,#_memcmp_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00106$:
;	_memcmp.c:45: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	mov	dptr,#_memcmp_buf1_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	dptr,#_memcmp_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	r6,#0x00
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r5,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	mov	dpl,r5
	mov	dph,r7
00107$:
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
