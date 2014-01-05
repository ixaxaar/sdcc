;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:59 2013
;--------------------------------------------------------
	.module expf
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _expf
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
_expf_y:
	.ds 4
_n:
	.ds 1
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
_sign_bit:
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
;Allocation info for local variables in function 'expf'
;------------------------------------------------------------
;x                         Allocated with name '_expf_x_1_42'
;------------------------------------------------------------
;	expf.c:50: float expf(float x)
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
_expf:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	expf.c:248: __endasm;
	mov c, acc.7
	mov _sign_bit, c
	clr acc.7
	mov r0, a
	mov c, b.7
	rlc a
	add a, #153
	jc expf_not_zero
	mov dptr, #0
	mov b, #0x80
	mov a, #0x3F
	ljmp expf_exit
	expf_not_zero:
	mov _n, #0
	mov a, dpl
	add a, #0xE8
	mov a, dph
	addc a, #0x8D
	mov a, b
	addc a, #0xCE
	mov a, r0
	addc a, #0xC0
	mov a, r0
	jnc expf_no_range_reduction
	expf_range_reduction:
	mov (_expf_y + 0), dpl
	mov (_expf_y + 1), dph
	mov (_expf_y + 2), b
	mov (_expf_y + 3), a
	mov r0, #0x3B
	push ar0
	mov r0, #0xAA
	push ar0
	mov r0, #0xB8
	push ar0
	mov r0, #0x3F
	push ar0
	lcall ___fsmul
	dec sp
	dec sp
	dec sp
	dec sp
	lcall ___fs2uchar
	mov a, dpl
	mov _n, a
	add a, #128
	jnc expf_range_ok
	lcall fs_return_inf
	ljmp expf_exit
	expf_range_ok:
	mov r0,#0x00
	mov r1,#0x80
	mov r2,#0x31
	mov r3,#0xBF
	lcall expf_scale_and_add
	mov (_expf_y + 0), dpl
	mov (_expf_y + 1), dph
	mov (_expf_y + 2), b
	mov (_expf_y + 3), a
	mov r0,#0x83
	mov r1,#0x80
	mov r2,#0x5E
	mov r3,#0x39
	lcall expf_scale_and_add
	expf_no_range_reduction:
	expf_cordic_begin:
	mov c, b.7
	rlc a
	setb b.7
	mov r1, dpl
	mov r2, dph
	mov r3, b
	mov r4, #0
	cjne a, #121, exp_lshift
	sjmp exp_noshift
	exp_lshift:
	jc exp_rshift
	add a, #135
	lcall fs_lshift_a
	sjmp exp_noshift
	exp_rshift:
	cpl a
	add a, #122
	lcall fs_rshift_a
	exp_noshift:
	clr a
	mov (_expf_y + 0), a
	mov (_expf_y + 1), a
	mov (_expf_y + 2), a
	mov (_expf_y + 3), #0x20
	mov dptr, #__fs_natural_log_table
	mov r0, a
	exp_cordic_loop:
	clr a
	movc a, @a+dptr
	mov b, a
	inc dptr
	clr a
	movc a, @a+dptr
	mov r5, a
	inc dptr
	clr a
	movc a, @a+dptr
	mov r6, a
	inc dptr
	clr a
	movc a, @a+dptr
	mov r7, a
	inc dptr
	clr c
	mov a, r1
	subb a, b
	mov a, r2
	subb a, r5
	mov a, r3
	subb a, r6
	mov a, r4
	subb a, r7
	jc exp_cordic_skip
	clr c
	mov a, r1
	subb a, b
	mov r1, a
	mov a, r2
	subb a, r5
	mov r2, a
	mov a, r3
	subb a, r6
	mov r3, a
	mov a, r4
	subb a, r7
	mov r4, a
	mov b, (_expf_y + 0)
	mov r5, (_expf_y + 1)
	mov r6, (_expf_y + 2)
	mov r7, (_expf_y + 3)
	mov a, r0
	lcall __fs_cordic_rshift_r765_unsigned
	mov a, (_expf_y + 0)
	add a, b
	mov (_expf_y + 0), a
	mov a, (_expf_y + 1)
	addc a, r5
	mov (_expf_y + 1), a
	mov a, (_expf_y + 2)
	addc a, r6
	mov (_expf_y + 2), a
	mov a, (_expf_y + 3)
	addc a, r7
	mov (_expf_y + 3), a
	exp_cordic_skip:
	inc r0
	cjne r0, #27, exp_cordic_loop
	mov r4, (_expf_y + 3)
	mov r3, (_expf_y + 2)
	mov r2, (_expf_y + 1)
	mov r1, (_expf_y + 0)
	lcall fs_normalize_a
	mov a, #127
	add a, _n
	mov dpl, a
	lcall fs_round_and_return
	jnb _sign_bit, expf_done
	push dpl
	push dph
	push b
	push acc
	mov dptr, #0
	mov b, #0x80
	mov a, #0x3F
	lcall ___fsdiv
	dec sp
	dec sp
	dec sp
	dec sp
	expf_done:
	clr acc.7
	expf_exit:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dummy1'
;------------------------------------------------------------
;	expf.c:252: static void dummy1(void) __naked
;	-----------------------------------------
;	 function dummy1
;	-----------------------------------------
_dummy1:
;	naked function: no prologue.
;	expf.c:282: __endasm;
	.globl fs_lshift_a
	expf_scale_and_add:
	push ar0
	push ar1
	push ar2
	push ar3
	mov dpl, _n
	lcall ___uchar2fs
	lcall ___fsmul
	dec sp
	dec sp
	dec sp
	dec sp
	push dpl
	push dph
	push b
	push acc
	mov dpl, (_expf_y + 0)
	mov dph, (_expf_y + 1)
	mov b, (_expf_y + 2)
	mov a, (_expf_y + 3)
	lcall ___fsadd
	dec sp
	dec sp
	dec sp
	dec sp
	ret
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'dummy'
;------------------------------------------------------------
;	expf.c:285: static void dummy(void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	naked function: no prologue.
;	expf.c:311: __endasm;
	.globl fs_lshift_a
	fs_lshift_a:
	jz fs_lshift_done
	push ar0
	mov r0, a
	fs_lshift_loop:
	clr c
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
	djnz r0, fs_lshift_loop
	pop ar0
	fs_lshift_done:
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
