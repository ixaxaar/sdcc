;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:59 2013
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _ldexpf
	.globl _fabsf
	.globl _sqrtf
	.globl _asincosf_PARM_2
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
_asincosf_sloc0_1_0:
	.ds 4
_asincosf_sloc1_1_0:
	.ds 4
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
_asincosf_PARM_2:
	.ds 1
_asincosf_quartPI_1_24:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_asincosf_x_1_23:
	.ds 4
_asincosf_y_1_24:
	.ds 4
_asincosf_g_1_24:
	.ds 4
_asincosf_r_1_24:
	.ds 4
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
;Allocation info for local variables in function 'asincosf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_asincosf_sloc0_1_0'
;sloc1                     Allocated with name '_asincosf_sloc1_1_0'
;x                         Allocated with name '_asincosf_x_1_23'
;y                         Allocated with name '_asincosf_y_1_24'
;g                         Allocated with name '_asincosf_g_1_24'
;r                         Allocated with name '_asincosf_r_1_24'
;i                         Allocated with name '_asincosf_i_1_24'
;------------------------------------------------------------
;	asincosf.c:47: float asincosf(const float x, const bool isacos)
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
_asincosf:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_asincosf_x_1_23
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	asincosf.c:51: bool quartPI = isacos;
	mov	c,_asincosf_PARM_2
	mov	_asincosf_quartPI_1_24,c
;	asincosf.c:56: y = fabsf(x);
	mov	dptr,#_asincosf_x_1_23
	movx	a,@dptr
	mov	_asincosf_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_asincosf_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_asincosf_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_asincosf_sloc0_1_0 + 3),a
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	r0,#_fabsf
	mov	r1,#(_fabsf >> 8)
	mov	r2,#(_fabsf >> 16)
	lcall	__sdcc_banked_call
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dptr,#_asincosf_y_1_24
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	asincosf.c:57: if (y < EPS)
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x39
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,r7
	jz	00107$
;	asincosf.c:59: r = y;
	mov	dptr,#_asincosf_r_1_24
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00108$
00107$:
;	asincosf.c:63: if (y > 0.5)
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsgt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,r7
	jnz	00138$
	ljmp	00104$
00138$:
;	asincosf.c:65: quartPI = !isacos;
	cpl	_asincosf_quartPI_1_24
;	asincosf.c:66: if (y > 1.0)
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsgt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,r7
	jz	00102$
;	asincosf.c:68: errno = EDOM;
	mov	dptr,#_errno
	mov	a,#0x21
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	asincosf.c:69: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	00117$
00102$:
;	asincosf.c:71: g = (0.5 - y) + 0.5;
	push	ar0
	push	ar1
	push	ar2
	push	ar3
;	asincosf.c:72: g = ldexpf(g, -1);
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_ldexpf_PARM_2
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	r0,#_ldexpf
	mov	r1,#(_ldexpf >> 8)
	mov	r2,#(_ldexpf >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_asincosf_g_1_24
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	asincosf.c:73: y = sqrtf(g);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	r0,#_sqrtf
	mov	r1,#(_sqrtf >> 8)
	mov	r2,#(_sqrtf >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	asincosf.c:74: y = -(y + y);
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_asincosf_y_1_24
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	cpl	acc.7
	inc	dptr
	movx	@dptr,a
	sjmp	00105$
00104$:
;	asincosf.c:78: g = y * y;
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_asincosf_g_1_24
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00105$:
;	asincosf.c:80: r = y + y * ((P(g) * g) / Q(g));
	mov	dptr,#_asincosf_g_1_24
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x2065
	mov	b,#0x01
	mov	a,#0xBF
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x6B
	push	acc
	mov	a,#0x16
	push	acc
	mov	a,#0x6F
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	_asincosf_sloc1_1_0,dpl
	mov	(_asincosf_sloc1_1_0 + 1),dph
	mov	(_asincosf_sloc1_1_0 + 2),b
	mov	(_asincosf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0x0B
	push	acc
	mov	a,#0x8D
	push	acc
	mov	a,#0xB1
	push	acc
	mov	a,#0xC0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xF0
	push	acc
	mov	a,#0x50
	push	acc
	mov	a,#0xB3
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_asincosf_sloc1_1_0
	mov	dph,(_asincosf_sloc1_1_0 + 1)
	mov	b,(_asincosf_sloc1_1_0 + 2)
	mov	a,(_asincosf_sloc1_1_0 + 3)
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_asincosf_y_1_24
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_asincosf_r_1_24
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00108$:
;	asincosf.c:82: i = quartPI;
	mov	c,_asincosf_quartPI_1_24
	clr	a
	rlc	a
	mov	r7,a
;	asincosf.c:83: if (isacos)
	jb	_asincosf_PARM_2,00140$
	ljmp	00115$
00140$:
;	asincosf.c:85: if (x < 0.0)
	push	ar7
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fslt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	mov	a,r6
	jnz	00141$
	ljmp	00110$
00141$:
;	asincosf.c:86: r = (b[i] + r) + b[i];
	mov	a,r7
	mov	b,#0x04
	mul	ab
	add	a,#_asincosf_b_1_24
	mov	dpl,a
	mov	a,#(_asincosf_b_1_24 >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_asincosf_sloc1_1_0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc1_1_0 + 1),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc1_1_0 + 2),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc1_1_0 + 3),a
	mov	dptr,#_asincosf_r_1_24
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,_asincosf_sloc1_1_0
	mov	dph,(_asincosf_sloc1_1_0 + 1)
	mov	b,(_asincosf_sloc1_1_0 + 2)
	mov	a,(_asincosf_sloc1_1_0 + 3)
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc1_1_0
	push	(_asincosf_sloc1_1_0 + 1)
	push	(_asincosf_sloc1_1_0 + 2)
	push	(_asincosf_sloc1_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r6
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_asincosf_r_1_24
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
00110$:
;	asincosf.c:88: r = (a[i] - r) + a[i];
	mov	a,r7
	mov	b,#0x04
	mul	ab
	add	a,#_asincosf_a_1_24
	mov	dpl,a
	mov	a,#(_asincosf_a_1_24 >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_asincosf_sloc1_1_0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc1_1_0 + 1),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc1_1_0 + 2),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc1_1_0 + 3),a
	mov	dptr,#_asincosf_r_1_24
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,_asincosf_sloc1_1_0
	mov	dph,(_asincosf_sloc1_1_0 + 1)
	mov	b,(_asincosf_sloc1_1_0 + 2)
	mov	a,(_asincosf_sloc1_1_0 + 3)
	lcall	___fssub
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc1_1_0
	push	(_asincosf_sloc1_1_0 + 1)
	push	(_asincosf_sloc1_1_0 + 2)
	push	(_asincosf_sloc1_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r6
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_asincosf_r_1_24
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
00115$:
;	asincosf.c:92: r = (a[i] + r) + a[i];
	mov	a,r7
	mov	b,#0x04
	mul	ab
	add	a,#_asincosf_a_1_24
	mov	dpl,a
	mov	a,#(_asincosf_a_1_24 >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dptr,#_asincosf_r_1_24
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_asincosf_r_1_24
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	asincosf.c:93: if (x < 0.0)
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00116$
;	asincosf.c:94: r = -r;
	mov	dptr,#_asincosf_r_1_24
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_asincosf_r_1_24
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	cpl	acc.7
	inc	dptr
	movx	@dptr,a
00116$:
;	asincosf.c:96: return r;
	mov	dptr,#_asincosf_r_1_24
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
00117$:
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_asincosf_a_1_24:
	.byte #0x00,#0x00,#0x00,#0x00	;  0.000000e+00
	.byte #0xDB,#0x0F,#0x49,#0x3F	;  7.853982e-01
_asincosf_b_1_24:
	.byte #0xDB,#0x0F,#0xC9,#0x3F	;  1.570796e+00
	.byte #0xDB,#0x0F,#0x49,#0x3F	;  7.853982e-01
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
