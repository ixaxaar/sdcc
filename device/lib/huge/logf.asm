;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:59 2013
;--------------------------------------------------------
	.module logf
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
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
_logf_tmp:
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
;Allocation info for local variables in function 'logf'
;------------------------------------------------------------
;x                         Allocated with name '_logf_x_1_42'
;------------------------------------------------------------
;	logf.c:47: float logf(float x)
;	-----------------------------------------
;	 function logf
;	-----------------------------------------
_logf:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	logf.c:200: __endasm;
	lcall fsgetarg
	logf_neg_check:
	jnb psw.1, logf_zero_check
	lcall fs_return_nan
	ljmp logf_exit
	logf_zero_check:
	cjne r4, #0, logf_ok
	setb psw.1
	lcall fs_return_inf
	ljmp logf_exit
	logf_ok:
	push dpl
	mov a, #3
	mov r1, #0
	lcall fs_rshift_a
	clr a
	mov (_logf_tmp + 0), a
	mov (_logf_tmp + 1), a
	mov (_logf_tmp + 2), a
	mov (_logf_tmp + 3), a
	mov dptr, #__fs_natural_log_table
	mov r0, a
	logf_cordic_loop:
	mov ar7, r4
	mov ar6, r3
	mov ar5, r2
	mov b, r1
	mov a, r0
	lcall __fs_cordic_rshift_r765_unsigned
	mov a, r1
	add a, b
	mov a, r2
	addc a, r5
	mov a, r3
	addc a, r6
	mov a, r4
	addc a, r7
	anl a, #0xE0
	jnz logf_cordic_skip
	mov a, r1
	add a, b
	mov r1, a
	mov a, r2
	addc a, r5
	mov r2, a
	mov a, r3
	addc a, r6
	mov r3, a
	mov a, r4
	addc a, r7
	mov r4, a
	clr a
	movc a, @a+dptr
	add a, (_logf_tmp + 0)
	mov (_logf_tmp + 0), a
	mov a, #1
	movc a, @a+dptr
	addc a, (_logf_tmp + 1)
	mov (_logf_tmp + 1), a
	mov a, #2
	movc a, @a+dptr
	addc a, (_logf_tmp + 2)
	mov (_logf_tmp + 2), a
	mov a, #3
	movc a, @a+dptr
	addc a, (_logf_tmp + 3)
	mov (_logf_tmp + 3), a
	logf_cordic_skip:
	inc dptr
	inc dptr
	inc dptr
	inc dptr
	inc r0
	cjne r0, #30, logf_cordic_loop
	mov r4, (_logf_tmp + 3)
	mov r3, (_logf_tmp + 2)
	mov r2, (_logf_tmp + 1)
	mov r1, (_logf_tmp + 0)
	mov dpl, #129
	setb psw.1
	lcall fs_normalize_a
	pop acc
	cjne a, #126, logf_exponent
	lcall fs_zerocheck_return
	sjmp logf_exit
	logf_exponent:
	jc logf_exp_neg
	logf_exp_pos:
	add a, #130
	clr psw.5
	sjmp logf_exp_scale
	logf_exp_neg:
	cpl a
	add a, #127
	setb psw.5
	logf_exp_scale:
	mov r0, a
	lcall fs_swap_a_b
	mov a, #0x18
	mov b, r0
	mul ab
	mov r1, a
	mov r2, b
	mov a, #0xB1
	mov b, r0
	mul ab
	mov r3, a
	mov r4, b
	mov a, #0x72
	mov b, r0
	mul ab
	add a, r2
	mov r2, a
	mov a, b
	addc a, r3
	mov r3, a
	clr a
	addc a, r4
	mov r4, a
	mov dpl, #134
	lcall fs_normalize_a
	lcall fsadd_direct_entry
	logf_exit:
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
