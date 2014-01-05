;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:01 2013
;--------------------------------------------------------
	.module _calloc
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _malloc
	.globl _calloc_PARM_2
	.globl _calloc
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
_calloc_PARM_2:
	.ds 2
_calloc_nmemb_1_25:
	.ds 2
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
;Allocation info for local variables in function 'calloc'
;------------------------------------------------------------
;size                      Allocated with name '_calloc_PARM_2'
;nmemb                     Allocated with name '_calloc_nmemb_1_25'
;ptr                       Allocated with name '_calloc_ptr_1_26'
;------------------------------------------------------------
;	_calloc.c:70: void __xdata * calloc (size_t nmemb, size_t size)
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
_calloc:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_calloc_nmemb_1_25
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_calloc.c:74: ptr = malloc(nmemb * size);
	mov	dptr,#_calloc_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_calloc_nmemb_1_25
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	__mulint
	mov	r6,dpl
	mov  r7,dph
	push	ar7
	push	ar6
	mov	r0,#_malloc
	mov	r1,#(_malloc >> 8)
	mov	r2,#(_malloc >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	_calloc.c:75: if (ptr)
	mov	a,r4
	orl	a,r5
	jz	00102$
;	_calloc.c:77: memset(ptr, 0, nmemb * size);
	mov	ar2,r4
	mov	ar3,r5
	mov	ar1,r3
	mov	r3,#0x00
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	push	ar5
	push	ar4
	mov	r0,#_memset
	mov	r1,#(_memset >> 8)
	mov	r2,#(_memset >> 16)
	lcall	__sdcc_banked_call
	pop	ar4
	pop	ar5
00102$:
;	_calloc.c:79: return ptr;
	mov	dpl,r4
	mov	dph,r5
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
