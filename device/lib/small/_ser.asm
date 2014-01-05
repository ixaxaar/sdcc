;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:27:51 2013
;--------------------------------------------------------
	.module _ser
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
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
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
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
	.globl _ser_rxBuffer
	.globl _ser_txBuffer
	.globl _ser_rxIndexOut
	.globl _ser_rxIndexIn
	.globl _ser_txIndexOut
	.globl _ser_txIndexIn
	.globl _ser_init
	.globl _ser_interrupt_handler
	.globl _ser_putc
	.globl _ser_getc
	.globl _ser_printString
	.globl _ser_charAvail
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
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
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
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
_ser_txBusy:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_ser_txIndexIn::
	.ds 1
_ser_txIndexOut::
	.ds 1
_ser_rxIndexIn::
	.ds 1
_ser_rxIndexOut::
	.ds 1
_ser_txBuffer::
	.ds 256
_ser_rxBuffer::
	.ds 256
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
;Allocation info for local variables in function 'ser_init'
;------------------------------------------------------------
;	_ser.c:76: ser_init(void)
;	-----------------------------------------
;	 function ser_init
;	-----------------------------------------
_ser_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	_ser.c:78: ES = 0;
	clr	_ES
;	_ser.c:80: ser_txBusy     = 0;
	clr	_ser_txBusy
;	_ser.c:82: ser_txIndexIn  = 0;
	mov	dptr,#_ser_txIndexIn
	clr	a
	movx	@dptr,a
;	_ser.c:83: ser_txIndexOut = 0;
	mov	dptr,#_ser_txIndexOut
	movx	@dptr,a
;	_ser.c:84: ser_rxIndexIn  = 0;
	mov	dptr,#_ser_rxIndexIn
	movx	@dptr,a
;	_ser.c:85: ser_rxIndexOut = 0;
	mov	dptr,#_ser_rxIndexOut
	movx	@dptr,a
;	_ser.c:87: T2CON = 0x30;
	mov	_T2CON,#0x30
;	_ser.c:90: RCAP2H = 0xFF;
	mov	_RCAP2H,#0xFF
;	_ser.c:91: RCAP2L = 0xDD;
	mov	_RCAP2L,#0xDD
;	_ser.c:94: T2CON = 0x34;
	mov	_T2CON,#0x34
;	_ser.c:96: SCON = 0x50;
	mov	_SCON,#0x50
;	_ser.c:98: if (TI) {
;	_ser.c:99: TI = 0;
	jbc	_TI,00113$
	sjmp	00102$
00113$:
00102$:
;	_ser.c:101: if (RI) {
;	_ser.c:102: RI = 0;
	jbc	_RI,00114$
	sjmp	00104$
00114$:
00104$:
;	_ser.c:105: ES=1;  
	setb	_ES
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_interrupt_handler'
;------------------------------------------------------------
;	_ser.c:109: ser_interrupt_handler(void) __interrupt 4 __using 1
;	-----------------------------------------
;	 function ser_interrupt_handler
;	-----------------------------------------
_ser_interrupt_handler:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x08
;	_ser.c:111: ES=0;
	clr	_ES
;	_ser.c:113: if (RI) {
;	_ser.c:114: RI = 0;
	jbc	_RI,00119$
	sjmp	00102$
00119$:
;	_ser.c:115: ser_rxBuffer[ser_rxIndexIn++] = SBUF;
	mov	dptr,#_ser_rxIndexIn
	movx	a,@dptr
	mov	r7,a
	inc	a
	movx	@dptr,a
	mov	a,r7
	add	a,#_ser_rxBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_ser_rxBuffer >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
00102$:
;	_ser.c:118: if (TI) {
;	_ser.c:119: TI = 0;
	jbc	_TI,00120$
	sjmp	00107$
00120$:
;	_ser.c:120: if (ser_txIndexIn == ser_txIndexOut) {
	mov	dptr,#_ser_txIndexIn
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ser_txIndexOut
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00104$
;	_ser.c:121: ser_txBusy = 0;
	clr	_ser_txBusy
	sjmp	00107$
00104$:
;	_ser.c:124: SBUF = ser_txBuffer[ser_txIndexOut++];
	mov	dptr,#_ser_txIndexOut
	mov	a,r6
	inc	a
	movx	@dptr,a
	mov	a,r6
	add	a,#_ser_txBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_ser_txBuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_SBUF,a
00107$:
;	_ser.c:128: ES=1;
	setb	_ES
	pop	psw
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_putc'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	_ser.c:132: ser_putc(unsigned char c)
;	-----------------------------------------
;	 function ser_putc
;	-----------------------------------------
_ser_putc:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	_ser.c:134: ES=0;
	clr	_ES
;	_ser.c:136: if (ser_txBusy) {
	jnb	_ser_txBusy,00102$
;	_ser.c:137: ser_txBuffer[ser_txIndexIn++] = c;
	mov	dptr,#_ser_txIndexIn
	movx	a,@dptr
	mov	r6,a
	inc	a
	movx	@dptr,a
	mov	a,r6
	add	a,#_ser_txBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_ser_txBuffer >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
	sjmp	00103$
00102$:
;	_ser.c:140: ser_txBusy = 1;
	setb	_ser_txBusy
;	_ser.c:141: SBUF = c;
	mov	_SBUF,r7
00103$:
;	_ser.c:144: ES=1;
	setb	_ES
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_getc'
;------------------------------------------------------------
;tmp                       Allocated to registers r7 
;------------------------------------------------------------
;	_ser.c:148: ser_getc(void)
;	-----------------------------------------
;	 function ser_getc
;	-----------------------------------------
_ser_getc:
;	_ser.c:153: if (ser_rxIndexIn != ser_rxIndexOut) {
	mov	dptr,#_ser_rxIndexIn
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ser_rxIndexOut
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00109$
	sjmp	00102$
00109$:
;	_ser.c:154: tmp = ser_rxBuffer[ser_rxIndexOut++];
	mov	dptr,#_ser_rxIndexOut
	mov	a,r6
	inc	a
	movx	@dptr,a
	mov	a,r6
	add	a,#_ser_rxBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_ser_rxBuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	sjmp	00103$
00102$:
;	_ser.c:157: tmp = 0;
	mov	r7,#0x00
00103$:
;	_ser.c:161: return(tmp);
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_printString'
;------------------------------------------------------------
;String                    Allocated to registers 
;------------------------------------------------------------
;	_ser.c:165: ser_printString(char *String)
;	-----------------------------------------
;	 function ser_printString
;	-----------------------------------------
_ser_printString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_ser.c:167: while (*String) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	_ser.c:168: ser_putc(*String++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
00114$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_ser_putc
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_charAvail'
;------------------------------------------------------------
;ret                       Allocated to registers r7 
;------------------------------------------------------------
;	_ser.c:173: ser_charAvail(void)
;	-----------------------------------------
;	 function ser_charAvail
;	-----------------------------------------
_ser_charAvail:
;	_ser.c:175: char ret = 0;
	mov	r7,#0x00
;	_ser.c:177: if (ser_rxIndexIn != ser_rxIndexOut) {
	mov	dptr,#_ser_rxIndexIn
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_ser_rxIndexOut
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar5,00108$
	sjmp	00102$
00108$:
;	_ser.c:178: ret = 1;
	mov	r7,#0x01
00102$:
;	_ser.c:181: return(ret);
	mov	dpl,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
