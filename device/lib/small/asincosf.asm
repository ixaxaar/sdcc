;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:49 2013
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mmcs51 --model-small
	
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
_asincosf_x_1_23:
	.ds 4
_asincosf_y_1_24:
	.ds 4
_asincosf_g_1_24:
	.ds 4
_asincosf_r_1_24:
	.ds 4
_asincosf_sloc0_1_0:
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
;x                         Allocated with name '_asincosf_x_1_23'
;y                         Allocated with name '_asincosf_y_1_24'
;g                         Allocated with name '_asincosf_g_1_24'
;r                         Allocated with name '_asincosf_r_1_24'
;i                         Allocated to registers r3 
;sloc0                     Allocated with name '_asincosf_sloc0_1_0'
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
	mov	_asincosf_x_1_23,dpl
	mov	(_asincosf_x_1_23 + 1),dph
	mov	(_asincosf_x_1_23 + 2),b
	mov	(_asincosf_x_1_23 + 3),a
;	asincosf.c:51: bool quartPI = isacos;
	mov	c,_asincosf_PARM_2
	mov	_asincosf_quartPI_1_24,c
;	asincosf.c:56: y = fabsf(x);
	mov	dpl,_asincosf_x_1_23
	mov	dph,(_asincosf_x_1_23 + 1)
	mov	b,(_asincosf_x_1_23 + 2)
	mov	a,(_asincosf_x_1_23 + 3)
	lcall	_fabsf
	mov	_asincosf_y_1_24,dpl
	mov	(_asincosf_y_1_24 + 1),dph
	mov	(_asincosf_y_1_24 + 2),b
	mov	(_asincosf_y_1_24 + 3),a
;	asincosf.c:57: if (y < EPS)
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x39
	push	acc
	mov	dpl,_asincosf_y_1_24
	mov	dph,(_asincosf_y_1_24 + 1)
	mov	b,(_asincosf_y_1_24 + 2)
	mov	a,(_asincosf_y_1_24 + 3)
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00107$
;	asincosf.c:59: r = y;
	mov	_asincosf_r_1_24,_asincosf_y_1_24
	mov	(_asincosf_r_1_24 + 1),(_asincosf_y_1_24 + 1)
	mov	(_asincosf_r_1_24 + 2),(_asincosf_y_1_24 + 2)
	mov	(_asincosf_r_1_24 + 3),(_asincosf_y_1_24 + 3)
	ljmp	00108$
00107$:
;	asincosf.c:63: if (y > 0.5)
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_asincosf_y_1_24
	mov	dph,(_asincosf_y_1_24 + 1)
	mov	b,(_asincosf_y_1_24 + 2)
	mov	a,(_asincosf_y_1_24 + 3)
	lcall	___fsgt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jnz	00138$
	ljmp	00104$
00138$:
;	asincosf.c:65: quartPI = !isacos;
	cpl	_asincosf_quartPI_1_24
;	asincosf.c:66: if (y > 1.0)
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_asincosf_y_1_24
	mov	dph,(_asincosf_y_1_24 + 1)
	mov	b,(_asincosf_y_1_24 + 2)
	mov	a,(_asincosf_y_1_24 + 3)
	lcall	___fsgt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00102$
;	asincosf.c:68: errno = EDOM;
	mov	_errno,#0x21
	mov	(_errno + 1),#0x00
;	asincosf.c:69: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	asincosf.c:71: g = (0.5 - y) + 0.5;
	push	_asincosf_y_1_24
	push	(_asincosf_y_1_24 + 1)
	push	(_asincosf_y_1_24 + 2)
	push	(_asincosf_y_1_24 + 3)
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fssub
	mov	_asincosf_g_1_24,dpl
	mov	(_asincosf_g_1_24 + 1),dph
	mov	(_asincosf_g_1_24 + 2),b
	mov	(_asincosf_g_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	asincosf.c:72: g = ldexpf(g, -1);
	mov	_ldexpf_PARM_2,#0xFF
	mov	(_ldexpf_PARM_2 + 1),#0xFF
	mov	dpl,_asincosf_g_1_24
	mov	dph,(_asincosf_g_1_24 + 1)
	mov	b,(_asincosf_g_1_24 + 2)
	mov	a,(_asincosf_g_1_24 + 3)
	lcall	_ldexpf
;	asincosf.c:73: y = sqrtf(g);
	mov	_asincosf_g_1_24,dpl
	mov	(_asincosf_g_1_24 + 1),dph
	mov	(_asincosf_g_1_24 + 2),b
	mov	(_asincosf_g_1_24 + 3),a
	lcall	_sqrtf
	mov	_asincosf_y_1_24,dpl
	mov	(_asincosf_y_1_24 + 1),dph
	mov	(_asincosf_y_1_24 + 2),b
	mov	(_asincosf_y_1_24 + 3),a
;	asincosf.c:74: y = -(y + y);
	push	_asincosf_y_1_24
	push	(_asincosf_y_1_24 + 1)
	push	(_asincosf_y_1_24 + 2)
	push	(_asincosf_y_1_24 + 3)
	mov	dpl,_asincosf_y_1_24
	mov	dph,(_asincosf_y_1_24 + 1)
	mov	b,(_asincosf_y_1_24 + 2)
	mov	a,(_asincosf_y_1_24 + 3)
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_asincosf_y_1_24,r0
	mov	(_asincosf_y_1_24 + 1),r1
	mov	(_asincosf_y_1_24 + 2),r2
	mov	a,r3
	cpl	acc.7
	mov	(_asincosf_y_1_24 + 3),a
	sjmp	00105$
00104$:
;	asincosf.c:78: g = y * y;
	push	_asincosf_y_1_24
	push	(_asincosf_y_1_24 + 1)
	push	(_asincosf_y_1_24 + 2)
	push	(_asincosf_y_1_24 + 3)
	mov	dpl,_asincosf_y_1_24
	mov	dph,(_asincosf_y_1_24 + 1)
	mov	b,(_asincosf_y_1_24 + 2)
	mov	a,(_asincosf_y_1_24 + 3)
	lcall	___fsmul
	mov	_asincosf_g_1_24,dpl
	mov	(_asincosf_g_1_24 + 1),dph
	mov	(_asincosf_g_1_24 + 2),b
	mov	(_asincosf_g_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00105$:
;	asincosf.c:80: r = y + y * ((P(g) * g) / Q(g));
	push	_asincosf_g_1_24
	push	(_asincosf_g_1_24 + 1)
	push	(_asincosf_g_1_24 + 2)
	push	(_asincosf_g_1_24 + 3)
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
	push	_asincosf_g_1_24
	push	(_asincosf_g_1_24 + 1)
	push	(_asincosf_g_1_24 + 2)
	push	(_asincosf_g_1_24 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	_asincosf_sloc0_1_0,dpl
	mov	(_asincosf_sloc0_1_0 + 1),dph
	mov	(_asincosf_sloc0_1_0 + 2),b
	mov	(_asincosf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x0B
	push	acc
	mov	a,#0x8D
	push	acc
	mov	a,#0xB1
	push	acc
	mov	a,#0xC0
	push	acc
	mov	dpl,_asincosf_g_1_24
	mov	dph,(_asincosf_g_1_24 + 1)
	mov	b,(_asincosf_g_1_24 + 2)
	mov	a,(_asincosf_g_1_24 + 3)
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_g_1_24
	push	(_asincosf_g_1_24 + 1)
	push	(_asincosf_g_1_24 + 2)
	push	(_asincosf_g_1_24 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
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
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fsdiv
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_asincosf_y_1_24
	mov	dph,(_asincosf_y_1_24 + 1)
	mov	b,(_asincosf_y_1_24 + 2)
	mov	a,(_asincosf_y_1_24 + 3)
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_asincosf_y_1_24
	mov	dph,(_asincosf_y_1_24 + 1)
	mov	b,(_asincosf_y_1_24 + 2)
	mov	a,(_asincosf_y_1_24 + 3)
	lcall	___fsadd
	mov	_asincosf_r_1_24,dpl
	mov	(_asincosf_r_1_24 + 1),dph
	mov	(_asincosf_r_1_24 + 2),b
	mov	(_asincosf_r_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00108$:
;	asincosf.c:82: i = quartPI;
	mov	c,_asincosf_quartPI_1_24
	clr	a
	rlc	a
	mov	r3,a
;	asincosf.c:83: if (isacos)
	jb	_asincosf_PARM_2,00140$
	ljmp	00115$
00140$:
;	asincosf.c:85: if (x < 0.0)
	push	ar3
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_asincosf_x_1_23
	mov	dph,(_asincosf_x_1_23 + 1)
	mov	b,(_asincosf_x_1_23 + 2)
	mov	a,(_asincosf_x_1_23 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	mov	a,r2
	jz	00110$
;	asincosf.c:86: r = (b[i] + r) + b[i];
	mov	a,r3
	mov	b,#0x04
	mul	ab
	add	a,#_asincosf_b_1_24
	mov	dpl,a
	mov	a,#(_asincosf_b_1_24 >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_asincosf_sloc0_1_0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 1),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 2),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 3),a
	push	_asincosf_r_1_24
	push	(_asincosf_r_1_24 + 1)
	push	(_asincosf_r_1_24 + 2)
	push	(_asincosf_r_1_24 + 3)
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc0_1_0
	push	(_asincosf_sloc0_1_0 + 1)
	push	(_asincosf_sloc0_1_0 + 2)
	push	(_asincosf_sloc0_1_0 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	_asincosf_r_1_24,dpl
	mov	(_asincosf_r_1_24 + 1),dph
	mov	(_asincosf_r_1_24 + 2),b
	mov	(_asincosf_r_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00116$
00110$:
;	asincosf.c:88: r = (a[i] - r) + a[i];
	mov	a,r3
	mov	b,#0x04
	mul	ab
	add	a,#_asincosf_a_1_24
	mov	dpl,a
	mov	a,#(_asincosf_a_1_24 >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_asincosf_sloc0_1_0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 1),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 2),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 3),a
	push	_asincosf_r_1_24
	push	(_asincosf_r_1_24 + 1)
	push	(_asincosf_r_1_24 + 2)
	push	(_asincosf_r_1_24 + 3)
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fssub
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc0_1_0
	push	(_asincosf_sloc0_1_0 + 1)
	push	(_asincosf_sloc0_1_0 + 2)
	push	(_asincosf_sloc0_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r7
	lcall	___fsadd
	mov	_asincosf_r_1_24,dpl
	mov	(_asincosf_r_1_24 + 1),dph
	mov	(_asincosf_r_1_24 + 2),b
	mov	(_asincosf_r_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00116$
00115$:
;	asincosf.c:92: r = (a[i] + r) + a[i];
	mov	a,r3
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
	push	_asincosf_r_1_24
	push	(_asincosf_r_1_24 + 1)
	push	(_asincosf_r_1_24 + 2)
	push	(_asincosf_r_1_24 + 3)
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
	mov	_asincosf_r_1_24,dpl
	mov	(_asincosf_r_1_24 + 1),dph
	mov	(_asincosf_r_1_24 + 2),b
	mov	(_asincosf_r_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	asincosf.c:93: if (x < 0.0)
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_asincosf_x_1_23
	mov	dph,(_asincosf_x_1_23 + 1)
	mov	b,(_asincosf_x_1_23 + 2)
	mov	a,(_asincosf_x_1_23 + 3)
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00116$
;	asincosf.c:94: r = -r;
	mov	a,(_asincosf_r_1_24 + 3)
	cpl	acc.7
	mov	(_asincosf_r_1_24 + 3),a
00116$:
;	asincosf.c:96: return r;
	mov	dpl,_asincosf_r_1_24
	mov	dph,(_asincosf_r_1_24 + 1)
	mov	b,(_asincosf_r_1_24 + 2)
	mov	a,(_asincosf_r_1_24 + 3)
	ret
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
