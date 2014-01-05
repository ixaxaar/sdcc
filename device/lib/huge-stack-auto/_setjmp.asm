;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:15 2013
;--------------------------------------------------------
	.module _setjmp
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
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
;	_setjmp.c:224: static void dummy (void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	naked function: no prologue.
;	_setjmp.c:395: __endasm;
;------------------------------------------------------------
;Allocation info for local variables in function 'setjmp'
;------------------------------------------------------------
;buf Allocated to registers dptr b
;------------------------------------------------------------
;../../device/lib/_setjmp.c:122:int __setjmp(unsigned char *buf)
; -----------------------------------------
; function setjmp
; -----------------------------------------
	.globl ___setjmp
	___setjmp:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
; genReceive
;../../device/lib/_setjmp.c:125:*buf = BP;
; genPointerSet
; genGenPointerSet
	mov a,_bp
	lcall __gptrput
	inc dptr
;../../device/lib/_setjmp.c:126:*buf = SP;
; genPointerSet
; genGenPointerSet
	mov a,sp
	lcall __gptrput
	inc dptr
;../../device/lib/_setjmp.c:127:*buf++ = *((unsigned char __data *) SP );
; genCast
	mov r0,sp
; genPointerGet
; genNearPointerGet
	mov a,@r0
; genPointerSet
; genGenPointerSet
	lcall __gptrput
	inc dptr
;../../device/lib/_setjmp.c:128:*buf++ = *((unsigned char __data *)SP - 1);
; genCast
; genMinus
; genMinusDec
	dec r0
; genPointerGet
; genNearPointerGet
	mov a,@r0
; genPointerSet
; genGenPointerSet
	lcall __gptrput
	inc dptr
;../../device/lib/_setjmp.c:129:*buf++ = *((unsigned char __data *)SP - 2);
; genCast
; genMinus
; genMinusDec
	dec r0
; genPointerGet
; genNearPointerGet
	mov a,@r0
; genPointerSet
; genGenPointerSet
	lcall __gptrput
;../../device/lib/_setjmp.c:130:return 0;
; genRet
	mov dptr,#0x0000
	ljmp __sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'longjmp'
;------------------------------------------------------------
;rv Allocated to stack - offset -3
;buf Allocated to registers dptr b
;lsp Allocated to registers r5
;------------------------------------------------------------
;../../device/lib/_setjmp.c:28:int longjmp (jmp_buf buf, int rv)
; -----------------------------------------
; function longjmp
; -----------------------------------------
	.globl _longjmp
	_longjmp:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
; genReceive
	mov r0,sp
	dec r0
	dec r0
	dec r0
	mov ar2,@r0
	dec r0
	mov ar3,@r0
;../../device/lib/_setjmp.c:30:bp = *buf++;
; genPointerGet
; genGenPointerGet
	lcall __gptrget
	inc dptr
; genAssign
	mov _bp,a
;../../device/lib/_setjmp.c:31:lsp = *buf++;
; genPointerGet
; genGenPointerGet
	lcall __gptrget
	inc dptr
; genAssign
	mov r5,a
;../../device/lib/_setjmp.c:32:*((unsigned char __data *) lsp) = *buf++;
; genCast
	mov r0,a
; genPointerGet
; genGenPointerGet
	lcall __gptrget
	inc dptr
; genPointerSet
; genNearPointerSet
	mov @r0,a
;../../device/lib/_setjmp.c:33:*((unsigned char __data *) lsp - 1) = *buf;
; genCast
; genMinus
; genMinusDec
	dec r0
; genPointerGet
; genGenPointerGet
	lcall __gptrget
; genPointerSet
; genNearPointerSet
	mov @r0,a
	inc dptr
;../../device/lib/_setjmp.c:34:*((unsigned char __data *) lsp - 2) = *buf;
; genCast
; genMinus
; genMinusDec
	dec r0
; genPointerGet
; genGenPointerGet
	lcall __gptrget
; genPointerSet
; genNearPointerSet
	mov @r0,a
;../../device/lib/_setjmp.c:35:SP = lsp;
; genAssign
	mov sp,r5
;../../device/lib/_setjmp.c:36:return rv ? rv : 1;
; genAssign
	mov dph,r2
	mov dpl,r3
	mov a,r2
	orl a,r3
	jnz 00001$
	mov dpl,#0x01
; genRet
	00001$:
	ljmp __sdcc_banked_ret
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
