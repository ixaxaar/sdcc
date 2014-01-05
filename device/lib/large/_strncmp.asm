;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:57 2013
;--------------------------------------------------------
	.module _strncmp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp_PARM_3
	.globl _strncmp_PARM_2
	.globl _strncmp
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
_strncmp_sloc0_1_0:
	.ds 1
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
_strncmp_PARM_2:
	.ds 3
_strncmp_PARM_3:
	.ds 2
_strncmp_first_1_21:
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
;Allocation info for local variables in function 'strncmp'
;------------------------------------------------------------
;last                      Allocated with name '_strncmp_PARM_2'
;count                     Allocated with name '_strncmp_PARM_3'
;first                     Allocated with name '_strncmp_first_1_21'
;sloc0                     Allocated with name '_strncmp_sloc0_1_0'
;------------------------------------------------------------
;	_strncmp.c:31: int strncmp (
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
_strncmp:
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
	mov	dptr,#_strncmp_first_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strncmp.c:37: if (!count)
	mov	dptr,#_strncmp_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00114$
;	_strncmp.c:38: return(0);
	mov	dptr,#0x0000
	ret
;	_strncmp.c:40: while (--count && *first && *first == *last) {
00114$:
	mov	dptr,#_strncmp_first_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strncmp_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
00105$:
	dec	r6
	cjne	r6,#0xFF,00127$
	dec	r7
00127$:
	mov	a,r6
	orl	a,r7
	jz	00115$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	_strncmp_sloc0_1_0,a
	jz	00115$
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r7,a
	cjne	a,_strncmp_sloc0_1_0,00130$
	sjmp	00131$
00130$:
	pop	ar7
	pop	ar6
	sjmp	00115$
00131$:
	pop	ar7
	pop	ar6
;	_strncmp.c:41: first++;
	inc	r3
	cjne	r3,#0x00,00132$
	inc	r4
00132$:
	mov	dptr,#_strncmp_first_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_strncmp.c:42: last++;
	inc	r0
	cjne	r0,#0x00,00105$
	inc	r1
	sjmp	00105$
00115$:
	mov	dptr,#_strncmp_first_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_strncmp.c:45: return( *first - *last );
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r3
	clr	c
	subb	a,r0
	mov	r3,a
	mov	a,r7
	subb	a,r6
	mov	dpl,r3
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
