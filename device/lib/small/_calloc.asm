;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _calloc
	.optsdcc -mmcs51 --model-small
	
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
_calloc_PARM_2:
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
;nmemb                     Allocated to registers 
;ptr                       Allocated to registers r4 r5 
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
;	_calloc.c:74: ptr = malloc(nmemb * size);
	mov	__mulint_PARM_2,_calloc_PARM_2
	mov	(__mulint_PARM_2 + 1),(_calloc_PARM_2 + 1)
	lcall	__mulint
	mov	r6,dpl
	mov  r7,dph
	push	ar7
	push	ar6
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	_calloc.c:75: if (ptr)
	mov	a,r4
	orl	a,r5
	jz	00102$
;	_calloc.c:77: memset(ptr, 0, nmemb * size);
	mov	ar1,r4
	mov	ar2,r5
	mov	r3,#0x00
;	1-genFromRTrack replaced	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_2,r3
	mov	_memset_PARM_3,r6
	mov	(_memset_PARM_3 + 1),r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar5
	push	ar4
	lcall	_memset
	pop	ar4
	pop	ar5
00102$:
;	_calloc.c:79: return ptr;
	mov	dpl,r4
	mov	dph,r5
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
