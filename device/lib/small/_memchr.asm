;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:50 2013
;--------------------------------------------------------
	.module _memchr
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memchr_PARM_3
	.globl _memchr_PARM_2
	.globl _memchr
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
_memchr_PARM_2:
	.ds 2
_memchr_PARM_3:
	.ds 2
_memchr_p_1_22:
	.ds 3
_memchr_end_1_22:
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
;Allocation info for local variables in function 'memchr'
;------------------------------------------------------------
;c                         Allocated with name '_memchr_PARM_2'
;n                         Allocated with name '_memchr_PARM_3'
;s                         Allocated to registers r5 r6 r7 
;p                         Allocated with name '_memchr_p_1_22'
;end                       Allocated with name '_memchr_end_1_22'
;------------------------------------------------------------
;	_memchr.c:31: void *memchr(const void *s, int c, size_t n)
;	-----------------------------------------
;	 function memchr
;	-----------------------------------------
_memchr:
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
;	_memchr.c:33: unsigned char *p = (unsigned char *)s;
	mov	_memchr_p_1_22,r5
	mov	(_memchr_p_1_22 + 1),r6
	mov	(_memchr_p_1_22 + 2),r7
;	_memchr.c:34: unsigned char *end = p + n;
	mov	a,_memchr_PARM_3
	add	a,_memchr_p_1_22
	mov	_memchr_end_1_22,a
	mov	a,(_memchr_PARM_3 + 1)
	addc	a,(_memchr_p_1_22 + 1)
	mov	(_memchr_end_1_22 + 1),a
	mov	(_memchr_end_1_22 + 2),(_memchr_p_1_22 + 2)
;	_memchr.c:38: return(0);
	mov	r0,_memchr_p_1_22
	mov	r1,(_memchr_p_1_22 + 1)
	mov	r4,(_memchr_p_1_22 + 2)
00105$:
;	_memchr.c:35: for(; p != end; p++)
	push	_memchr_end_1_22
	push	(_memchr_end_1_22 + 1)
	push	(_memchr_end_1_22 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00103$
;	_memchr.c:36: if(*p == c)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	mov	r2,#0x00
	cjne	a,_memchr_PARM_2,00106$
	mov	a,r2
	cjne	a,(_memchr_PARM_2 + 1),00106$
;	_memchr.c:37: return((void *)p);
	mov	r2,_memchr_p_1_22
	mov	r3,(_memchr_p_1_22 + 1)
	mov	r7,(_memchr_p_1_22 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	ret
00106$:
;	_memchr.c:35: for(; p != end; p++)
	inc	r0
	cjne	r0,#0x00,00121$
	inc	r1
00121$:
	mov	_memchr_p_1_22,r0
	mov	(_memchr_p_1_22 + 1),r1
	mov	(_memchr_p_1_22 + 2),r4
	sjmp	00105$
00103$:
;	_memchr.c:38: return(0);
	mov	dptr,#0x0000
	mov	b,#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
