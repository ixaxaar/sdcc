;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:11 2013
;--------------------------------------------------------
	.module gets
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _getchar
	.globl _gets
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
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;c                         Allocated to registers r2 
;count                     Allocated to registers r3 r4 
;------------------------------------------------------------
;	gets.c:32: gets (char *s)
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
_gets:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	gets.c:35: unsigned int count = 0;
	mov	r3,#0x00
	mov	r4,#0x00
;	gets.c:37: while (1)
00109$:
;	gets.c:39: c = getchar ();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_getchar
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	gets.c:40: switch(c)
	cjne	r2,#0x08,00128$
	sjmp	00101$
00128$:
	cjne	r2,#0x0A,00129$
	sjmp	00105$
00129$:
;	gets.c:42: case '\b': /* backspace */
	cjne	r2,#0x0D,00106$
	sjmp	00105$
00101$:
;	gets.c:43: if (count)
	mov	a,r3
	orl	a,r4
	jz	00109$
;	gets.c:45: putchar ('\b');
	mov	dpl,#0x08
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
;	gets.c:46: putchar (' ');
	mov	dpl,#0x20
	lcall	_putchar
;	gets.c:47: putchar ('\b');
	mov	dpl,#0x08
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	gets.c:48: --s;
	dec	r5
	cjne	r5,#0xFF,00132$
	dec	r6
00132$:
;	gets.c:49: --count;
	dec	r3
	cjne	r3,#0xFF,00133$
	dec	r4
00133$:
;	gets.c:51: break;
;	gets.c:54: case '\r': /* CR or LF */
	sjmp	00109$
00105$:
;	gets.c:55: putchar ('\r');
	mov	dpl,#0x0D
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
;	gets.c:56: putchar ('\n');
	mov	dpl,#0x0A
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
;	gets.c:57: *s = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	gets.c:58: return s;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	gets.c:60: default:
	ret
00106$:
;	gets.c:61: *s++ = c;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	gets.c:62: ++count;
	inc	r3
	cjne	r3,#0x00,00134$
	inc	r4
00134$:
;	gets.c:63: putchar (c);
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	gets.c:65: }
	ljmp	00109$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
