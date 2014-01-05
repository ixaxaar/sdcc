;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:56 2013
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
_atol_sloc0_1_0:
	.ds 3
_atol_sloc1_1_0:
	.ds 3
_atol_sloc2_1_0:
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
_atol_s_1_1:
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;rv                        Allocated to registers r4 r5 r6 r7 
;sign                      Allocated to registers r1 
;sloc0                     Allocated with name '_atol_sloc0_1_0'
;sloc1                     Allocated with name '_atol_sloc1_1_0'
;sloc2                     Allocated with name '_atol_sloc2_1_0'
;s                         Allocated with name '_atol_s_1_1'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_atol_s_1_1
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_atol.c:31: register long rv=0; 
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	_atol.c:35: while (*s) {
	mov	dptr,#_atol_s_1_1
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00107$:
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	jz	00133$
;	_atol.c:36: if (*s <= '9' && *s >= '0')
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r0
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	mov	a,r0
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00133$
;	_atol.c:37: break;
00102$:
;	_atol.c:38: if (*s == '-' || *s == '+') 
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x2D,00160$
	sjmp	00133$
00160$:
	cjne	r0,#0x2B,00161$
	sjmp	00133$
00161$:
;	_atol.c:40: s++;
	inc	r1
	cjne	r1,#0x00,00162$
	inc	r2
00162$:
	mov	dptr,#_atol_s_1_1
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00107$
00133$:
	mov	dptr,#_atol_s_1_1
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	_atol.c:43: sign = (*s == '-');
	mov	_atol_sloc0_1_0,r1
	mov	(_atol_sloc0_1_0 + 1),r2
	mov	(_atol_sloc0_1_0 + 2),r3
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r3,a
	clr	a
	cjne	r3,#0x2D,00163$
	inc	a
00163$:
;	_atol.c:44: if (*s == '-' || *s == '+') s++;
	mov	r2,a
	mov	r1,a
	jnz	00110$
	cjne	r3,#0x2B,00131$
00110$:
	mov	dptr,#_atol_s_1_1
	mov	a,#0x01
	add	a,_atol_sloc0_1_0
	movx	@dptr,a
	clr	a
	addc	a,(_atol_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_atol_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	_atol.c:46: while (*s && *s >= '0' && *s <= '9') {
00131$:
	mov	dptr,#_atol_s_1_1
	movx	a,@dptr
	mov	_atol_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_atol_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_atol_sloc1_1_0 + 2),a
00115$:
	mov	dpl,_atol_sloc1_1_0
	mov	dph,(_atol_sloc1_1_0 + 1)
	mov	b,(_atol_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	_atol_sloc0_1_0,a
	jnz	00168$
	ljmp	00134$
00168$:
	clr	c
	mov	a,_atol_sloc0_1_0
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00169$
	ljmp	00134$
00169$:
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,_atol_sloc0_1_0
	xrl	b,#0x80
	subb	a,b
	jc	00134$
;	_atol.c:47: rv = (rv * 10) + (*s - '0');
	push	ar1
	mov	dptr,#__mullong_PARM_2
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
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	push	ar1
	lcall	__mullong
	mov	_atol_sloc2_1_0,dpl
	mov	(_atol_sloc2_1_0 + 1),dph
	mov	(_atol_sloc2_1_0 + 2),b
	mov	(_atol_sloc2_1_0 + 3),a
	pop	ar1
	mov	a,_atol_sloc0_1_0
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r2
	add	a,#0xD0
	mov	r2,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	ar0,r2
	mov	a,r3
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,_atol_sloc2_1_0
	mov	r4,a
	mov	a,r1
	addc	a,(_atol_sloc2_1_0 + 1)
	mov	r5,a
	mov	a,r2
	addc	a,(_atol_sloc2_1_0 + 2)
	mov	r6,a
	mov	a,r3
	addc	a,(_atol_sloc2_1_0 + 3)
	mov	r7,a
;	_atol.c:48: s++;
	inc	_atol_sloc1_1_0
	clr	a
	cjne	a,_atol_sloc1_1_0,00171$
	inc	(_atol_sloc1_1_0 + 1)
00171$:
	mov	dptr,#_atol_s_1_1
	mov	a,_atol_sloc1_1_0
	movx	@dptr,a
	mov	a,(_atol_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_atol_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	pop	ar1
	ljmp	00115$
00134$:
	mov	dptr,#_atol_s_1_1
	mov	a,_atol_sloc1_1_0
	movx	@dptr,a
	mov	a,(_atol_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_atol_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	_atol.c:51: return (sign ? -rv : rv);
	mov	a,r1
	jz	00120$
	clr	c
	clr	a
	subb	a,r4
	mov	r0,a
	clr	a
	subb	a,r5
	mov	r1,a
	clr	a
	subb	a,r6
	mov	r2,a
	clr	a
	subb	a,r7
	mov	r3,a
	sjmp	00121$
00120$:
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
00121$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
