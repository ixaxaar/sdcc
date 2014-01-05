;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _strpbrk
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strpbrk_PARM_2
	.globl _strpbrk
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
_strpbrk_PARM_2:
	.ds 3
_strpbrk_string_1_21:
	.ds 3
_strpbrk_ret_1_22:
	.ds 3
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
;Allocation info for local variables in function 'strpbrk'
;------------------------------------------------------------
;control                   Allocated with name '_strpbrk_PARM_2'
;string                    Allocated with name '_strpbrk_string_1_21'
;ret                       Allocated with name '_strpbrk_ret_1_22'
;ch                        Allocated to registers r5 
;p                         Allocated to registers r4 r5 r6 
;------------------------------------------------------------
;	_strpbrk.c:31: char * strpbrk (
;	-----------------------------------------
;	 function strpbrk
;	-----------------------------------------
_strpbrk:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_strpbrk_string_1_21,dpl
	mov	(_strpbrk_string_1_21 + 1),dph
	mov	(_strpbrk_string_1_21 + 2),b
;	_strpbrk.c:36: char *ret = NULL;
	clr	a
	mov	_strpbrk_ret_1_22,a
	mov	(_strpbrk_ret_1_22 + 1),a
;	1-genFromRTrack replaced	mov	(_strpbrk_ret_1_22 + 2),#0x00
	mov	(_strpbrk_ret_1_22 + 2),a
;	_strpbrk.c:39: while (ch = *control) {
	mov	r0,_strpbrk_PARM_2
	mov	r1,(_strpbrk_PARM_2 + 1)
	mov	r7,(_strpbrk_PARM_2 + 2)
00105$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	mov	r5,a
	jz	00107$
;	_strpbrk.c:40: char * p = strchr(string, ch);
	mov	_strchr_PARM_2,r5
	mov	dpl,_strpbrk_string_1_21
	mov	dph,(_strpbrk_string_1_21 + 1)
	mov	b,(_strpbrk_string_1_21 + 2)
	push	ar7
	push	ar1
	push	ar0
	lcall	_strchr
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	pop	ar0
	pop	ar1
	pop	ar7
;	_strpbrk.c:41: if (p != NULL && (ret == NULL || p < ret)) {
	mov	a,r4
	orl	a,r5
	jz	00102$
	mov	a,_strpbrk_ret_1_22
	orl	a,(_strpbrk_ret_1_22 + 1)
	jz	00101$
	push	_strpbrk_ret_1_22
	push	(_strpbrk_ret_1_22 + 1)
	push	(_strpbrk_ret_1_22 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	00102$
00101$:
;	_strpbrk.c:42: ret = p;
	mov	_strpbrk_ret_1_22,r4
	mov	(_strpbrk_ret_1_22 + 1),r5
	mov	(_strpbrk_ret_1_22 + 2),r6
00102$:
;	_strpbrk.c:44: control++;
	inc	r0
	cjne	r0,#0x00,00105$
	inc	r1
	sjmp	00105$
00107$:
;	_strpbrk.c:47: return (ret);
	mov	dpl,_strpbrk_ret_1_22
	mov	dph,(_strpbrk_ret_1_22 + 1)
	mov	b,(_strpbrk_ret_1_22 + 2)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
