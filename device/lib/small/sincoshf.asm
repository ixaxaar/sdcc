;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:49 2013
;--------------------------------------------------------
	.module sincoshf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _expf
	.globl _sincoshf_PARM_2
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
_sincoshf_PARM_2:
	.ds 2
_sincoshf_x_1_23:
	.ds 4
_sincoshf_y_1_24:
	.ds 4
_sincoshf_w_1_24:
	.ds 4
_sincoshf_z_1_24:
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
_sincoshf_sign_1_24:
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;iscosh                    Allocated with name '_sincoshf_PARM_2'
;x                         Allocated with name '_sincoshf_x_1_23'
;y                         Allocated with name '_sincoshf_y_1_24'
;w                         Allocated with name '_sincoshf_w_1_24'
;z                         Allocated with name '_sincoshf_z_1_24'
;------------------------------------------------------------
;	sincoshf.c:56: float sincoshf(const float x, const int iscosh)
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
_sincoshf:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_sincoshf_x_1_23,dpl
	mov	(_sincoshf_x_1_23 + 1),dph
	mov	(_sincoshf_x_1_23 + 2),b
	mov	(_sincoshf_x_1_23 + 3),a
;	sincoshf.c:61: if (x<0.0) { y=-x; sign=1; }
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_sincoshf_x_1_23
	mov	dph,(_sincoshf_x_1_23 + 1)
	mov	b,(_sincoshf_x_1_23 + 2)
	mov	a,(_sincoshf_x_1_23 + 3)
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00102$
	mov	_sincoshf_y_1_24,_sincoshf_x_1_23
	mov	(_sincoshf_y_1_24 + 1),(_sincoshf_x_1_23 + 1)
	mov	(_sincoshf_y_1_24 + 2),(_sincoshf_x_1_23 + 2)
	mov	a,(_sincoshf_x_1_23 + 3)
	cpl	acc.7
	mov	(_sincoshf_y_1_24 + 3),a
	setb	_sincoshf_sign_1_24
	sjmp	00103$
00102$:
;	sincoshf.c:62: else { y=x;  sign=0; }
	mov	_sincoshf_y_1_24,_sincoshf_x_1_23
	mov	(_sincoshf_y_1_24 + 1),(_sincoshf_x_1_23 + 1)
	mov	(_sincoshf_y_1_24 + 2),(_sincoshf_x_1_23 + 2)
	mov	(_sincoshf_y_1_24 + 3),(_sincoshf_x_1_23 + 3)
	clr	_sincoshf_sign_1_24
00103$:
;	sincoshf.c:64: if ((y>1.0) || iscosh)
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_sincoshf_y_1_24
	mov	dph,(_sincoshf_y_1_24 + 1)
	mov	b,(_sincoshf_y_1_24 + 2)
	mov	a,(_sincoshf_y_1_24 + 3)
	lcall	___fsgt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jnz	00117$
	mov	a,_sincoshf_PARM_2
	orl	a,(_sincoshf_PARM_2 + 1)
	jnz	00146$
	ljmp	00118$
00146$:
00117$:
;	sincoshf.c:66: if(y>YBAR)
	clr	a
	push	acc
	push	acc
	mov	a,#0x10
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,_sincoshf_y_1_24
	mov	dph,(_sincoshf_y_1_24 + 1)
	mov	b,(_sincoshf_y_1_24 + 2)
	mov	a,(_sincoshf_y_1_24 + 3)
	lcall	___fsgt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jnz	00147$
	ljmp	00110$
00147$:
;	sincoshf.c:68: w=y-K1;
	clr	a
	push	acc
	mov	a,#0x73
	push	acc
	mov	a,#0x31
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_sincoshf_y_1_24
	mov	dph,(_sincoshf_y_1_24 + 1)
	mov	b,(_sincoshf_y_1_24 + 2)
	mov	a,(_sincoshf_y_1_24 + 3)
	lcall	___fssub
	mov	_sincoshf_w_1_24,dpl
	mov	(_sincoshf_w_1_24 + 1),dph
	mov	(_sincoshf_w_1_24 + 2),b
	mov	(_sincoshf_w_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincoshf.c:69: if (w>WMAX)
	mov	a,#0xCF
	push	acc
	mov	a,#0xBD
	push	acc
	mov	a,#0x33
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,_sincoshf_w_1_24
	mov	dph,(_sincoshf_w_1_24 + 1)
	mov	b,(_sincoshf_w_1_24 + 2)
	mov	a,(_sincoshf_w_1_24 + 3)
	lcall	___fsgt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00105$
;	sincoshf.c:71: errno=ERANGE;
	mov	_errno,#0x22
	mov	(_errno + 1),#0x00
;	sincoshf.c:72: z=HUGE_VALF;
	mov	_sincoshf_z_1_24,#0xFF
	mov	(_sincoshf_z_1_24 + 1),#0xFF
	mov	(_sincoshf_z_1_24 + 2),#0x7F
	mov	(_sincoshf_z_1_24 + 3),#0x7F
	ljmp	00111$
00105$:
;	sincoshf.c:76: z=expf(w);
	mov	dpl,_sincoshf_w_1_24
	mov	dph,(_sincoshf_w_1_24 + 1)
	mov	b,(_sincoshf_w_1_24 + 2)
	mov	a,(_sincoshf_w_1_24 + 3)
	lcall	_expf
	mov	_sincoshf_z_1_24,dpl
	mov	(_sincoshf_z_1_24 + 1),dph
	mov	(_sincoshf_z_1_24 + 2),b
	mov	(_sincoshf_z_1_24 + 3),a
;	sincoshf.c:77: z+=K3*z;
	push	_sincoshf_z_1_24
	push	(_sincoshf_z_1_24 + 1)
	push	(_sincoshf_z_1_24 + 2)
	push	(_sincoshf_z_1_24 + 3)
	mov	dptr,#0x0897
	mov	b,#0x68
	mov	a,#0x37
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
	mov	dpl,_sincoshf_z_1_24
	mov	dph,(_sincoshf_z_1_24 + 1)
	mov	b,(_sincoshf_z_1_24 + 2)
	mov	a,(_sincoshf_z_1_24 + 3)
	lcall	___fsadd
	mov	_sincoshf_z_1_24,dpl
	mov	(_sincoshf_z_1_24 + 1),dph
	mov	(_sincoshf_z_1_24 + 2),b
	mov	(_sincoshf_z_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00111$
00110$:
;	sincoshf.c:82: z=expf(y);
	mov	dpl,_sincoshf_y_1_24
	mov	dph,(_sincoshf_y_1_24 + 1)
	mov	b,(_sincoshf_y_1_24 + 2)
	mov	a,(_sincoshf_y_1_24 + 3)
	lcall	_expf
	mov	_sincoshf_z_1_24,dpl
	mov	(_sincoshf_z_1_24 + 1),dph
	mov	(_sincoshf_z_1_24 + 2),b
	mov	(_sincoshf_z_1_24 + 3),a
;	sincoshf.c:83: w=1.0/z;
	push	_sincoshf_z_1_24
	push	(_sincoshf_z_1_24 + 1)
	push	(_sincoshf_z_1_24 + 2)
	push	(_sincoshf_z_1_24 + 3)
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	_sincoshf_w_1_24,dpl
	mov	(_sincoshf_w_1_24 + 1),dph
	mov	(_sincoshf_w_1_24 + 2),b
	mov	(_sincoshf_w_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincoshf.c:84: if(!iscosh) w=-w;
	mov	a,_sincoshf_PARM_2
	orl	a,(_sincoshf_PARM_2 + 1)
	jnz	00108$
	mov	a,(_sincoshf_w_1_24 + 3)
	cpl	acc.7
	mov	(_sincoshf_w_1_24 + 3),a
00108$:
;	sincoshf.c:85: z=(z+w)*0.5;
	push	_sincoshf_w_1_24
	push	(_sincoshf_w_1_24 + 1)
	push	(_sincoshf_w_1_24 + 2)
	push	(_sincoshf_w_1_24 + 3)
	mov	dpl,_sincoshf_z_1_24
	mov	dph,(_sincoshf_z_1_24 + 1)
	mov	b,(_sincoshf_z_1_24 + 2)
	mov	a,(_sincoshf_z_1_24 + 3)
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
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x3F
	lcall	___fsmul
	mov	_sincoshf_z_1_24,dpl
	mov	(_sincoshf_z_1_24 + 1),dph
	mov	(_sincoshf_z_1_24 + 2),b
	mov	(_sincoshf_z_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00111$:
;	sincoshf.c:87: if(sign) z=-z;
	jb	_sincoshf_sign_1_24,00150$
	ljmp	00119$
00150$:
	mov	a,(_sincoshf_z_1_24 + 3)
	cpl	acc.7
	mov	(_sincoshf_z_1_24 + 3),a
	ljmp	00119$
00118$:
;	sincoshf.c:91: if (y<EPS)
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x39
	push	acc
	mov	dpl,_sincoshf_y_1_24
	mov	dph,(_sincoshf_y_1_24 + 1)
	mov	b,(_sincoshf_y_1_24 + 2)
	mov	a,(_sincoshf_y_1_24 + 3)
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00115$
;	sincoshf.c:92: z=x;
	mov	_sincoshf_z_1_24,_sincoshf_x_1_23
	mov	(_sincoshf_z_1_24 + 1),(_sincoshf_x_1_23 + 1)
	mov	(_sincoshf_z_1_24 + 2),(_sincoshf_x_1_23 + 2)
	mov	(_sincoshf_z_1_24 + 3),(_sincoshf_x_1_23 + 3)
	ljmp	00119$
00115$:
;	sincoshf.c:95: z=x*x;
	push	_sincoshf_x_1_23
	push	(_sincoshf_x_1_23 + 1)
	push	(_sincoshf_x_1_23 + 2)
	push	(_sincoshf_x_1_23 + 3)
	mov	dpl,_sincoshf_x_1_23
	mov	dph,(_sincoshf_x_1_23 + 1)
	mov	b,(_sincoshf_x_1_23 + 2)
	mov	a,(_sincoshf_x_1_23 + 3)
	lcall	___fsmul
	mov	_sincoshf_z_1_24,dpl
	mov	(_sincoshf_z_1_24 + 1),dph
	mov	(_sincoshf_z_1_24 + 2),b
	mov	(_sincoshf_z_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincoshf.c:96: z=x+x*z*P(z)/Q(z);
	push	_sincoshf_z_1_24
	push	(_sincoshf_z_1_24 + 1)
	push	(_sincoshf_z_1_24 + 2)
	push	(_sincoshf_z_1_24 + 3)
	mov	dpl,_sincoshf_x_1_23
	mov	dph,(_sincoshf_x_1_23 + 1)
	mov	b,(_sincoshf_x_1_23 + 2)
	mov	a,(_sincoshf_x_1_23 + 3)
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	_sincoshf_z_1_24
	push	(_sincoshf_z_1_24 + 1)
	push	(_sincoshf_z_1_24 + 2)
	push	(_sincoshf_z_1_24 + 3)
	mov	dptr,#0xE6EA
	mov	b,#0x42
	mov	a,#0xBE
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
	mov	a,#0x69
	push	acc
	mov	a,#0xE4
	push	acc
	mov	a,#0xC0
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
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0x93
	push	acc
	mov	a,#0x4F
	push	acc
	mov	a,#0x2B
	push	acc
	mov	a,#0xC2
	push	acc
	mov	dpl,_sincoshf_z_1_24
	mov	dph,(_sincoshf_z_1_24 + 1)
	mov	b,(_sincoshf_z_1_24 + 2)
	mov	a,(_sincoshf_z_1_24 + 3)
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
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
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
	mov	dpl,_sincoshf_x_1_23
	mov	dph,(_sincoshf_x_1_23 + 1)
	mov	b,(_sincoshf_x_1_23 + 2)
	mov	a,(_sincoshf_x_1_23 + 3)
	lcall	___fsadd
	mov	_sincoshf_z_1_24,dpl
	mov	(_sincoshf_z_1_24 + 1),dph
	mov	(_sincoshf_z_1_24 + 2),b
	mov	(_sincoshf_z_1_24 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00119$:
;	sincoshf.c:99: return z;
	mov	dpl,_sincoshf_z_1_24
	mov	dph,(_sincoshf_z_1_24 + 1)
	mov	b,(_sincoshf_z_1_24 + 2)
	mov	a,(_sincoshf_z_1_24 + 3)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
