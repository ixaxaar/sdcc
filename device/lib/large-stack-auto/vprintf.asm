;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:12 2013
;--------------------------------------------------------
	.module vprintf
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl __print_format
	.globl _vprintf
	.globl _printf
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
;Allocation info for local variables in function 'put_char_to_stdout'
;------------------------------------------------------------
;p                         Allocated to stack - _bp -5
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	vprintf.c:34: put_char_to_stdout (char c, void* p) _REENTRANT
;	-----------------------------------------
;	 function put_char_to_stdout
;	-----------------------------------------
_put_char_to_stdout:
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
;	vprintf.c:37: putchar (c);
	lcall	_putchar
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vprintf'
;------------------------------------------------------------
;ap                        Allocated to stack - _bp -3
;format                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	vprintf.c:41: vprintf (const char *format, va_list ap)
;	-----------------------------------------
;	 function vprintf
;	-----------------------------------------
_vprintf:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	vprintf.c:43: return _print_format (put_char_to_stdout, NULL, format, ap);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dptr,#_put_char_to_stdout
	lcall	__print_format
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	dpl,r6
	mov	dph,r7
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printf'
;------------------------------------------------------------
;format                    Allocated to stack - _bp -5
;arg                       Allocated to registers r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	vprintf.c:47: printf (const char *format, ...)
;	-----------------------------------------
;	 function printf
;	-----------------------------------------
_printf:
	push	_bp
	mov	_bp,sp
;	vprintf.c:52: va_start (arg, format);
	mov	a,_bp
	add	a,#0xFB
	mov	r7,a
;	vprintf.c:53: i = _print_format (put_char_to_stdout, NULL, format, arg);
	push	ar7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dptr,#_put_char_to_stdout
	lcall	__print_format
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	vprintf.c:56: return i;
	mov	dpl,r6
	mov	dph,r7
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
