;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:57 2013
;--------------------------------------------------------
	.module _memset
	.optsdcc -mmcs51 --model-large
	
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
;	_memset.c:58: static void dummy(void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	naked function: no prologue.
;	_memset.c:180: __endasm;
	.area XSEG (XDATA)
	        _memset_PARM_2::
	.ds 1
	        _memset_PARM_3::
	.ds 2
	.area CSEG (CODE)
	        _memset::
; Assign buf (b holds memspace, no need to touch)
	mov r4,dpl
	mov r5,dph
;
; Assign count
	mov dptr,#_memset_PARM_3
	movx a,@dptr
	mov r6,a
	inc dptr
	movx a,@dptr
	mov r7,a
;
; if (!count) return buf;
; check for count != 0 intermangled with gymnastic
; preparing djnz instructions
	cjne r6,#0x00,COUNT_LSB_NOT_ZERO
; acc holds r7
	jz MEMSET_END
	dec r7
	        COUNT_LSB_NOT_ZERO:
	inc r7
;
; Assign ch
	mov dptr,#_memset_PARM_2
	movx a,@dptr
; acc is precious now
;
; Restore dptr
	mov dpl,r4
	mov dph,r5
; _memset.c do {
	        MEMSET_LOOP:
; _memset.c *p = ch;
	lcall __gptrput
; _memset.c p++;
	inc dptr
; _memset.c } while(--count) ;
	djnz r6,MEMSET_LOOP
	djnz r7,MEMSET_LOOP
;
	        MEMSET_END:
; _memset.c return buf ;
; b was unchanged
	mov dpl,r4
	mov dph,r5
;
	ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
