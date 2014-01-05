;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:12 2013
;--------------------------------------------------------
	.module sprintf
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __print_format
	.globl _vsprintf
	.globl _sprintf
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
;Allocation info for local variables in function 'put_char_to_string'
;------------------------------------------------------------
;p                         Allocated to stack - _bp -5
;c                         Allocated to stack - _bp +1
;buf                       Allocated to stack - _bp +2
;------------------------------------------------------------
;	sprintf.c:34: put_char_to_string (char c, void* p) _REENTRANT
;	-----------------------------------------
;	 function put_char_to_string
;	-----------------------------------------
_put_char_to_string:
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
	inc	sp
	inc	sp
	inc	sp
;	sprintf.c:36: char **buf = (char **)p;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
	inc	r1
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
;	sprintf.c:37: *(*buf)++ = c;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x01
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r7
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vsprintf'
;------------------------------------------------------------
;format                    Allocated to stack - _bp -5
;ap                        Allocated to stack - _bp -6
;buf                       Allocated to stack - _bp +1
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	sprintf.c:41: vsprintf (char *buf, const char *format, va_list ap)
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
_vsprintf:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	sprintf.c:44: i = _print_format (put_char_to_string, &buf, format, ap);
	mov	r7,_bp
	inc	r7
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
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
	push	ar7
	push	ar6
	push	ar5
	mov	dptr,#_put_char_to_string
	lcall	__print_format
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	sprintf.c:45: *buf = 0;
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
;	sprintf.c:46: return i;
	mov	dpl,r6
	mov	dph,r7
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sprintf'
;------------------------------------------------------------
;buf                       Allocated to stack - _bp -5
;format                    Allocated to stack - _bp -8
;arg                       Allocated to registers r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	sprintf.c:50: sprintf (char *buf, const char *format, ...)
;	-----------------------------------------
;	 function sprintf
;	-----------------------------------------
_sprintf:
	push	_bp
	mov	_bp,sp
;	sprintf.c:55: va_start (arg, format);
	mov	a,_bp
	add	a,#0xF8
	mov	r7,a
;	sprintf.c:56: i = _print_format (put_char_to_string, &buf, format, arg);
	mov	a,_bp
	add	a,#0xFB
	mov	r6,a
	mov	r5,#0x00
	mov	r4,#0x40
	push	ar7
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar5
	push	ar4
	mov	dptr,#_put_char_to_string
	lcall	__print_format
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	sprintf.c:57: *buf = 0;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
;	sprintf.c:60: return i;
	mov	dpl,r6
	mov	dph,r7
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
