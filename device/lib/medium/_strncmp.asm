;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:53 2013
;--------------------------------------------------------
	.module _strncmp
	.optsdcc -mmcs51 --model-medium
	
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
	.ds 2
_strncmp_sloc1_1_0:
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
_strncmp_PARM_2:
	.ds 3
_strncmp_PARM_3:
	.ds 2
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
;Allocation info for local variables in function 'strncmp'
;------------------------------------------------------------
;sloc0                     Allocated with name '_strncmp_sloc0_1_0'
;sloc1                     Allocated with name '_strncmp_sloc1_1_0'
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
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_strncmp.c:37: if (!count)
	mov	r0,#_strncmp_PARM_3
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00114$
;	_strncmp.c:38: return(0);
	mov	dptr,#0x0000
	ret
;	_strncmp.c:40: while (--count && *first && *first == *last) {
00114$:
	mov	r0,#_strncmp_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	r0,#_strncmp_PARM_3
	movx	a,@r0
	mov	_strncmp_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_strncmp_sloc0_1_0 + 1),a
00105$:
	dec	_strncmp_sloc0_1_0
	mov	a,#0xFF
	cjne	a,_strncmp_sloc0_1_0,00127$
	dec	(_strncmp_sloc0_1_0 + 1)
00127$:
	mov	a,_strncmp_sloc0_1_0
	orl	a,(_strncmp_sloc0_1_0 + 1)
	jz	00107$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_strncmp_sloc1_1_0,a
	jz	00107$
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	a,_strncmp_sloc1_1_0,00130$
	sjmp	00131$
00130$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00107$
00131$:
	pop	ar7
	pop	ar6
	pop	ar5
;	_strncmp.c:41: first++;
	inc	r5
	cjne	r5,#0x00,00132$
	inc	r6
00132$:
;	_strncmp.c:42: last++;
	inc	r2
	cjne	r2,#0x00,00105$
	inc	r3
	sjmp	00105$
00107$:
;	_strncmp.c:45: return( *first - *last );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	clr	c
	subb	a,r2
	mov	dpl,a
	mov	a,r7
	subb	a,r6
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
