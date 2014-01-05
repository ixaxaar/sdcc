;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:53 2013
;--------------------------------------------------------
	.module _atol
	.optsdcc -mmcs51 --model-medium
	
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
_atol_rv_1_2:
	.ds 4
_atol_sloc0_1_0:
	.ds 3
_atol_sloc1_1_0:
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;rv                        Allocated with name '_atol_rv_1_2'
;sign                      Allocated to registers r5 
;sloc0                     Allocated with name '_atol_sloc0_1_0'
;sloc1                     Allocated with name '_atol_sloc1_1_0'
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
	mov	r4,dpl
	mov	r3,dph
	mov	r2,b
;	_atol.c:31: register long rv=0; 
	clr	a
	mov	_atol_rv_1_2,a
	mov	(_atol_rv_1_2 + 1),a
	mov	(_atol_rv_1_2 + 2),a
	mov	(_atol_rv_1_2 + 3),a
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
	mov	_atol_sloc0_1_0,r4
	mov	(_atol_sloc0_1_0 + 1),r3
	mov	(_atol_sloc0_1_0 + 2),r2
00115$:
	mov	dpl,_atol_sloc0_1_0
	mov	dph,(_atol_sloc0_1_0 + 1)
	mov	b,(_atol_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	jnz	00169$
	ljmp	00117$
00169$:
	clr	c
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00117$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00117$
;	_atol.c:47: rv = (rv * 10) + (*s - '0');
	push	ar5
	mov	r0,#__mullong_PARM_2
	mov	a,_atol_rv_1_2
	movx	@r0,a
	inc	r0
	mov	a,(_atol_rv_1_2 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(_atol_rv_1_2 + 2)
	movx	@r0,a
	inc	r0
	mov	a,(_atol_rv_1_2 + 3)
	movx	@r0,a
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	push	ar5
	push	ar3
	lcall	__mullong
	mov	_atol_sloc1_1_0,dpl
	mov	(_atol_sloc1_1_0 + 1),dph
	mov	(_atol_sloc1_1_0 + 2),b
	mov	(_atol_sloc1_1_0 + 3),a
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
	mov	a,r3
	add	a,_atol_sloc1_1_0
	mov	_atol_rv_1_2,a
	mov	a,r4
	addc	a,(_atol_sloc1_1_0 + 1)
	mov	(_atol_rv_1_2 + 1),a
	mov	a,r6
	addc	a,(_atol_sloc1_1_0 + 2)
	mov	(_atol_rv_1_2 + 2),a
	mov	a,r7
	addc	a,(_atol_sloc1_1_0 + 3)
	mov	(_atol_rv_1_2 + 3),a
;	_atol.c:48: s++;
	inc	_atol_sloc0_1_0
	clr	a
	cjne	a,_atol_sloc0_1_0,00172$
	inc	(_atol_sloc0_1_0 + 1)
00172$:
	pop	ar5
	ljmp	00115$
00117$:
;	_atol.c:51: return (sign ? -rv : rv);
	mov	a,r5
	jz	00120$
	clr	c
	clr	a
	subb	a,_atol_rv_1_2
	mov	r4,a
	clr	a
	subb	a,(_atol_rv_1_2 + 1)
	mov	r5,a
	clr	a
	subb	a,(_atol_rv_1_2 + 2)
	mov	r6,a
	clr	a
	subb	a,(_atol_rv_1_2 + 3)
	mov	r7,a
	sjmp	00121$
00120$:
	mov	r4,_atol_rv_1_2
	mov	r5,(_atol_rv_1_2 + 1)
	mov	r6,(_atol_rv_1_2 + 2)
	mov	r7,(_atol_rv_1_2 + 3)
00121$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
