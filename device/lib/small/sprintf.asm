;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:51 2013
;--------------------------------------------------------
	.module sprintf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __print_format
	.globl _vsprintf_PARM_3
	.globl _vsprintf_PARM_2
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
_vsprintf_PARM_2:
	.ds 3
_vsprintf_PARM_3:
	.ds 1
_vsprintf_buf_1_14:
	.ds 3
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
;format                    Allocated with name '_vsprintf_PARM_2'
;ap                        Allocated with name '_vsprintf_PARM_3'
;buf                       Allocated with name '_vsprintf_buf_1_14'
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	sprintf.c:41: vsprintf (char *buf, const char *format, va_list ap)
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
_vsprintf:
	mov	_vsprintf_buf_1_14,dpl
	mov	(_vsprintf_buf_1_14 + 1),dph
	mov	(_vsprintf_buf_1_14 + 2),b
;	sprintf.c:44: i = _print_format (put_char_to_string, &buf, format, ap);
	mov	__print_format_PARM_2,#_vsprintf_buf_1_14
	mov	(__print_format_PARM_2 + 1),#0x00
	mov	(__print_format_PARM_2 + 2),#0x40
	mov	__print_format_PARM_3,_vsprintf_PARM_2
	mov	(__print_format_PARM_3 + 1),(_vsprintf_PARM_2 + 1)
	mov	(__print_format_PARM_3 + 2),(_vsprintf_PARM_2 + 2)
	mov	__print_format_PARM_4,_vsprintf_PARM_3
	mov	dptr,#_put_char_to_string
	lcall	__print_format
	mov	r6,dpl
	mov	r7,dph
;	sprintf.c:45: *buf = 0;
	mov	r3,_vsprintf_buf_1_14
	mov	r4,(_vsprintf_buf_1_14 + 1)
	mov	r5,(_vsprintf_buf_1_14 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
;	sprintf.c:46: return i;
	mov	dpl,r6
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sprintf'
;------------------------------------------------------------
;buf                       Allocated to stack - _bp -5
;format                    Allocated to stack - _bp -8
;arg                       Allocated to registers 
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
	mov	__print_format_PARM_4,r7
;	sprintf.c:56: i = _print_format (put_char_to_string, &buf, format, arg);
	mov	a,_bp
	add	a,#0xFB
	mov	r7,a
	mov	__print_format_PARM_2,r7
	mov	(__print_format_PARM_2 + 1),#0x00
	mov	(__print_format_PARM_2 + 2),#0x40
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	__print_format_PARM_3,@r0
	inc	r0
	mov	(__print_format_PARM_3 + 1),@r0
	inc	r0
	mov	(__print_format_PARM_3 + 2),@r0
	mov	dptr,#_put_char_to_string
	lcall	__print_format
	mov	r6,dpl
	mov	r7,dph
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
