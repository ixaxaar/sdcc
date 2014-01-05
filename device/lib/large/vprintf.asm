;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:58 2013
;--------------------------------------------------------
	.module vprintf
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl __print_format
	.globl _vprintf_PARM_2
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
_vprintf_PARM_2:
	.ds 1
_vprintf_format_1_14:
	.ds 3
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
;ap                        Allocated with name '_vprintf_PARM_2'
;format                    Allocated with name '_vprintf_format_1_14'
;------------------------------------------------------------
;	vprintf.c:41: vprintf (const char *format, va_list ap)
;	-----------------------------------------
;	 function vprintf
;	-----------------------------------------
_vprintf:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_vprintf_format_1_14
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	vprintf.c:43: return _print_format (put_char_to_stdout, NULL, format, ap);
	mov	dptr,#_vprintf_format_1_14
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_vprintf_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#__print_format_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__print_format_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_put_char_to_stdout
	ljmp	__print_format
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
	mov	dptr,#__print_format_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dptr,#__print_format_PARM_3
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dptr,#__print_format_PARM_4
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_put_char_to_stdout
	lcall	__print_format
;	vprintf.c:56: return i;
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
