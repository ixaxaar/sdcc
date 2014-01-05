;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:57 2013
;--------------------------------------------------------
	.module _memchr
	.optsdcc -mmcs51 --model-large
	
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
_memchr_sloc0_1_0:
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
_memchr_PARM_2:
	.ds 2
_memchr_PARM_3:
	.ds 2
_memchr_s_1_21:
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
;Allocation info for local variables in function 'memchr'
;------------------------------------------------------------
;c                         Allocated with name '_memchr_PARM_2'
;n                         Allocated with name '_memchr_PARM_3'
;s                         Allocated with name '_memchr_s_1_21'
;p                         Allocated with name '_memchr_p_1_22'
;end                       Allocated with name '_memchr_end_1_22'
;sloc0                     Allocated with name '_memchr_sloc0_1_0'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_memchr_s_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_memchr.c:33: unsigned char *p = (unsigned char *)s;
	mov	dptr,#_memchr_s_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	_memchr.c:34: unsigned char *end = p + n;
	mov	dptr,#_memchr_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,r5
	mov	r3,a
	mov	a,r4
	addc	a,r6
	mov	r2,a
	mov	ar4,r7
;	_memchr.c:38: return(0);
	mov	dptr,#_memchr_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	_memchr_sloc0_1_0,r5
	mov	(_memchr_sloc0_1_0 + 1),r6
	mov	(_memchr_sloc0_1_0 + 2),r7
00105$:
;	_memchr.c:35: for(; p != end; p++)
	push	_memchr_sloc0_1_0
	push	(_memchr_sloc0_1_0 + 1)
	push	(_memchr_sloc0_1_0 + 2)
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00103$
;	_memchr.c:36: if(*p == c)
	push	ar3
	push	ar2
	push	ar4
	mov	dpl,_memchr_sloc0_1_0
	mov	dph,(_memchr_sloc0_1_0 + 1)
	mov	b,(_memchr_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	cjne	a,ar0,00119$
	mov	a,r3
	cjne	a,ar1,00119$
	sjmp	00120$
00119$:
	pop	ar4
	pop	ar2
	pop	ar3
	sjmp	00106$
00120$:
	pop	ar4
	pop	ar2
	pop	ar3
;	_memchr.c:37: return((void *)p);
	mov	r5,_memchr_sloc0_1_0
	mov	r6,(_memchr_sloc0_1_0 + 1)
	mov	r7,(_memchr_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00106$:
;	_memchr.c:35: for(; p != end; p++)
	inc	_memchr_sloc0_1_0
	clr	a
	cjne	a,_memchr_sloc0_1_0,00105$
	inc	(_memchr_sloc0_1_0 + 1)
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
