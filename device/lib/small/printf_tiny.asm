;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:51 2013
;--------------------------------------------------------
	.module printf_tiny
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf_tiny
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
;Allocation info for local variables in function 'printf_tiny'
;------------------------------------------------------------
;fmt                       Allocated to stack - _bp -4
;------------------------------------------------------------
;	printf_tiny.c:85: void printf_tiny(__code const char *fmt, ...) __reentrant
;	-----------------------------------------
;	 function printf_tiny
;	-----------------------------------------
_printf_tiny:
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
;	printf_tiny.c:301: __endasm;
	printf_begin:
	mov a, _bp
	add a, #253
	mov r0, a
	mov dph, @r0
	dec r0
	mov dpl, @r0
	dec r0
	printf_main_loop:
	clr a
	movc a, @a+dptr
	inc dptr
	add a, #256 - 37
	jz printf_format
	add a, #37
	jz printf_end_h
	lcall printf_putchar
	sjmp printf_main_loop
	printf_end_h:
	ljmp printf_end
	printf_format:
	setb PSW.5
	clr a
	movc a, @a+dptr
	inc dptr
	push dph
	push dpl
	printf_format_s:
	cjne a, #115, printf_format_c
	printf_string:
	mov b, @r0
	dec r0
	mov dph, @r0
	dec r0
	mov dpl, @r0
	dec r0
	printf_str_loop:
	lcall __gptrget
	jz printf_format_done
	inc dptr
	lcall printf_putchar
	sjmp printf_str_loop
	printf_format_c:
	cjne a, #99, printf_format_d
	dec r0
	mov a, @r0
	dec r0
	lcall printf_putchar
	sjmp printf_format_done
	printf_format_d:
	cjne a, #100, printf_format_x
	mov a, @r0
	jnb acc.7, printf_uint
	dec r0
	mov a, @r0
	cpl a
	add a, #1
	mov @r0, a
	inc r0
	mov a, @r0
	cpl a
	addc a, #0
	mov @r0, a
	mov a, #45
	lcall printf_putchar
	sjmp printf_uint
	printf_format_x:
	cjne a, #120, printf_format_u
	mov dph, @r0
	dec r0
	mov dpl, @r0
	dec r0
	clr a
	printf_hex:
	lcall printf_phex_lsn
	mov a, dph
	lcall printf_phex_msn
	mov a, dph
	lcall printf_phex_lsn
	mov a, dpl
	lcall printf_phex_msn
	mov a, dpl
	lcall printf_phex_lsn
	jnb PSW.5, printf_format_done
	mov a, #48
	lcall printf_putchar
	printf_format_done:
	pop dpl
	pop dph
	ljmp printf_main_loop
	printf_format_u:
	cjne a, #117, printf_format_done
	printf_uint:
	mov a, @r0
	mov r2, a
	dec r0
	mov a, @r0
	mov r1, a
	dec r0
	printf_int2bcd:
	mov r4, #16
	mov r5, #39
	lcall div_by_sub
	mov r7, a
	mov r4, #232
	mov r5, #3
	lcall div_by_sub
	swap a
	mov dph, a
	mov r4, #100
	mov r5, #0
	lcall div_by_sub
	orl dph, a
	mov a, r1
	mov b, #10
	div ab
	swap a
	orl a, b
	mov dpl, a
	mov a, r7
	sjmp printf_hex
	div_by_sub:
	mov r3, #0
	div_by_sub_loop:
	inc r3
	clr c
	mov a, r1
	subb a, r4
	mov r1, a
	mov a, r2
	subb a, r5
	mov r2, a
	jnc div_by_sub_loop
	dec r3
	mov a, r1
	add a, r4
	mov r1, a
	mov a, r2
	addc a, r5
	mov r2, a
	mov a, r3
	ret
	printf_phex_msn:
	swap a
	printf_phex_lsn:
	anl a, #15
	jnz printf_phex_ok
	jb PSW.5, printf_ret
	printf_phex_ok:
	clr PSW.5
	add a, #0x90
	da a
	addc a, #0x40
	da a
	printf_putchar:
	push dph
	push dpl
	push b
	mov dpl, a
	mov a, r0
	push acc
	lcall _putchar
	pop acc
	mov r0, a
	pop b
	pop dpl
	pop dph
	printf_ret:
	ret
	printf_end:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
