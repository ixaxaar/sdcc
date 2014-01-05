;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:02 2013
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;Allocation info for local variables in function 'dummy'
;------------------------------------------------------------
;	_fsadd.c:38: static void dummy(void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	naked function: no prologue.
;	_fsadd.c:142: __endasm;
	.globl ___fsadd
	___fsadd:
	lcall fsgetargs
	.globl fsadd_direct_entry
	fsadd_direct_entry:
	mov r1, #0
	mov a, dph
	cjne a, dpl, 00005$
	sjmp 00011$
	00005$:
	jnc 00010$
	lcall fs_swap_a_b
	00010$:
	mov a, dph
	clr c
	subb a, dpl
	lcall fs_rshift_a
	00011$:
	mov a, psw
	swap a
	xrl a, psw
	jb acc.1, 00022$
	00020$:
	mov a, r2
	add a, r5
	mov r2, a
	mov a, r3
	addc a, r6
	mov r3, a
	mov a, r4
	addc a, r7
	mov r4, a
	jnc 00021$
	mov a, #1
	lcall fs_rshift_a
	mov a, r4
	orl a, #0x80
	mov r4, a
	00021$:
	ljmp fs_round_and_return
	00022$:
	clr c
	mov a, r2
	subb a, r5
	mov r2, a
	mov a, r3
	subb a, r6
	mov r3, a
	mov a, r4
	subb a, r7
	mov r4, a
	jnc 00025$
	clr c
	clr a
	subb a, r1
	mov r1, a
	clr a
	subb a, r2
	mov r2, a
	clr a
	subb a, r3
	mov r3, a
	clr a
	subb a, r4
	mov r4, a
	cpl psw.1
	00025$:
	lcall fs_normalize_a
	ljmp fs_round_and_return
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
