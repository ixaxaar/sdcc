;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:07 2013
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat
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
;Allocation info for local variables in function 'strncat'
;------------------------------------------------------------
;back                      Allocated to stack - _bp -5
;count                     Allocated to stack - _bp -7
;front                     Allocated to stack - _bp +1
;start                     Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	_strncat.c:31: char * strncat (
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
_strncat:
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
	mov	a,sp
	add	a,#0x08
	mov	sp,a
;	_strncat.c:37: char *start = front;
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
;	_strncat.c:39: while (*front++);
	mov	r0,_bp
	inc	r0
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
00101$:
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r7,dpl
	mov	r6,dph
	mov	a,r4
	jnz	00101$
;	_strncat.c:41: front--;
	mov	r0,_bp
	inc	r0
	mov	a,r7
	add	a,#0xFF
	mov	@r0,a
	mov	a,r6
	addc	a,#0xFF
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
;	_strncat.c:43: while (count--)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
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
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00106$:
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xFF,00128$
	inc	r0
	dec	@r0
00128$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	_strncat.c:44: if (!(*front++ = *back++))
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	a,_bp
	add	a,#0x04
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
	mov	a,r7
	jnz	00106$
;	_strncat.c:45: return(start);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	sjmp	00109$
00108$:
;	_strncat.c:47: *front = '\0';
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	_strncat.c:48: return(start);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00109$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
