;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:11 2013
;--------------------------------------------------------
	.module _memcpy
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
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
;Allocation info for local variables in function 'memcpy'
;------------------------------------------------------------
;src                       Allocated to stack - _bp -5
;acount                    Allocated to stack - _bp -7
;dst                       Allocated to registers r5 r6 r7 
;ret                       Allocated to stack - _bp +6
;d                         Allocated to registers 
;s                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	_memcpy.c:36: void * memcpy (
;	-----------------------------------------
;	 function memcpy
;	-----------------------------------------
_memcpy:
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
	add	a,#0x08
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_memcpy.c:42: void * ret = dst;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	_memcpy.c:43: char * d = dst;
;	_memcpy.c:44: char * s = src;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
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
;	_memcpy.c:49: while (acount--) {
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00101$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xFF,00113$
	inc	r0
	dec	@r0
00113$:
	mov	a,r3
	orl	a,r4
	jz	00103$
;	_memcpy.c:50: *d++ = *s++;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00101$
00103$:
;	_memcpy.c:53: return(ret);
	mov	a,_bp
	add	a,#0x06
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
