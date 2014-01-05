;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:54 2013
;--------------------------------------------------------
	.module printf_fast_f
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf_fast_f
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
_field_width:
	.ds 1
_frac_field_width:
	.ds 1
_float_frac_bcd:
	.ds 4
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
_long_flag:
	.ds 1
_short_flag:
	.ds 1
_print_zero_flag:
	.ds 1
_negative_flag:
	.ds 1
_field_width_flag:
	.ds 1
_leading_zero_flag:
	.ds 1
_continue_float:
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
;Allocation info for local variables in function 'printf_fast_f'
;------------------------------------------------------------
;fmt                       Allocated to stack - _bp -4
;------------------------------------------------------------
;	printf_fast.c:146: void PRINTF_FAST(__code const char *fmt, ...) __reentrant
;	-----------------------------------------
;	 function printf_fast_f
;	-----------------------------------------
_printf_fast_f:
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
;	printf_fast.c:1442: __endasm;
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
	cjne a, #37, printf_normal
	printf_format:
	clr _long_flag
	clr _short_flag
	clr _print_zero_flag
	clr _negative_flag
	clr _field_width_flag
	clr _leading_zero_flag
	mov r1, #_field_width
	mov @r1, #0
	clr _continue_float
	printf_format_loop:
	clr a
	movc a, @a+dptr
	inc dptr
	add a, #198
	jc printf_nondigit1
	add a, #10
	jnc printf_nondigit2
	printf_digit:
	jnz printf_digit_2
	cjne a, _field_width, printf_digit_2
	setb _leading_zero_flag
	printf_digit_2:
	setb _field_width_flag
	mov r2, a
	mov a, @r1
	mov b, #10
	mul ab
	add a, r2
	mov @r1, a
	sjmp printf_format_loop
	printf_nondigit1:
	add a, #10
	printf_nondigit2:
	add a, #48
	printf_format_l:
	cjne a, #108, printf_format_h
	setb _long_flag
	sjmp printf_format_loop
	printf_format_h:
	cjne a, #104, printf_format_s
	setb _short_flag
	sjmp printf_format_loop
	printf_format_s:
	cjne a, #115, printf_format_d
	ljmp printf_string
	printf_format_d:
	cjne a, #100, printf_format_u
	lcall printf_get_int
	ljmp printf_int
	printf_format_u:
	cjne a, #117, printf_format_c
	lcall printf_get_int
	ljmp printf_uint
	printf_format_c:
	cjne a, #99, printf_format_x
	dec r0
	mov a, @r0
	dec r0
	sjmp printf_char
	printf_format_x:
	cjne a, #120, printf_format_f
	ljmp printf_hex
	printf_format_f:
	cjne a, #102, printf_format_dot
	ljmp print_float
	printf_format_dot:
	cjne a, #46, printf_normal
	mov r1, #_frac_field_width
	mov @r1, #0
	sjmp printf_format_loop
	printf_normal:
	jz printf_eot
	printf_char:
	lcall printf_putchar
	ljmp printf_main_loop
	printf_eot:
	ljmp printf_end
	printf_string:
	push dph
	push dpl
	mov b, @r0
	dec r0
	mov dph, @r0
	dec r0
	mov dpl, @r0
	dec r0
	jnb _field_width_flag, printf_str_loop
	clr _leading_zero_flag
	push dpl
	push dph
	printf_str_fw_loop:
	lcall __gptrget
	jz printf_str_space
	inc dptr
	dec _field_width
	mov a, _field_width
	jnz printf_str_fw_loop
	printf_str_space:
	lcall printf_space
	pop dph
	pop dpl
	printf_str_loop:
	lcall __gptrget
	jz printf_str_done
	inc dptr
	lcall printf_putchar
	sjmp printf_str_loop
	printf_str_done:
	pop dpl
	pop dph
	ljmp printf_main_loop
	printf_hex:
	lcall printf_hex8
	jb _short_flag, printf_hex_end
	lcall printf_hex8
	jnb _long_flag, printf_hex_end
	lcall printf_hex8
	lcall printf_hex8
	printf_hex_end:
	lcall printf_zero
	ljmp printf_main_loop
	printf_hex8:
	mov a, @r0
	lcall printf_phex_msn
	mov a, @r0
	dec r0
	ljmp printf_phex_lsn
	printf_int:
	mov a, r5
	jnb acc.7, printf_uint
	setb _negative_flag
	mov a, r1
	cpl a
	add a, #1
	mov r1, a
	jb _short_flag, printf_uint
	mov a, r2
	cpl a
	addc a, #0
	mov r2, a
	jnb _long_flag, printf_uint
	mov a, r3
	cpl a
	addc a, #0
	mov r3, a
	mov a, r4
	cpl a
	addc a, #0
	mov r4, a
	printf_uint:
	jb _short_flag, printf_uint_ck8
	jnb _long_flag, printf_uint_ck16
	printf_uint_ck32:
	mov a, r3
	jnz printf_uint_begin
	mov a, r4
	jnz printf_uint_begin
	clr _long_flag
	printf_uint_ck16:
	mov a, r2
	jnz printf_uint_begin
	setb _short_flag
	printf_uint_ck8:
	mov a, r1
	jnz printf_uint_begin
	jb _continue_float, printf_uint_begin
	jnb _field_width_flag, printf_uint_zero
	mov a, _field_width
	jz printf_uint_zero
	dec _field_width
	lcall printf_space
	printf_uint_zero:
	mov a, #48
	lcall printf_putchar
	ljmp printf_main_loop
	printf_uint_begin:
	push dpl
	push dph
	lcall printf_int2bcd
	printf_uint_2:
	jnb _field_width_flag, printf_uifw_end
	printf_uifw_32:
	mov r1, #10
	jnb _long_flag, printf_uifw_16
	mov a, r3
	anl a, #0xF0
	jnz printf_uifw_sub
	dec r1
	mov a, r3
	anl a, #0x0F
	jnz printf_uifw_sub
	dec r1
	mov a, r2
	anl a, #0xF0
	jnz printf_uifw_sub
	dec r1
	mov a, r2
	anl a, #0x0F
	jnz printf_uifw_sub
	dec r1
	mov a, r7
	anl a, #0xF0
	jnz printf_uifw_sub
	printf_uifw_16:
	mov r1, #5
	jb _short_flag, printf_uifw_8
	mov a, r7
	anl a, #0x0F
	jnz printf_uifw_sub
	dec r1
	mov a, r6
	anl a, #0xF0
	jnz printf_uifw_sub
	printf_uifw_8:
	mov r1, #3
	mov a, r6
	anl a, #0x0F
	jnz printf_uifw_sub
	dec r1
	mov a, r5
	anl a, #0xF0
	jnz printf_uifw_sub
	dec r1
	printf_uifw_sub:
	mov a, _field_width
	mov c, _negative_flag
	subb a, r1
	jc printf_uifw_end
	mov _field_width, a
	push ar3
	push ar2
	push ar7
	push ar6
	push ar5
	lcall printf_space
	pop ar5
	pop ar6
	pop ar7
	pop ar2
	pop ar3
	printf_uifw_end:
	printf_uint_doit:
	jnb _negative_flag, printf_uint_pos
	push ar3
	push ar2
	push ar7
	push ar6
	push ar5
	mov a, #45
	lcall printf_putchar
	pop ar5
	pop ar6
	pop ar7
	pop ar2
	pop ar3
	printf_uint_pos:
	jb _short_flag, printf_uint8
	jnb _long_flag, printf_uint16
	printf_uint32:
	push ar5
	push ar6
	push ar7
	mov dpl, r2
	mov a, r3
	mov dph, a
	lcall printf_phex_msn
	mov a, dph
	lcall printf_phex_lsn
	mov a, dpl
	lcall printf_phex_msn
	mov a, dpl
	lcall printf_phex_lsn
	pop acc
	mov dpl, a
	lcall printf_phex_msn
	mov a, dpl
	pop dph
	pop dpl
	sjmp printf_uint16a
	printf_uint16:
	mov dpl, r5
	mov dph, r6
	mov a, r7
	printf_uint16a:
	lcall printf_phex_lsn
	mov a, dph
	lcall printf_phex_msn
	mov a, dph
	sjmp printf_uint8a
	printf_uint8:
	mov dpl, r5
	mov a, r6
	printf_uint8a:
	lcall printf_phex_lsn
	mov a, dpl
	lcall printf_phex_msn
	mov a, dpl
	lcall printf_phex_lsn
	lcall printf_zero
	pop dph
	pop dpl
	jnb _continue_float, 0002$
	ret
	0002$:
	ljmp printf_main_loop
	print_float:
	print_float_1:
	jnb _field_width_flag, print_float_default_width
	mov a, _field_width
	setb c
	subb a, _frac_field_width
	mov _field_width, a
	jnc print_float_begin
	mov _field_width, #0
	sjmp print_float_begin
	print_float_default_width:
	mov a, @r0
	anl a, #0x7F
	mov r2, a
	dec r0
	mov ar3, @r0
	inc r0
	mov r6, dpl
	mov r7, dph
	mov dptr, #_float_range_table
	mov r5, #7
	print_float_default_loop:
	clr a
	movc a, @a+dptr
	add a, r3
	inc dptr
	clr a
	movc a, @a+dptr
	addc a, r2
	jnc print_float_default_done
	inc dptr
	djnz r5, print_float_default_loop
	print_float_default_done:
	mov _frac_field_width, r5
	mov dpl, r6
	mov dph, r7
	print_float_begin:
	push ar0
	lcall printf_get_float
	push dpl
	push dph
	mov a, r7
	cjne a, #126, print_float_frac_lshift
	sjmp print_float_frac
	print_float_frac_lshift:
	jc print_float_frac_rshift
	add a, #130
	mov r5, a
	print_float_lshift_loop:
	clr c
	mov a, r2
	rlc a
	mov r2, a
	mov a, r3
	rlc a
	mov r3, a
	mov a, r4
	rlc a
	mov r4, a
	djnz r5, print_float_lshift_loop
	sjmp print_float_frac
	print_float_frac_rshift:
	cpl a
	add a, #127
	lcall fs_rshift_a
	print_float_frac:
	mov b, #27
	clr a
	mov r0, a
	mov r7, a
	mov r6, a
	mov r5, a
	mov dptr, #_frac2bcd
	print_float_frac_loop:
	mov a, r1
	rlc a
	mov r1, a
	mov a, r2
	rlc a
	mov r2, a
	mov a, r3
	rlc a
	mov r3, a
	mov a, r4
	rlc a
	mov r4, a
	jnc print_float_frac_skip
	clr a
	movc a, @a+dptr
	add a, r5
	da a
	mov r5, a
	mov a, #1
	movc a, @a+dptr
	addc a, r6
	da a
	mov r6, a
	mov a, #2
	movc a, @a+dptr
	addc a, r7
	da a
	mov r7, a
	mov a, #3
	movc a, @a+dptr
	addc a, r0
	da a
	mov r0, a
	print_float_frac_skip:
	inc dptr
	inc dptr
	inc dptr
	inc dptr
	djnz b, print_float_frac_loop
	print_float_frac_roundoff:
	clr a
	mov r4, #0x50
	mov r3, a
	mov r2, a
	mov r1, a
	mov a, _frac_field_width
	rl a
	rl a
	anl a, #0xFC
	mov dph, r0
	lcall fs_rshift_a
	mov a, r5
	add a, r1
	da a
	mov _float_frac_bcd+3, a
	mov a, r6
	addc a, r2
	da a
	mov _float_frac_bcd+2, a
	mov a, r7
	addc a, r3
	da a
	mov _float_frac_bcd+1, a
	mov a, dph
	addc a, r4
	da a
	mov _float_frac_bcd+0, a
	mov psw.5, c
	pop dph
	pop dpl
	print_float_int:
	pop ar0
	lcall printf_get_float
	push ar0
	clr c
	mov a, #158
	subb a, r7
	jnc print_float_size_ok
	printf_float_too_big:
	pop ar0
	ljmp printf_format_loop
	print_float_size_ok:
	push dpl
	lcall fs_rshift_a
	pop dpl
	jnb psw.5, print_float_do_int
	mov a, r1
	add a, #1
	mov r1, a
	clr a
	addc a, r2
	mov r2, a
	clr a
	addc a, r3
	mov r3, a
	clr a
	addc a, r4
	mov r4, a
	jc printf_float_too_big
	print_float_do_int:
	setb _continue_float
	lcall printf_uint
	print_float_frac_width:
	jb _field_width_flag, print_float_do_frac
	print_float_frac_trim:
	mov a, _frac_field_width
	jz print_float_do_frac
	lcall get_float_frac_digit
	jnz print_float_do_frac
	djnz _frac_field_width, print_float_frac_trim
	print_float_do_frac:
	mov a, _frac_field_width
	jz print_float_done
	mov a, #0x2E
	lcall printf_putchar
	mov r0, #0
	setb _print_zero_flag
	print_float_do_frac_loop:
	inc r0
	mov a, r0
	lcall get_float_frac_digit
	lcall printf_phex_lsn
	mov a, r0
	cjne a, _frac_field_width, print_float_do_frac_loop
	print_float_done:
	pop ar0
	ljmp printf_main_loop
	get_float_frac_digit:
	dec a
	clr c
	rrc a
	mov psw.5, c
	add a, #_float_frac_bcd
	mov r1, a
	mov a, @r1
	jb psw.5, get_float_frac_digit_done
	swap a
	get_float_frac_digit_done:
	anl a, #15
	ret
	printf_get_float:
	mov a, @r0
	dec r0
	mov r1, a
	mov a, @r0
	dec r0
	mov r4, a
	rlc a
	mov a, r1
	rlc a
	mov _negative_flag, c
	mov r7, a
	jz printf_get_float_2
	orl ar4, #0x80
	printf_get_float_2:
	mov a, @r0
	dec r0
	mov r3, a
	mov a, @r0
	dec r0
	mov r2, a
	mov r1, #0
	clr _short_flag
	setb _long_flag
	ret
	printf_get_int:
	mov a, @r0
	mov r1, a
	mov r5, a
	dec r0
	jb _short_flag, printf_get_done
	mov r2, ar1
	mov a, @r0
	mov r1, a
	dec r0
	jnb _long_flag, printf_get_done
	mov r4, ar2
	mov r3, ar1
	mov a, @r0
	mov r2, a
	dec r0
	mov a, @r0
	mov r1, a
	dec r0
	printf_get_done:
	ret
	printf_int2bcd:
	mov a, r1
	mov b, #100
	div ab
	mov r6, a
	mov a, #10
	xch a, b
	div ab
	swap a
	orl a, b
	mov r5, a
	jnb _short_flag, printf_i2bcd_16
	ret
	printf_i2bcd_16:
	mov a, r2
	anl a, #0x0F
	mov r1, a
	mov dptr, #_int2bcd_2
	movc a, @a+dptr
	add a, r5
	da a
	mov r5, a
	mov a, r1
	orl a, #16
	movc a, @a+dptr
	addc a, r6
	da a
	mov r6, a
	mov a, r2
	swap a
	anl a, #0x0F
	mov r1, a
	mov dptr, #_int2bcd_3
	movc a, @a+dptr
	add a, r5
	da a
	mov r5, a
	mov a, r1
	orl a, #16
	movc a, @a+dptr
	addc a, r6
	da a
	mov r6, a
	mov a, r1
	orl a, #32
	movc a, @a+dptr
	addc a, #0
	da a
	mov r7, a
	jb _long_flag, printf_i2bcd_32
	ret
	printf_i2bcd_32:
	mov a, r3
	anl a, #0x0F
	mov r1, a
	mov dptr, #_int2bcd_4
	movc a, @a+dptr
	add a, r5
	da a
	mov r5, a
	mov a, r1
	orl a, #16
	movc a, @a+dptr
	addc a, r6
	da a
	mov r6, a
	mov a, r1
	orl a, #32
	movc a, @a+dptr
	addc a, r7
	da a
	mov r7, a
	clr a
	addc a, #0
	mov r2, a
	mov a, r3
	swap a
	anl a, #0x0F
	mov r1, a
	mov dptr, #_int2bcd_5
	movc a, @a+dptr
	add a, r5
	da a
	mov r5, a
	mov a, r1
	orl a, #16
	movc a, @a+dptr
	addc a, r6
	da a
	mov r6, a
	mov a, r1
	orl a, #32
	movc a, @a+dptr
	addc a, r7
	da a
	mov r7, a
	mov a, r1
	orl a, #48
	movc a, @a+dptr
	addc a, r2
	da a
	mov r2, a
	mov a, r4
	anl a, #0x0F
	mov r1, a
	mov dptr, #_int2bcd_6
	mov r3, #0
	lcall printf_bcd_add10
	mov a, r4
	swap a
	anl a, #0x0F
	mov r1, a
	mov dptr, #_int2bcd_7
	printf_bcd_add10:
	movc a, @a+dptr
	add a, r5
	da a
	mov r5, a
	mov a, r1
	orl a, #16
	movc a, @a+dptr
	addc a, r6
	da a
	mov r6, a
	mov a, r1
	orl a, #32
	movc a, @a+dptr
	addc a, r7
	da a
	mov r7, a
	mov a, r1
	orl a, #48
	movc a, @a+dptr
	addc a, r2
	da a
	mov r2, a
	mov a, r1
	orl a, #64
	movc a, @a+dptr
	addc a, r3
	da a
	mov r3, a
	ret
	printf_space_loop:
	mov a, #32
	jnb _leading_zero_flag, printf_space_output
	mov a, #48
	printf_space_output:
	lcall printf_putchar
	dec _field_width
	printf_space:
	mov a, _field_width
	jnz printf_space_loop
	ret
	printf_phex_msn:
	swap a
	printf_phex_lsn:
	anl a, #15
	jnz printf_phex_ok
	jnb _print_zero_flag, printf_ret
	printf_phex_ok:
	setb _print_zero_flag
	add a, #0x90
	da a
	addc a, #0x40
	da a
	printf_putchar:
	push dph
	push dpl
	push ar0
	mov dpl, a
	lcall _putchar
	pop ar0
	pop dpl
	pop dph
	printf_ret:
	ret
	printf_zero:
	jb _print_zero_flag, printf_ret
	mov a, #48
	ljmp printf_putchar
	printf_end:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_int2bcd_2:
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x12	; 18
	.db #0x68	; 104	'h'
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x36	; 54	'6'
	.db #0x92	; 146
	.db #0x48	; 72	'H'
	.db #0x04	; 4
	.db #0x60	; 96
	.db #0x16	; 22
	.db #0x72	; 114	'r'
	.db #0x28	; 40
	.db #0x84	; 132
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x20	; 32
	.db #0x23	; 35
	.db #0x25	; 37
	.db #0x28	; 40
	.db #0x30	; 48	'0'
	.db #0x33	; 51	'3'
	.db #0x35	; 53	'5'
	.db #0x38	; 56	'8'
_int2bcd_3:
	.db #0x00	; 0
	.db #0x96	; 150
	.db #0x92	; 146
	.db #0x88	; 136
	.db #0x84	; 132
	.db #0x80	; 128
	.db #0x76	; 118	'v'
	.db #0x72	; 114	'r'
	.db #0x68	; 104	'h'
	.db #0x64	; 100	'd'
	.db #0x60	; 96
	.db #0x56	; 86	'V'
	.db #0x52	; 82	'R'
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x81	; 129
	.db #0x22	; 34
	.db #0x63	; 99	'c'
	.db #0x04	; 4
	.db #0x45	; 69	'E'
	.db #0x86	; 134
	.db #0x27	; 39
	.db #0x68	; 104	'h'
	.db #0x09	; 9
	.db #0x50	; 80	'P'
	.db #0x91	; 145
	.db #0x32	; 50	'2'
	.db #0x73	; 115	's'
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x06	; 6
_int2bcd_4:
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x72	; 114	'r'
	.db #0x08	; 8
	.db #0x44	; 68	'D'
	.db #0x80	; 128
	.db #0x16	; 22
	.db #0x52	; 82	'R'
	.db #0x88	; 136
	.db #0x24	; 36
	.db #0x60	; 96
	.db #0x96	; 150
	.db #0x32	; 50	'2'
	.db #0x68	; 104	'h'
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x10	; 16
	.db #0x66	; 102	'f'
	.db #0x21	; 33
	.db #0x76	; 118	'v'
	.db #0x32	; 50	'2'
	.db #0x87	; 135
	.db #0x42	; 66	'B'
	.db #0x98	; 152
	.db #0x53	; 83	'S'
	.db #0x08	; 8
	.db #0x64	; 100	'd'
	.db #0x19	; 25
	.db #0x75	; 117	'u'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x13	; 19
	.db #0x19	; 25
	.db #0x26	; 38
	.db #0x32	; 50	'2'
	.db #0x39	; 57	'9'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x58	; 88	'X'
	.db #0x65	; 101	'e'
	.db #0x72	; 114	'r'
	.db #0x78	; 120	'x'
	.db #0x85	; 133
	.db #0x91	; 145
	.db #0x98	; 152
_int2bcd_5:
	.db #0x00	; 0
	.db #0x76	; 118	'v'
	.db #0x52	; 82	'R'
	.db #0x28	; 40
	.db #0x04	; 4
	.db #0x80	; 128
	.db #0x56	; 86	'V'
	.db #0x32	; 50	'2'
	.db #0x08	; 8
	.db #0x84	; 132
	.db #0x60	; 96
	.db #0x36	; 54	'6'
	.db #0x12	; 18
	.db #0x88	; 136
	.db #0x64	; 100	'd'
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x85	; 133
	.db #0x71	; 113	'q'
	.db #0x57	; 87	'W'
	.db #0x43	; 67	'C'
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x86	; 134
	.db #0x71	; 113	'q'
	.db #0x57	; 87	'W'
	.db #0x43	; 67	'C'
	.db #0x29	; 41
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x86	; 134
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x14	; 20
	.db #0x19	; 25
	.db #0x24	; 36
	.db #0x29	; 41
	.db #0x34	; 52	'4'
	.db #0x38	; 56	'8'
	.db #0x43	; 67	'C'
	.db #0x48	; 72	'H'
	.db #0x53	; 83	'S'
	.db #0x58	; 88	'X'
	.db #0x63	; 99	'c'
	.db #0x68	; 104	'h'
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
_int2bcd_6:
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x32	; 50	'2'
	.db #0x48	; 72	'H'
	.db #0x64	; 100	'd'
	.db #0x80	; 128
	.db #0x96	; 150
	.db #0x12	; 18
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x60	; 96
	.db #0x76	; 118	'v'
	.db #0x92	; 146
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x44	; 68	'D'
	.db #0x16	; 22
	.db #0x88	; 136
	.db #0x60	; 96
	.db #0x32	; 50	'2'
	.db #0x05	; 5
	.db #0x77	; 119	'w'
	.db #0x49	; 73	'I'
	.db #0x21	; 33
	.db #0x93	; 147
	.db #0x65	; 101	'e'
	.db #0x38	; 56	'8'
	.db #0x10	; 16
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x77	; 119	'w'
	.db #0x55	; 85	'U'
	.db #0x33	; 51	'3'
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x66	; 102	'f'
	.db #0x44	; 68	'D'
	.db #0x21	; 33
	.db #0x99	; 153
	.db #0x77	; 119	'w'
	.db #0x54	; 84	'T'
	.db #0x32	; 50	'2'
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x33	; 51	'3'
	.db #0x50	; 80	'P'
	.db #0x67	; 103	'g'
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x17	; 23
	.db #0x34	; 52	'4'
	.db #0x50	; 80	'P'
	.db #0x67	; 103	'g'
	.db #0x84	; 132
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x34	; 52	'4'
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
_int2bcd_7:
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x12	; 18
	.db #0x68	; 104	'h'
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x36	; 54	'6'
	.db #0x92	; 146
	.db #0x48	; 72	'H'
	.db #0x04	; 4
	.db #0x60	; 96
	.db #0x16	; 22
	.db #0x72	; 114	'r'
	.db #0x28	; 40
	.db #0x84	; 132
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x09	; 9
	.db #0x63	; 99	'c'
	.db #0x18	; 24
	.db #0x72	; 114	'r'
	.db #0x27	; 39
	.db #0x81	; 129
	.db #0x36	; 54	'6'
	.db #0x91	; 145
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x09	; 9
	.db #0x63	; 99	'c'
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x74	; 116	't'
	.db #0x17	; 23
	.db #0x61	; 97	'a'
	.db #0x04	; 4
	.db #0x48	; 72	'H'
	.db #0x91	; 145
	.db #0x35	; 53	'5'
	.db #0x79	; 121	'y'
	.db #0x22	; 34
	.db #0x66	; 102	'f'
	.db #0x09	; 9
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x68	; 104	'h'
	.db #0x36	; 54	'6'
	.db #0x05	; 5
	.db #0x73	; 115	's'
	.db #0x42	; 66	'B'
	.db #0x10	; 16
	.db #0x79	; 121	'y'
	.db #0x47	; 71	'G'
	.db #0x15	; 21
	.db #0x84	; 132
	.db #0x52	; 82	'R'
	.db #0x21	; 33
	.db #0x89	; 137
	.db #0x58	; 88	'X'
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x13	; 19
	.db #0x16	; 22
	.db #0x18	; 24
	.db #0x21	; 33
	.db #0x24	; 36
	.db #0x26	; 38
	.db #0x29	; 41
	.db #0x32	; 50	'2'
	.db #0x34	; 52	'4'
	.db #0x37	; 55	'7'
	.db #0x40	; 64
_frac2bcd:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x12	; 18
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x56	; 86	'V'
	.db #0x01	; 1
	.db #0x50	; 80	'P'
	.db #0x12	; 18
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x06	; 6
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x53	; 83	'S'
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x76	; 118	'v'
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x88	; 136
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x44	; 68	'D'
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x91	; 145
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x95	; 149
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_float_range_table:
	.byte #0x7D,#0xC5	; 50557
	.byte #0xDD,#0xC3	; 50141
	.byte #0x34,#0xC2	; 49716
	.byte #0xE0,#0xBE	; 48864
	.byte #0x38,#0xBD	; 48440
	.byte #0x86,#0xBB	; 48006
	.byte #0xE4,#0xB9	; 47588
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
