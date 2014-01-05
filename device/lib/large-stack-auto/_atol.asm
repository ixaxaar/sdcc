;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:10 2013
;--------------------------------------------------------
	.module _atol
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;s                         Allocated to registers r4 r3 r2 
;rv                        Allocated to stack - _bp +8
;sign                      Allocated to registers r5 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	_atol.c:29: long atol(char * s)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
_atol:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0B
	mov	sp,a
	mov	r4,dpl
	mov	r3,dph
	mov	r2,b
;	_atol.c:31: register long rv=0; 
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	_atol.c:35: while (*s) {
	mov	ar5,r4
	mov	ar6,r3
	mov	ar7,r2
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00133$
;	_atol.c:36: if (*s <= '9' && *s >= '0')
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00133$
;	_atol.c:37: break;
00102$:
;	_atol.c:38: if (*s == '-' || *s == '+') 
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2D,00160$
	sjmp	00133$
00160$:
	cjne	r4,#0x2B,00161$
	sjmp	00133$
00161$:
;	_atol.c:40: s++;
	inc	r5
	cjne	r5,#0x00,00107$
	inc	r6
	sjmp	00107$
00133$:
	mov	ar4,r5
	mov	ar3,r6
	mov	ar2,r7
;	_atol.c:43: sign = (*s == '-');
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	a
	cjne	r7,#0x2D,00163$
	inc	a
00163$:
;	_atol.c:44: if (*s == '-' || *s == '+') s++;
	mov	r6,a
	mov	r5,a
	jnz	00110$
	cjne	r7,#0x2B,00131$
00110$:
	inc	r4
	cjne	r4,#0x00,00168$
	inc	r3
00168$:
;	_atol.c:46: while (*s && *s >= '0' && *s <= '9') {
00131$:
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar2
00115$:
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	jnz	00169$
	ljmp	00117$
00169$:
	clr	c
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00170$
	ljmp	00117$
00170$:
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00171$
	ljmp	00117$
00171$:
;	_atol.c:47: rv = (rv * 10) + (*s - '0');
	push	ar5
	push	ar5
	push	ar3
	mov	a,_bp
	add	a,#0x08
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
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	xch	a,r0
	mov	a,_bp
	add	a,#0x04
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
	pop	ar3
	pop	ar5
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r3
	add	a,#0xD0
	mov	r3,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	_atol.c:48: s++;
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00172$
	inc	r0
	inc	@r0
00172$:
	pop	ar5
	ljmp	00115$
00117$:
;	_atol.c:51: return (sign ? -rv : rv);
	mov	a,r5
	jz	00120$
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	mov	r4,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r5,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r6,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r7,a
	sjmp	00121$
00120$:
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00121$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
