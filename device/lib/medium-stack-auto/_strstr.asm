;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:07 2013
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr
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
;Allocation info for local variables in function 'strstr'
;------------------------------------------------------------
;str2                      Allocated to stack - _bp -5
;str1                      Allocated to registers r5 r6 r7 
;cp                        Allocated to stack - _bp +8
;s1                        Allocated to registers r5 r6 r7 
;s2                        Allocated to stack - _bp +11
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +5
;sloc3                     Allocated to stack - _bp +6
;------------------------------------------------------------
;	_strstr.c:31: char * strstr (
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
_strstr:
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
	add	a,#0x0D
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_strstr.c:36: const char * cp = str1;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	_strstr.c:40: if ( !*str2 )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x0b
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
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jnz	00122$
;	_strstr.c:41: return str1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	00113$
;	_strstr.c:43: while (*cp)
00122$:
00110$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00141$
	ljmp	00112$
00141$:
;	_strstr.c:46: s2 = str2;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	_strstr.c:48: while ( *s1 && *s2 && !(*s1-*s2) )
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00105$:
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	jz	00107$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	jz	00107$
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	mov	a,@r0
	rlc	a
	subb	a,acc
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar5,@r0
	mov	a,@r0
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	orl	a,r5
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00107$
;	_strstr.c:49: s1++, s2++;
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00145$
	inc	r0
	inc	@r0
00145$:
	inc	r2
	cjne	r2,#0x00,00105$
	inc	r3
	sjmp	00105$
00107$:
;	_strstr.c:51: if (!*s2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00109$
;	_strstr.c:52: return( (char*)cp );
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	sjmp	00113$
00109$:
;	_strstr.c:54: cp++;
	inc	r5
	cjne	r5,#0x00,00148$
	inc	r6
00148$:
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00110$
00112$:
;	_strstr.c:57: return (NULL) ;
	mov	dptr,#0x0000
	mov	b,#0x00
00113$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
