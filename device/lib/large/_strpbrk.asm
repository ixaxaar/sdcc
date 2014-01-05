;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:57 2013
;--------------------------------------------------------
	.module _strpbrk
	.optsdcc -mmcs51 --model-large
	
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
_strpbrk_sloc0_1_0:
	.ds 3
_strpbrk_sloc1_1_0:
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
_strpbrk_PARM_2:
	.ds 3
_strpbrk_string_1_21:
	.ds 3
_strpbrk_ret_1_22:
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
;Allocation info for local variables in function 'strpbrk'
;------------------------------------------------------------
;ch                        Allocated to registers r3 
;sloc0                     Allocated with name '_strpbrk_sloc0_1_0'
;sloc1                     Allocated with name '_strpbrk_sloc1_1_0'
;control                   Allocated with name '_strpbrk_PARM_2'
;string                    Allocated with name '_strpbrk_string_1_21'
;ret                       Allocated with name '_strpbrk_ret_1_22'
;p                         Allocated with name '_strpbrk_p_2_23'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_strpbrk_string_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strpbrk.c:36: char *ret = NULL;
	mov	dptr,#_strpbrk_ret_1_22
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_strpbrk.c:39: while (ch = *control) {
	mov	dptr,#_strpbrk_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00105$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,a
	jnz	00123$
	ljmp	00107$
00123$:
;	_strpbrk.c:40: char * p = strchr(string, ch);
	mov	dptr,#_strpbrk_string_1_21
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_strchr_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_strchr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
;	_strpbrk.c:41: if (p != NULL && (ret == NULL || p < ret)) {
	mov	a,r2
	orl	a,r3
	jz	00102$
	mov	dptr,#_strpbrk_ret_1_22
	movx	a,@dptr
	mov	_strpbrk_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strpbrk_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strpbrk_sloc0_1_0 + 2),a
	mov	a,_strpbrk_sloc0_1_0
	orl	a,(_strpbrk_sloc0_1_0 + 1)
	jz	00101$
	push	ar5
	push	ar6
	push	ar7
	mov	_strpbrk_sloc1_1_0,r2
	mov	(_strpbrk_sloc1_1_0 + 1),r3
	mov	(_strpbrk_sloc1_1_0 + 2),r4
	mov	r5,_strpbrk_sloc0_1_0
	mov	r6,(_strpbrk_sloc0_1_0 + 1)
	mov	r7,(_strpbrk_sloc0_1_0 + 2)
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_strpbrk_sloc1_1_0
	mov	dph,(_strpbrk_sloc1_1_0 + 1)
	mov	b,(_strpbrk_sloc1_1_0 + 2)
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00102$
00101$:
;	_strpbrk.c:42: ret = p;
	mov	dptr,#_strpbrk_ret_1_22
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00102$:
;	_strpbrk.c:44: control++;
	inc	r5
	cjne	r5,#0x00,00127$
	inc	r6
00127$:
	ljmp	00105$
00107$:
;	_strpbrk.c:47: return (ret);
	mov	dptr,#_strpbrk_ret_1_22
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
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
