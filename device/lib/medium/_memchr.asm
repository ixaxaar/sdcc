;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:53 2013
;--------------------------------------------------------
	.module _memchr
	.optsdcc -mmcs51 --model-medium
	
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
_memchr_PARM_2:
	.ds 2
_memchr_PARM_3:
	.ds 2
_memchr_p_1_22:
	.ds 3
_memchr_end_1_22:
	.ds 3
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
	mov	r0,#_memchr_p_1_22
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	_memchr.c:34: unsigned char *end = p + n;
	mov	r0,#_memchr_p_1_22
	mov	r1,#_memchr_PARM_3
	movx	a,@r1
	xch	a,b
	movx	a,@r0
	add	a,b
	push	acc
	inc	r1
	movx	a,@r1
	xch	a,b
	inc	r0
	movx	a,@r0
	addc	a,b
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	r0,#(_memchr_end_1_22 + 2)
	pop	acc
	movx	@r0,a
	dec	r0
	pop	acc
	movx	@r0,a
	dec	r0
	pop	acc
	movx	@r0,a
;	_memchr.c:38: return(0);
	mov	r0,#_memchr_p_1_22
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
00105$:
;	_memchr.c:35: for(; p != end; p++)
	mov	r0,#_memchr_end_1_22
	push	ar2
	push	ar3
	push	ar4
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00103$
;	_memchr.c:36: if(*p == c)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	r6,#0x00
	mov	r0,#_memchr_PARM_2
	movx	a,@r0
	cjne	a,ar7,00119$
	inc	r0
	movx	a,@r0
	cjne	a,ar6,00119$
	sjmp	00120$
00119$:
	sjmp	00106$
00120$:
;	_memchr.c:37: return((void *)p);
	mov	r0,#_memchr_p_1_22
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00106$:
;	_memchr.c:35: for(; p != end; p++)
	inc	r2
	cjne	r2,#0x00,00121$
	inc	r3
00121$:
	mov	r0,#_memchr_p_1_22
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
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
