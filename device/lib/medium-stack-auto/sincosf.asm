;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:06 2013
;--------------------------------------------------------
	.module sincosf
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _fabsf
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
;iscos                     Allocated to registers b0 
;x                         Allocated to stack - _bp +1
;y                         Allocated to registers r4 r5 r6 r7 
;f                         Allocated to stack - _bp +9
;r                         Allocated to stack - _bp +13
;g                         Allocated to stack - _bp +17
;XN                        Allocated to stack - _bp +21
;N                         Allocated to registers r2 r3 
;sign                      Allocated to registers b1 
;sloc0                     Allocated to stack - _bp +5
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
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x14
	mov	sp,a
;	sincosf.c:56: if(iscos)
	jnb	b0,00105$
;	sincosf.c:58: y=fabsf(x)+HALF_PI;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	bits
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	pop	bits
	push	bits
	mov	a,#0xDB
	push	acc
	mov	a,#0x0F
	push	acc
	mov	a,#0xC9
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r2
	mov	dph,r3
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
	pop	bits
;	sincosf.c:59: sign=0;
	clr	b1
	sjmp	00106$
00105$:
;	sincosf.c:63: if(x<0.0)
	push	bits
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,r3
	jz	00102$
;	sincosf.c:64: { y=-x; sign=1; }
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	cpl	acc.7
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	setb	b1
	sjmp	00106$
00102$:
;	sincosf.c:66: { y=x; sign=0; }
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	clr	b1
00106$:
;	sincosf.c:69: if(y>YMAX)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	bits
	clr	a
	push	acc
	mov	a,#0x0C
	push	acc
	mov	a,#0x49
	push	acc
	mov	a,#0x46
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsgt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jz	00108$
;	sincosf.c:71: errno=ERANGE;
	mov	r0,#_errno
	mov	a,#0x22
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
;	sincosf.c:72: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	00115$
00108$:
;	sincosf.c:76: N=((y*iPI)+0.5); /*y is positive*/
	push	bits
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xF983
	mov	b,#0xA2
	mov	a,#0x3E
	lcall	___fsmul
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	push	bits
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	___fsadd
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	push	bits
	lcall	___fs2sint
	mov	r2,dpl
	mov	r3,dph
	pop	bits
;	sincosf.c:79: if(N&1) sign=!sign;
	mov	a,r2
	jnb	acc.0,00110$
	cpl	b1
00110$:
;	sincosf.c:81: XN=N;
	mov	dpl,r2
	mov	dph,r3
	push	bits
	lcall	___sint2fs
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	pop	bits
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	sincosf.c:83: if(iscos) XN-=0.5;
	jnb	b0,00112$
	push	bits
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fssub
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
00112$:
;	sincosf.c:85: y=fabsf(x);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	bits
	lcall	_fabsf
	xch	a,r0
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	bits
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	sincosf.c:86: r=(int)y;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	bits
	lcall	___fs2sint
	pop	bits
	push	bits
	lcall	___sint2fs
	xch	a,r0
	mov	a,_bp
	add	a,#0x0d
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	bits
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x0d
;	sincosf.c:87: g=y-r;
	push	bits
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	sincosf.c:88: f=((r-XN*C1)+g)-XN*C2;
	push	bits
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x49
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	push	bits
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	push	bits
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	xch	a,r0
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	push	bits
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0xAA22
	mov	b,#0x7D
	mov	a,#0x3A
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	push	bits
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	sincosf.c:90: g=f*f;
	push	bits
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	sincosf.c:91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	push	bits
	mov	a,#0xF3
	push	acc
	mov	a,#0xFF
	push	acc
	mov	a,#0x7F
	push	acc
	mov	a,#0x33
	push	acc
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsgt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,r7
	jnz	00145$
	ljmp	00114$
00145$:
;	sincosf.c:93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	push	bits
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
	pop	bits
	push	bits
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
	pop	bits
	push	bits
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
	pop	bits
	push	bits
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
	pop	bits
	push	bits
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
	pop	bits
	push	bits
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
	pop	bits
	push	bits
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
	pop	bits
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	sincosf.c:94: f+=f*r;
	push	bits
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	push	bits
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00114$:
;	sincosf.c:96: return (sign?-f:f);
	jnb	b1,00117$
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	a,@r0
	cpl	acc.7
	mov	r7,a
	sjmp	00118$
00117$:
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00118$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
00115$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
