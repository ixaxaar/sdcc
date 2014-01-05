;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:03 2013
;--------------------------------------------------------
	.module sincoshf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _expf
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;iscosh                    Allocated to stack - _bp -4
;x                         Allocated to stack - _bp +1
;y                         Allocated to registers r7 r6 r5 r4 
;w                         Allocated to registers r7 r6 r5 r4 
;z                         Allocated to stack - _bp +9
;sign                      Allocated to registers b0 
;sloc0                     Allocated to stack - _bp +5
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
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x08
	mov	sp,a
;	sincoshf.c:61: if (x<0.0) { y=-x; sign=1; }
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
	mov	a,r3
	jz	00102$
	mov	r0,_bp
	inc	r0
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	a,@r0
	cpl	acc.7
	mov	r4,a
	setb	b0
	sjmp	00103$
00102$:
;	sincoshf.c:62: else { y=x;  sign=0; }
	mov	r0,_bp
	inc	r0
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	clr	b0
00103$:
;	sincoshf.c:64: if ((y>1.0) || iscosh)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	bits
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
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
	jnz	00117$
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00146$
	ljmp	00118$
00146$:
00117$:
;	sincoshf.c:66: if(y>YBAR)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	bits
	clr	a
	push	acc
	push	acc
	mov	a,#0x10
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
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
	jnz	00147$
	ljmp	00110$
00147$:
;	sincoshf.c:68: w=y-K1;
	push	bits
	clr	a
	push	acc
	mov	a,#0x73
	push	acc
	mov	a,#0x31
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	___fssub
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
;	sincoshf.c:69: if (w>WMAX)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	bits
	mov	a,#0xCF
	push	acc
	mov	a,#0xBD
	push	acc
	mov	a,#0x33
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
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
	jz	00105$
;	sincoshf.c:71: errno=ERANGE;
	mov	_errno,#0x22
	mov	(_errno + 1),#0x00
;	sincoshf.c:72: z=HUGE_VALF;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0xFF
	inc	r0
	mov	@r0,#0xFF
	inc	r0
	mov	@r0,#0x7F
	inc	r0
	mov	@r0,#0x7F
	ljmp	00111$
00105$:
;	sincoshf.c:76: z=expf(w);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	push	bits
	lcall	_expf
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	pop	bits
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	sincoshf.c:77: z+=K3*z;
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
	mov	dptr,#0x0897
	mov	b,#0x68
	mov	a,#0x37
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
	push	ar7
	push	ar6
	push	ar5
	push	ar4
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
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
	ljmp	00111$
00110$:
;	sincoshf.c:82: z=expf(y);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	push	bits
	lcall	_expf
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	pop	bits
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	sincoshf.c:83: w=1.0/z;
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
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
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
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
;	sincoshf.c:84: if(!iscosh) w=-w;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
	mov	a,r4
	cpl	acc.7
	mov	r4,a
00108$:
;	sincoshf.c:85: z=(z+w)*0.5;
	push	bits
	push	ar7
	push	ar6
	push	ar5
	push	ar4
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
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	push	bits
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x3F
	lcall	___fsmul
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
00111$:
;	sincoshf.c:87: if(sign) z=-z;
	jb	b0,00150$
	ljmp	00119$
00150$:
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	cpl	acc.7
	mov	@r0,a
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
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00115$
;	sincoshf.c:92: z=x;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x09
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
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00119$
00115$:
;	sincoshf.c:95: z=x*x;
	mov	r0,_bp
	inc	r0
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
	mov	r0,_bp
	inc	r0
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
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	sincoshf.c:96: z=x+x*z*P(z)/Q(z);
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
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
	mov	dptr,#0xE6EA
	mov	b,#0x42
	mov	a,#0xBE
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
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
	push	ar4
	push	ar5
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
	lcall	___fsmul
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
	mov	a,#0x93
	push	acc
	mov	a,#0x4F
	push	acc
	mov	a,#0x2B
	push	acc
	mov	a,#0xC2
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
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
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
	mov	r0,_bp
	inc	r0
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
00119$:
;	sincoshf.c:99: return z;
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
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
