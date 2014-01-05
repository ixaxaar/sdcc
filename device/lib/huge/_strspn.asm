;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:00 2013
;--------------------------------------------------------
	.module _strspn
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strspn_PARM_2
	.globl _strspn
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
_strspn_count_1_22:
	.ds 2
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
_strspn_PARM_2:
	.ds 3
_strspn_string_1_21:
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
;Allocation info for local variables in function 'strspn'
;------------------------------------------------------------
;count                     Allocated with name '_strspn_count_1_22'
;ch                        Allocated to registers r1 
;control                   Allocated with name '_strspn_PARM_2'
;string                    Allocated with name '_strspn_string_1_21'
;------------------------------------------------------------
;	_strspn.c:31: size_t strspn (
;	-----------------------------------------
;	 function strspn
;	-----------------------------------------
_strspn:
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
	mov	dptr,#_strspn_string_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strspn.c:39: while (ch = *string) {
	clr	a
	mov	_strspn_count_1_22,a
	mov	(_strspn_count_1_22 + 1),a
	mov	dptr,#_strspn_string_1_21
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00104$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	r1,a
	jz	00112$
;	_strspn.c:40: if ( strchr(control,ch) )
	mov	dptr,#_strspn_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strchr_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r2
	mov	b,r7
	push	ar5
	push	ar4
	push	ar3
	mov	r0,#_strchr
	mov	r1,#(_strchr >> 8)
	mov	r2,#(_strchr >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r2
	orl	a,r6
	jz	00112$
;	_strspn.c:41: count++ ;
	inc	_strspn_count_1_22
	clr	a
	cjne	a,_strspn_count_1_22,00121$
	inc	(_strspn_count_1_22 + 1)
00121$:
;	_strspn.c:44: string++ ;
	inc	r3
	cjne	r3,#0x00,00122$
	inc	r4
00122$:
	mov	dptr,#_strspn_string_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00112$:
	mov	dptr,#_strspn_string_1_21
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_strspn.c:47: return count ;
	mov	dpl,_strspn_count_1_22
	mov	dph,(_strspn_count_1_22 + 1)
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
