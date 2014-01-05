;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:01 2013
;--------------------------------------------------------
	.module gets
	.optsdcc -mmcs51 --model-huge
	
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
_gets_s_1_12:
	.ds 3
_gets_count_1_13:
	.ds 2
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
;s                         Allocated with name '_gets_s_1_12'
;c                         Allocated with name '_gets_c_1_13'
;count                     Allocated with name '_gets_count_1_13'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gets_s_1_12
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	gets.c:35: unsigned int count = 0;
	mov	dptr,#_gets_count_1_13
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	gets.c:37: while (1)
00109$:
;	gets.c:39: c = getchar ();
	mov	r0,#_getchar
	mov	r1,#(_getchar >> 8)
	mov	r2,#(_getchar >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
;	gets.c:40: switch(c)
	cjne	r7,#0x08,00128$
	sjmp	00101$
00128$:
	cjne	r7,#0x0A,00129$
	sjmp	00105$
00129$:
	cjne	r7,#0x0D,00130$
	sjmp	00105$
00130$:
	ljmp	00106$
;	gets.c:42: case '\b': /* backspace */
00101$:
;	gets.c:43: if (count)
	mov	dptr,#_gets_count_1_13
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jz	00109$
;	gets.c:45: putchar ('\b');
	mov	dpl,#0x08
	push	ar6
	push	ar5
	mov	r0,#_putchar
	mov	r1,#(_putchar >> 8)
	mov	r2,#(_putchar >> 16)
	lcall	__sdcc_banked_call
;	gets.c:46: putchar (' ');
	mov	dpl,#0x20
	mov	r0,#_putchar
	mov	r1,#(_putchar >> 8)
	mov	r2,#(_putchar >> 16)
	lcall	__sdcc_banked_call
;	gets.c:47: putchar ('\b');
	mov	dpl,#0x08
	mov	r0,#_putchar
	mov	r1,#(_putchar >> 8)
	mov	r2,#(_putchar >> 16)
	lcall	__sdcc_banked_call
	pop	ar5
	pop	ar6
;	gets.c:48: --s;
	mov	dptr,#_gets_s_1_12
	movx	a,@dptr
	add	a,#0xFF
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_gets_s_1_12
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	gets.c:49: --count;
	dec	r5
	cjne	r5,#0xFF,00132$
	dec	r6
00132$:
	mov	dptr,#_gets_count_1_13
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	gets.c:51: break;
;	gets.c:54: case '\r': /* CR or LF */
	sjmp	00109$
00105$:
;	gets.c:55: putchar ('\r');
	mov	dpl,#0x0D
	mov	r0,#_putchar
	mov	r1,#(_putchar >> 8)
	mov	r2,#(_putchar >> 16)
	lcall	__sdcc_banked_call
;	gets.c:56: putchar ('\n');
	mov	dpl,#0x0A
	mov	r0,#_putchar
	mov	r1,#(_putchar >> 8)
	mov	r2,#(_putchar >> 16)
	lcall	__sdcc_banked_call
;	gets.c:57: *s = 0;
	mov	dptr,#_gets_s_1_12
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	gets.c:58: return s;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	gets.c:60: default:
	sjmp	00111$
00106$:
;	gets.c:61: *s++ = c;
	mov	dptr,#_gets_s_1_12
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	mov	dptr,#_gets_s_1_12
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	gets.c:62: ++count;
	mov	dptr,#_gets_count_1_13
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	gets.c:63: putchar (c);
	mov	dpl,r7
	mov	r0,#_putchar
	mov	r1,#(_putchar >> 8)
	mov	r2,#(_putchar >> 16)
	lcall	__sdcc_banked_call
;	gets.c:65: }
	ljmp	00109$
00111$:
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
