;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:03 2013
;--------------------------------------------------------
	.module _fscmp
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
;	_fscmp.c:36: static void dummy(void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	naked function: no prologue.
;	_fscmp.c:99: __endasm;
	.globl fs_compare_uint32
	fs_compare_uint32:
	mov r1, #1
	mov r2, dpl
	mov a, @r0
	mov dpl, r7
	cjne a, dpl, compare32_done
	dec r0
	mov a, @r0
	cjne a, b, compare32_done
	dec r0
	mov a, @r0
	cjne a, dph, compare32_done
	dec r0
	mov a, @r0
	mov dpl, r2
	cjne a, dpl, compare32_done
	mov r1, #0
	compare32_done:
	ret
	.globl fs_check_negative_zeros
	fs_check_negative_zeros:
	a_check:
	cjne a, #0x80, a_not_neg_zero
	mov a, b
	jnz a_not_neg_zero_cleanup
	mov a, dph
	jnz a_not_neg_zero_cleanup
	mov a, dpl
	jnz a_not_neg_zero_cleanup
	mov r7, #0
	a_not_neg_zero_cleanup:
	mov a, r7
	a_not_neg_zero:
	b_check:
	cjne @r0, #0x80, b_not_neg_zero
	dec r0
	cjne @r0, #0, b_not_neg_zero_cleanup_1
	dec r0
	cjne @r0, #0, b_not_neg_zero_cleanup_2
	dec r0
	cjne @r0, #0, b_not_neg_zero_cleanup_3
	inc r0
	inc r0
	inc r0
	mov @r0, #0
	ret
	b_not_neg_zero_cleanup_3:
	inc r0
	b_not_neg_zero_cleanup_2:
	inc r0
	b_not_neg_zero_cleanup_1:
	inc r0
	b_not_neg_zero:
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
