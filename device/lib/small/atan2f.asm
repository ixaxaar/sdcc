;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:49 2013
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
	.globl _atan2f_PARM_2
	.globl _atan2f
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
_atan2f_PARM_2:
	.ds 4
_atan2f_x_1_23:
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
;Allocation info for local variables in function 'atan2f'
;------------------------------------------------------------
;y                         Allocated with name '_atan2f_PARM_2'
;x                         Allocated with name '_atan2f_x_1_23'
;r                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	atan2f.c:34: float atan2f(const float x, const float y)
;	-----------------------------------------
;	 function atan2f
;	-----------------------------------------
_atan2f:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_atan2f_x_1_23,dpl
	mov	(_atan2f_x_1_23 + 1),dph
	mov	(_atan2f_x_1_23 + 2),b
	mov	(_atan2f_x_1_23 + 3),a
;	atan2f.c:38: if ((x==0.0) && (y==0.0))
	mov	b,_atan2f_x_1_23
	mov	a,(_atan2f_x_1_23 + 1)
	orl	b,a
	mov	a,(_atan2f_x_1_23 + 2)
	orl	b,a
	mov	a,(_atan2f_x_1_23 + 3)
	anl	a,#0x7F
	orl	a,b
	jnz	00102$
	mov	b,_atan2f_PARM_2
	mov	a,(_atan2f_PARM_2 + 1)
	orl	b,a
	mov	a,(_atan2f_PARM_2 + 2)
	orl	b,a
	mov	a,(_atan2f_PARM_2 + 3)
	anl	a,#0x7F
	orl	a,b
;	atan2f.c:40: errno=EDOM;
	jnz	00102$
	mov	_errno,#0x21
	mov	(_errno + 1),a
;	atan2f.c:41: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	atan2f.c:44: if(fabsf(y)>=fabsf(x))
	mov	dpl,_atan2f_PARM_2
	mov	dph,(_atan2f_PARM_2 + 1)
	mov	b,(_atan2f_PARM_2 + 2)
	mov	a,(_atan2f_PARM_2 + 3)
	lcall	_fabsf
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dpl,_atan2f_x_1_23
	mov	dph,(_atan2f_x_1_23 + 1)
	mov	b,(_atan2f_x_1_23 + 2)
	mov	a,(_atan2f_x_1_23 + 3)
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_fabsf
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
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
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00135$
	ljmp	00107$
00135$:
;	atan2f.c:46: r=atanf(x/y);
	push	_atan2f_PARM_2
	push	(_atan2f_PARM_2 + 1)
	push	(_atan2f_PARM_2 + 2)
	push	(_atan2f_PARM_2 + 3)
	mov	dpl,_atan2f_x_1_23
	mov	dph,(_atan2f_x_1_23 + 1)
	mov	b,(_atan2f_x_1_23 + 2)
	mov	a,(_atan2f_x_1_23 + 3)
	lcall	___fsdiv
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
	lcall	_atanf
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	atan2f.c:47: if(y<0.0) r+=(x>=0?PI:-PI);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_atan2f_PARM_2
	mov	dph,(_atan2f_PARM_2 + 1)
	mov	b,(_atan2f_PARM_2 + 2)
	mov	a,(_atan2f_PARM_2 + 3)
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jnz	00136$
	ljmp	00108$
00136$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_atan2f_x_1_23
	mov	dph,(_atan2f_x_1_23 + 1)
	mov	b,(_atan2f_x_1_23 + 2)
	mov	a,(_atan2f_x_1_23 + 3)
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	cjne	a,#0x01,00137$
00137$:
	clr	a
	rlc	a
	mov	r3,a
	jz	00111$
	mov	r0,#0xDB
	mov	r1,#0x0F
	mov	r2,#0x49
	mov	r3,#0x40
	sjmp	00112$
00111$:
	mov	r0,#0xDB
	mov	r1,#0x0F
	mov	r2,#0x49
	mov	r3,#0xC0
00112$:
	push	ar0
	push	ar1
	push	ar2
	push	ar3
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
	ljmp	00108$
00107$:
;	atan2f.c:51: r=-atanf(y/x);
	push	_atan2f_x_1_23
	push	(_atan2f_x_1_23 + 1)
	push	(_atan2f_x_1_23 + 2)
	push	(_atan2f_x_1_23 + 3)
	mov	dpl,_atan2f_PARM_2
	mov	dph,(_atan2f_PARM_2 + 1)
	mov	b,(_atan2f_PARM_2 + 2)
	mov	a,(_atan2f_PARM_2 + 3)
	lcall	___fsdiv
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	_atanf
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	ar4,r0
	mov	ar5,r1
	mov	ar6,r2
	mov	a,r3
	cpl	acc.7
	mov	r7,a
;	atan2f.c:52: r+=(x<0.0?-HALF_PI:HALF_PI);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_atan2f_x_1_23
	mov	dph,(_atan2f_x_1_23 + 1)
	mov	b,(_atan2f_x_1_23 + 2)
	mov	a,(_atan2f_x_1_23 + 3)
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jz	00113$
	mov	r0,#0xDB
	mov	r1,#0x0F
	mov	r2,#0xC9
	mov	r3,#0xBF
	sjmp	00114$
00113$:
	mov	r0,#0xDB
	mov	r1,#0x0F
	mov	r2,#0xC9
	mov	r3,#0x3F
00114$:
	push	ar0
	push	ar1
	push	ar2
	push	ar3
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
00108$:
;	atan2f.c:54: return r;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
