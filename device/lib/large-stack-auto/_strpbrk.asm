;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:11 2013
;--------------------------------------------------------
	.module _strpbrk
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strpbrk
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
;Allocation info for local variables in function 'strpbrk'
;------------------------------------------------------------
;control                   Allocated to stack - _bp -5
;string                    Allocated to stack - _bp +1
;ret                       Allocated to stack - _bp +4
;ch                        Allocated to registers 
;p                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	_strpbrk.c:31: char * strpbrk (
;	-----------------------------------------
;	 function strpbrk
;	-----------------------------------------
_strpbrk:
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
;	_strpbrk.c:36: char *ret = NULL;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	_strpbrk.c:39: while (ch = *control) {
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00105$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00107$
;	_strpbrk.c:40: char * p = strchr(string, ch);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_strchr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	_strpbrk.c:41: if (p != NULL && (ret == NULL || p < ret)) {
	mov	a,r2
	orl	a,r3
	jz	00102$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00101$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	00102$
00101$:
;	_strpbrk.c:42: ret = p;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00102$:
;	_strpbrk.c:44: control++;
	inc	r5
	cjne	r5,#0x00,00105$
	inc	r6
	sjmp	00105$
00107$:
;	_strpbrk.c:47: return (ret);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
