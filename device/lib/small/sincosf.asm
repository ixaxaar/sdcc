;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:49 2013
;--------------------------------------------------------
	.module sincosf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _fabsf
	.globl _sincosf_PARM_2
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
_sincosf_x_1_23:
	.ds 4
_sincosf_f_1_24:
	.ds 4
_sincosf_r_1_24:
	.ds 4
_sincosf_XN_1_24:
	.ds 4
_sincosf_sloc0_1_0:
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
_sincosf_PARM_2:
	.ds 1
_sincosf_sign_1_24:
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;x                         Allocated with name '_sincosf_x_1_23'
;y                         Allocated to registers r0 r1 r2 r3 
;f                         Allocated with name '_sincosf_f_1_24'
;r                         Allocated with name '_sincosf_r_1_24'
;g                         Allocated to registers r0 r1 r2 r3 
;XN                        Allocated with name '_sincosf_XN_1_24'
;N                         Allocated to registers r6 r7 
;sloc0                     Allocated with name '_sincosf_sloc0_1_0'
;------------------------------------------------------------
;	sincosf.c:50: float sincosf(const float x, const bool iscos)
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
_sincosf:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_sincosf_x_1_23,dpl
	mov	(_sincosf_x_1_23 + 1),dph
	mov	(_sincosf_x_1_23 + 2),b
	mov	(_sincosf_x_1_23 + 3),a
;	sincosf.c:56: if(iscos)
	jnb	_sincosf_PARM_2,00105$
;	sincosf.c:58: y=fabsf(x)+HALF_PI;
	mov	dpl,_sincosf_x_1_23
	mov	dph,(_sincosf_x_1_23 + 1)
	mov	b,(_sincosf_x_1_23 + 2)
	mov	a,(_sincosf_x_1_23 + 3)
	lcall	_fabsf
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,#0xDB
	push	acc
	mov	a,#0x0F
	push	acc
	mov	a,#0xC9
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
;	sincosf.c:59: sign=0;
	clr	_sincosf_sign_1_24
	sjmp	00106$
00105$:
;	sincosf.c:63: if(x<0.0)
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_sincosf_x_1_23
	mov	dph,(_sincosf_x_1_23 + 1)
	mov	b,(_sincosf_x_1_23 + 2)
	mov	a,(_sincosf_x_1_23 + 3)
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
;	sincosf.c:64: { y=-x; sign=1; }
	mov	r0,_sincosf_x_1_23
	mov	r1,(_sincosf_x_1_23 + 1)
	mov	r2,(_sincosf_x_1_23 + 2)
	mov	a,(_sincosf_x_1_23 + 3)
	cpl	acc.7
	mov	r3,a
	setb	_sincosf_sign_1_24
	sjmp	00106$
00102$:
;	sincosf.c:66: { y=x; sign=0; }
	mov	r0,_sincosf_x_1_23
	mov	r1,(_sincosf_x_1_23 + 1)
	mov	r2,(_sincosf_x_1_23 + 2)
	mov	r3,(_sincosf_x_1_23 + 3)
	clr	_sincosf_sign_1_24
00106$:
;	sincosf.c:69: if(y>YMAX)
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	clr	a
	push	acc
	mov	a,#0x0C
	push	acc
	mov	a,#0x49
	push	acc
	mov	a,#0x46
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
	jz	00108$
;	sincosf.c:71: errno=ERANGE;
	mov	_errno,#0x22
	mov	(_errno + 1),#0x00
;	sincosf.c:72: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00108$:
;	sincosf.c:76: N=((y*iPI)+0.5); /*y is positive*/
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0xF983
	mov	b,#0xA2
	mov	a,#0x3E
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
;	sincosf.c:79: if(N&1) sign=!sign;
	mov	a,r6
	jnb	acc.0,00110$
	cpl	_sincosf_sign_1_24
00110$:
;	sincosf.c:81: XN=N;
	mov	dpl,r6
	mov	dph,r7
	lcall	___sint2fs
	mov	_sincosf_XN_1_24,dpl
	mov	(_sincosf_XN_1_24 + 1),dph
	mov	(_sincosf_XN_1_24 + 2),b
	mov	(_sincosf_XN_1_24 + 3),a
;	sincosf.c:83: if(iscos) XN-=0.5;
	jnb	_sincosf_PARM_2,00112$
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_sincosf_XN_1_24
	mov	dph,(_sincosf_XN_1_24 + 1)
	mov	b,(_sincosf_XN_1_24 + 2)
	mov	a,(_sincosf_XN_1_24 + 3)
	lcall	___fssub
	mov	_sincosf_XN_1_24,dpl
	mov	(_sincosf_XN_1_24 + 1),dph
	mov	(_sincosf_XN_1_24 + 2),b
	mov	(_sincosf_XN_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00112$:
;	sincosf.c:85: y=fabsf(x);
	mov	dpl,_sincosf_x_1_23
	mov	dph,(_sincosf_x_1_23 + 1)
	mov	b,(_sincosf_x_1_23 + 2)
	mov	a,(_sincosf_x_1_23 + 3)
	lcall	_fabsf
;	sincosf.c:86: r=(int)y;
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	___fs2sint
	lcall	___sint2fs
	mov	_sincosf_r_1_24,dpl
	mov	(_sincosf_r_1_24 + 1),dph
	mov	(_sincosf_r_1_24 + 2),b
	mov	(_sincosf_r_1_24 + 3),a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
;	sincosf.c:87: g=y-r;
	push	_sincosf_r_1_24
	push	(_sincosf_r_1_24 + 1)
	push	(_sincosf_r_1_24 + 2)
	push	(_sincosf_r_1_24 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fssub
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:88: f=((r-XN*C1)+g)-XN*C2;
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	_sincosf_XN_1_24
	push	(_sincosf_XN_1_24 + 1)
	push	(_sincosf_XN_1_24 + 2)
	push	(_sincosf_XN_1_24 + 3)
	mov	dptr,#0x0000
	mov	b,#0x49
	mov	a,#0x40
	lcall	___fsmul
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
	mov	dpl,_sincosf_r_1_24
	mov	dph,(_sincosf_r_1_24 + 1)
	mov	b,(_sincosf_r_1_24 + 2)
	mov	a,(_sincosf_r_1_24 + 3)
	lcall	___fssub
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
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	_sincosf_sloc0_1_0,dpl
	mov	(_sincosf_sloc0_1_0 + 1),dph
	mov	(_sincosf_sloc0_1_0 + 2),b
	mov	(_sincosf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincosf_XN_1_24
	push	(_sincosf_XN_1_24 + 1)
	push	(_sincosf_XN_1_24 + 2)
	push	(_sincosf_XN_1_24 + 3)
	mov	dptr,#0xAA22
	mov	b,#0x7D
	mov	a,#0x3A
	lcall	___fsmul
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
	mov	dpl,_sincosf_sloc0_1_0
	mov	dph,(_sincosf_sloc0_1_0 + 1)
	mov	b,(_sincosf_sloc0_1_0 + 2)
	mov	a,(_sincosf_sloc0_1_0 + 3)
	lcall	___fssub
	mov	_sincosf_f_1_24,dpl
	mov	(_sincosf_f_1_24 + 1),dph
	mov	(_sincosf_f_1_24 + 2),b
	mov	(_sincosf_f_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:90: g=f*f;
	push	_sincosf_f_1_24
	push	(_sincosf_f_1_24 + 1)
	push	(_sincosf_f_1_24 + 2)
	push	(_sincosf_f_1_24 + 3)
	mov	dpl,_sincosf_f_1_24
	mov	dph,(_sincosf_f_1_24 + 1)
	mov	b,(_sincosf_f_1_24 + 2)
	mov	a,(_sincosf_f_1_24 + 3)
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	a,#0xF3
	push	acc
	mov	a,#0xFF
	push	acc
	mov	a,#0x7F
	push	acc
	mov	a,#0x33
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
	jnz	00145$
	ljmp	00114$
00145$:
;	sincosf.c:93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0x9C5B
	mov	b,#0x2E
	mov	a,#0x36
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x22
	push	acc
	mov	a,#0xB2
	push	acc
	mov	a,#0x4F
	push	acc
	mov	a,#0xB9
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
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x3E
	push	acc
	mov	a,#0x87
	push	acc
	mov	a,#0x08
	push	acc
	mov	a,#0x3C
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
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xA4
	push	acc
	mov	a,#0xAA
	push	acc
	mov	a,#0x2A
	push	acc
	mov	a,#0xBE
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
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	_sincosf_r_1_24,dpl
	mov	(_sincosf_r_1_24 + 1),dph
	mov	(_sincosf_r_1_24 + 2),b
	mov	(_sincosf_r_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:94: f+=f*r;
	push	_sincosf_r_1_24
	push	(_sincosf_r_1_24 + 1)
	push	(_sincosf_r_1_24 + 2)
	push	(_sincosf_r_1_24 + 3)
	mov	dpl,_sincosf_f_1_24
	mov	dph,(_sincosf_f_1_24 + 1)
	mov	b,(_sincosf_f_1_24 + 2)
	mov	a,(_sincosf_f_1_24 + 3)
	lcall	___fsmul
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
	mov	dpl,_sincosf_f_1_24
	mov	dph,(_sincosf_f_1_24 + 1)
	mov	b,(_sincosf_f_1_24 + 2)
	mov	a,(_sincosf_f_1_24 + 3)
	lcall	___fsadd
	mov	_sincosf_f_1_24,dpl
	mov	(_sincosf_f_1_24 + 1),dph
	mov	(_sincosf_f_1_24 + 2),b
	mov	(_sincosf_f_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00114$:
;	sincosf.c:96: return (sign?-f:f);
	jnb	_sincosf_sign_1_24,00117$
	mov	r4,_sincosf_f_1_24
	mov	r5,(_sincosf_f_1_24 + 1)
	mov	r6,(_sincosf_f_1_24 + 2)
	mov	a,(_sincosf_f_1_24 + 3)
	cpl	acc.7
	mov	r7,a
	sjmp	00118$
00117$:
	mov	r4,_sincosf_f_1_24
	mov	r5,(_sincosf_f_1_24 + 1)
	mov	r6,(_sincosf_f_1_24 + 2)
	mov	r7,(_sincosf_f_1_24 + 3)
00118$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
