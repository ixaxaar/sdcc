;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:12 2013
;--------------------------------------------------------
	.module printfl
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __ltoa
	.globl _putchar
	.globl _printf_small
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
_radix:
	.ds 1
_str:
	.ds 3
_val:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_printf_small_buffer_4_35:
	.ds 12
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_long_flag:
	.ds 1
_string_flag:
	.ds 1
_char_flag:
	.ds 1
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
;	printfl.c:50: static __bit  long_flag = 0;
	clr	_long_flag
;	printfl.c:51: static __bit  string_flag =0;
	clr	_string_flag
;	printfl.c:52: static __bit  char_flag = 0;
	clr	_char_flag
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
;Allocation info for local variables in function 'printf_small'
;------------------------------------------------------------
;fmt                       Allocated to stack - _bp -5
;ap                        Allocated to registers r7 
;stri                      Allocated to registers 
;buffer                    Allocated with name '_printf_small_buffer_4_35'
;------------------------------------------------------------
;	printfl.c:124: void printf_small (char * fmt, ... ) __reentrant
;	-----------------------------------------
;	 function printf_small
;	-----------------------------------------
_printf_small:
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
;	printfl.c:128: va_start(ap,fmt);
	mov	a,_bp
	add	a,#0xFB
	mov	r7,a
00133$:
;	printfl.c:130: for (; *fmt ; fmt++ ) {
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	jnz	00191$
	ljmp	00134$
00191$:
;	printfl.c:131: if (*fmt == '%') {
	cjne	r3,#0x25,00192$
	sjmp	00193$
00192$:
	ljmp	00128$
00193$:
;	printfl.c:132: long_flag = string_flag = char_flag = 0;
	clr	_char_flag
	clr	_string_flag
	clr	_long_flag
;	printfl.c:133: fmt++ ;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
;	printfl.c:134: switch (*fmt) {
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x68,00194$
	sjmp	00102$
00194$:
	cjne	r2,#0x6C,00103$
;	printfl.c:136: long_flag = 1;
	setb	_long_flag
;	printfl.c:137: fmt++;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
;	printfl.c:138: break;
;	printfl.c:139: case 'h':
	sjmp	00103$
00102$:
;	printfl.c:140: char_flag = 1;
	setb	_char_flag
;	printfl.c:141: fmt++;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
;	printfl.c:142: }
00103$:
;	printfl.c:144: switch (*fmt) {
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	cjne	r6,#0x63,00197$
	sjmp	00107$
00197$:
	cjne	r6,#0x64,00198$
	sjmp	00105$
00198$:
	cjne	r6,#0x6F,00199$
	sjmp	00108$
00199$:
	cjne	r6,#0x73,00200$
	sjmp	00104$
00200$:
;	printfl.c:145: case 's':
	cjne	r6,#0x78,00109$
	sjmp	00106$
00104$:
;	printfl.c:146: string_flag = 1;
	setb	_string_flag
;	printfl.c:147: break;
;	printfl.c:148: case 'd':
	sjmp	00109$
00105$:
;	printfl.c:149: radix = 10;
	mov	_radix,#0x0A
;	printfl.c:150: break;
;	printfl.c:151: case 'x':
	sjmp	00109$
00106$:
;	printfl.c:152: radix = 16;
	mov	_radix,#0x10
;	printfl.c:153: break;
;	printfl.c:154: case 'c':
	sjmp	00109$
00107$:
;	printfl.c:155: radix = 0;
	mov	_radix,#0x00
;	printfl.c:156: break;
;	printfl.c:157: case 'o':
	sjmp	00109$
00108$:
;	printfl.c:158: radix = 8;
	mov	_radix,#0x08
;	printfl.c:160: }
00109$:
;	printfl.c:162: if (string_flag) {
	jnb	_string_flag,00114$
;	printfl.c:163: str = va_arg(ap, char *);
	mov	a,r7
	add	a,#0xFD
	mov	r6,a
	mov	r7,a
	mov	ar1,r6
	mov	_str,@r1
	inc	r1
	mov	(_str + 1),@r1
	inc	r1
	mov	(_str + 2),@r1
	dec	r1
	dec	r1
;	printfl.c:164: while (*str) putchar(*str++);
00110$:
	mov	r4,_str
	mov	r5,(_str + 1)
	mov	r6,(_str + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	jnz	00203$
	ljmp	00130$
00203$:
	mov	r4,_str
	mov	r5,(_str + 1)
	mov	r6,(_str + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	_str
	clr	a
	cjne	a,_str,00204$
	inc	(_str + 1)
00204$:
	mov	dpl,r4
	push	ar7
	lcall	_putchar
	pop	ar7
;	printfl.c:165: continue ;
	sjmp	00110$
00114$:
;	printfl.c:168: if (long_flag)
	jnb	_long_flag,00119$
;	printfl.c:169: val = va_arg(ap,long);
	mov	a,r7
	add	a,#0xFC
	mov	r6,a
	mov	r7,a
	mov	ar1,r6
	mov	_val,@r1
	inc	r1
	mov	(_val + 1),@r1
	inc	r1
	mov	(_val + 2),@r1
	inc	r1
	mov	(_val + 3),@r1
	dec	r1
	dec	r1
	dec	r1
	sjmp	00120$
00119$:
;	printfl.c:171: if (char_flag)
	jnb	_char_flag,00116$
;	printfl.c:172: val = va_arg(ap,char);
	mov	a,r7
	dec	a
	mov	r6,a
	mov	r7,a
	mov	ar1,r6
	mov	a,@r1
	mov	r6,a
	mov	_val,a
	rlc	a
	subb	a,acc
	mov	(_val + 1),a
	mov	(_val + 2),a
	mov	(_val + 3),a
	sjmp	00120$
00116$:
;	printfl.c:174: val = va_arg(ap,int);
	mov	a,r7
	add	a,#0xFE
	mov	r6,a
	mov	r7,a
	mov	ar1,r6
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	mov	_val,r5
	mov	a,r6
	mov	(_val + 1),a
	rlc	a
	subb	a,acc
	mov	(_val + 2),a
	mov	(_val + 3),a
00120$:
;	printfl.c:179: if (radix)
	mov	a,_radix
	jz	00125$
;	printfl.c:184: _ltoa (val, buffer, radix);
	push	ar7
	push	_radix
	mov	a,#_printf_small_buffer_4_35
	push	acc
	mov	a,#(_printf_small_buffer_4_35 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,_val
	mov	dph,(_val + 1)
	mov	b,(_val + 2)
	mov	a,(_val + 3)
	lcall	__ltoa
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	printfl.c:185: stri = buffer;
	mov	r1,#_printf_small_buffer_4_35
;	printfl.c:186: while (*stri)
00121$:
	mov	a,@r1
	mov	r6,a
	jz	00130$
;	printfl.c:188: putchar (*stri);
	mov	dpl,r6
	push	ar7
	push	ar1
	lcall	_putchar
	pop	ar1
	pop	ar7
;	printfl.c:189: stri++;
	inc	r1
	sjmp	00121$
00125$:
;	printfl.c:194: putchar((char)val);
	mov	r6,_val
	mov	dpl,r6
	push	ar7
	lcall	_putchar
	pop	ar7
	sjmp	00130$
00128$:
;	printfl.c:197: putchar(*fmt);
	mov	dpl,r3
	push	ar7
	lcall	_putchar
	pop	ar7
00130$:
;	printfl.c:130: for (; *fmt ; fmt++ ) {
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00209$
	inc	r0
	inc	@r0
00209$:
	ljmp	00133$
00134$:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
