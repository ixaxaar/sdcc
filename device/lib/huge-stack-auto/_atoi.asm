;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:14 2013
;--------------------------------------------------------
	.module _atoi
	.optsdcc -mmcs51 --model-huge
	
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;s                         Allocated to stack - _bp +1
;rv                        Allocated to registers r3 r4 
;sign                      Allocated to registers r5 
;sloc0                     Allocated to stack - _bp +7
;sloc1                     Allocated to stack - _bp +4
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
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	_atoi.c:31: register int rv=0; 
	mov	r3,#0x00
	mov	r4,#0x00
;	_atoi.c:35: while (*s) {
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00107$:
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	jz	00133$
;	_atoi.c:36: if (*s <= '9' && *s >= '0')
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00133$
;	_atoi.c:37: break;
00102$:
;	_atoi.c:38: if (*s == '-' || *s == '+') 
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x2D,00160$
	sjmp	00133$
00160$:
	cjne	r5,#0x2B,00161$
	sjmp	00133$
00161$:
;	_atoi.c:40: s++;
	inc	r2
	cjne	r2,#0x00,00107$
	inc	r6
	sjmp	00107$
00133$:
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	_atoi.c:43: sign = (*s == '-');
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	a
	cjne	r7,#0x2D,00163$
	inc	a
00163$:
;	_atoi.c:44: if (*s == '-' || *s == '+') s++;
	mov	r6,a
	mov	r5,a
	jnz	00110$
	cjne	r7,#0x2B,00131$
00110$:
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00168$
	inc	r0
	inc	@r0
00168$:
;	_atoi.c:46: while (*s && *s >= '0' && *s <= '9') {
00131$:
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
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
00115$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	jz	00117$
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00117$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00117$
;	_atoi.c:47: rv = (rv * 10) + (*s - '0');
	push	ar5
	push	ar6
	push	ar3
	push	ar4
	mov	dptr,#0x000A
	lcall	__mulint
	mov	r5,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar6
	mov	a,r6
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r2
	add	a,#0xD0
	mov	r2,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	a,r2
	add	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r7
	mov	r7,a
	mov	ar3,r5
	mov	ar4,r7
;	_atoi.c:48: s++;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00172$
	inc	r0
	inc	@r0
00172$:
	pop	ar5
	sjmp	00115$
00117$:
;	_atoi.c:51: return (sign ? -rv : rv);
	mov	a,r5
	jz	00120$
	clr	c
	clr	a
	subb	a,r3
	mov	r6,a
	clr	a
	subb	a,r4
	mov	r7,a
	sjmp	00121$
00120$:
	mov	ar6,r3
	mov	ar7,r4
00121$:
	mov	dpl,r6
	mov	dph,r7
	mov	sp,_bp
	pop	_bp
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
