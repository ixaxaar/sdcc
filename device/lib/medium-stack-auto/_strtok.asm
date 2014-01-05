;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:07 2013
;--------------------------------------------------------
	.module _strtok
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strtok
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
_strtok_s_1_22:
	.ds 3
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
;Allocation info for local variables in function 'strtok'
;------------------------------------------------------------
;control                   Allocated to stack - _bp -5
;str                       Allocated to registers r5 r6 r7 
;s1                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	_strtok.c:36: char * strtok (
;	-----------------------------------------
;	 function strtok
;	-----------------------------------------
_strtok:
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
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_strtok.c:43: if ( str )
	mov	a,r5
	orl	a,r6
	jz	00102$
;	_strtok.c:44: s = str ;
	mov	r0,#_strtok_s_1_22
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
00102$:
;	_strtok.c:45: if ( !s )
	mov	r0,#_strtok_s_1_22
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
;	_strtok.c:46: return NULL;
	jnz	00108$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00119$
;	_strtok.c:48: while (*s) {
00108$:
	mov	r0,#_strtok_s_1_22
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	jz	00110$
;	_strtok.c:49: if (strchr(control,*s))
	push	ar7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_strchr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	mov	a,r5
	orl	a,r6
	jz	00110$
;	_strtok.c:50: s++;
	mov	r0,#_strtok_s_1_22
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
;	_strtok.c:52: break;
	sjmp	00108$
00110$:
;	_strtok.c:55: s1 = s ;
	mov	r0,#_strtok_s_1_22
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
;	_strtok.c:57: while (*s) {
00113$:
	mov	r0,#_strtok_s_1_22
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	jz	00115$
;	_strtok.c:58: if (strchr(control,*s)) {
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
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
	mov	a,r2
	orl	a,r3
	jz	00112$
;	_strtok.c:59: *s++ = '\0';
	mov	r0,#_strtok_s_1_22
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	mov	r0,#_strtok_s_1_22
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
;	_strtok.c:60: return s1 ;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	sjmp	00119$
00112$:
;	_strtok.c:62: s++ ;
	mov	r0,#_strtok_s_1_22
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
	sjmp	00113$
00115$:
;	_strtok.c:65: s = NULL;
	mov	r0,#_strtok_s_1_22
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	_strtok.c:67: if (*s1)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00117$
;	_strtok.c:68: return s1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	sjmp	00119$
00117$:
;	_strtok.c:70: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00119$:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
