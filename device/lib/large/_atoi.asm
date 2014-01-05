;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:56 2013
;--------------------------------------------------------
	.module _atoi
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
_atoi_sloc0_1_0:
	.ds 2
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
_atoi_s_1_1:
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;rv                        Allocated to registers r6 r7 
;sign                      Allocated to registers r3 
;sloc0                     Allocated with name '_atoi_sloc0_1_0'
;s                         Allocated with name '_atoi_s_1_1'
;------------------------------------------------------------
;	_atoi.c:29: int atoi(const char * s)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
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
	mov	dptr,#_atoi_s_1_1
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_atoi.c:31: register int rv=0; 
	mov	r6,#0x00
	mov	r7,#0x00
;	_atoi.c:35: while (*s) {
	mov	dptr,#_atoi_s_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00107$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	jz	00133$
;	_atoi.c:36: if (*s <= '9' && *s >= '0')
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00133$
;	_atoi.c:37: break;
00102$:
;	_atoi.c:38: if (*s == '-' || *s == '+') 
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x2D,00160$
	sjmp	00133$
00160$:
	cjne	r2,#0x2B,00161$
	sjmp	00133$
00161$:
;	_atoi.c:40: s++;
	inc	r3
	cjne	r3,#0x00,00162$
	inc	r4
00162$:
	mov	dptr,#_atoi_s_1_1
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00107$
00133$:
	mov	dptr,#_atoi_s_1_1
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_atoi.c:43: sign = (*s == '-');
	mov	ar0,r3
	mov	ar1,r4
	mov	ar2,r5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r5,a
	clr	a
	cjne	r5,#0x2D,00163$
	inc	a
00163$:
;	_atoi.c:44: if (*s == '-' || *s == '+') s++;
	mov	r4,a
	mov	r3,a
	jnz	00110$
	cjne	r5,#0x2B,00131$
00110$:
	mov	dptr,#_atoi_s_1_1
	mov	a,#0x01
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	_atoi.c:46: while (*s && *s >= '0' && *s <= '9') {
00131$:
	mov	dptr,#_atoi_s_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00115$:
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	jz	00134$
	clr	c
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00134$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00134$
;	_atoi.c:47: rv = (rv * 10) + (*s - '0');
	push	ar3
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000A
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	__mulint
	mov	_atoi_sloc0_1_0,dpl
	mov	(_atoi_sloc0_1_0 + 1),dph
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r1
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r1
	add	a,#0xD0
	mov	r1,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	a,r1
	add	a,_atoi_sloc0_1_0
	mov	r6,a
	mov	a,r3
	addc	a,(_atoi_sloc0_1_0 + 1)
	mov	r7,a
;	_atoi.c:48: s++;
	inc	r2
	cjne	r2,#0x00,00171$
	inc	r4
00171$:
	mov	dptr,#_atoi_s_1_1
	mov	a,r2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	pop	ar3
	sjmp	00115$
00134$:
	mov	dptr,#_atoi_s_1_1
	mov	a,r2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_atoi.c:51: return (sign ? -rv : rv);
	mov	a,r3
	jz	00120$
	clr	c
	clr	a
	subb	a,r6
	mov	r4,a
	clr	a
	subb	a,r7
	mov	r5,a
	sjmp	00121$
00120$:
	mov	ar4,r6
	mov	ar5,r7
00121$:
	mov	dpl,r4
	mov	dph,r5
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
