;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:01 2013
;--------------------------------------------------------
	.module _free
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl __sdcc_prev_memheader
	.globl _free
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
__sdcc_prev_memheader::
	.ds 2
__sdcc_find_memheader_p_1_5:
	.ds 2
__sdcc_find_memheader_cur_header_1_6:
	.ds 2
_free_p_1_8:
	.ds 3
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
;Allocation info for local variables in function '_sdcc_find_memheader'
;------------------------------------------------------------
;p                         Allocated with name '__sdcc_find_memheader_p_1_5'
;pthis                     Allocated with name '__sdcc_find_memheader_pthis_1_6'
;cur_header                Allocated with name '__sdcc_find_memheader_cur_header_1_6'
;------------------------------------------------------------
;	_free.c:129: MEMHEADER __xdata * _sdcc_find_memheader(void __xdata * p)
;	-----------------------------------------
;	 function _sdcc_find_memheader
;	-----------------------------------------
__sdcc_find_memheader:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#__sdcc_find_memheader_p_1_5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_free.c:134: if (!p)
	mov	dptr,#__sdcc_find_memheader_p_1_5
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00102$
;	_free.c:135: return NULL;
	mov	dptr,#0x0000
	sjmp	00107$
00102$:
;	_free.c:136: pthis = (MEMHEADER __xdata *) p;
;	_free.c:137: pthis -= 1; //to start of header
	mov	a,r6
	add	a,#0xFC
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
;	_free.c:138: cur_header = _sdcc_first_memheader;
	mov	dptr,#__sdcc_first_memheader
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__sdcc_find_memheader_cur_header_1_6
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_free.c:139: _sdcc_prev_memheader = NULL;
	mov	dptr,#__sdcc_prev_memheader
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_free.c:140: while (cur_header && pthis != cur_header)
00104$:
	mov	dptr,#__sdcc_find_memheader_cur_header_1_6
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jz	00106$
	mov	a,r6
	cjne	a,ar4,00123$
	mov	a,r7
	cjne	a,ar5,00123$
	sjmp	00106$
00123$:
;	_free.c:142: _sdcc_prev_memheader = cur_header;
	mov	dptr,#__sdcc_prev_memheader
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_free.c:143: cur_header = cur_header->next;
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__sdcc_find_memheader_cur_header_1_6
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00106$:
;	_free.c:145: return (cur_header);
	mov	dptr,#__sdcc_find_memheader_cur_header_1_6
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
00107$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'free'
;------------------------------------------------------------
;p                         Allocated with name '_free_p_1_8'
;pthis                     Allocated with name '_free_pthis_1_9'
;------------------------------------------------------------
;	_free.c:148: void free (void * p)
;	-----------------------------------------
;	 function free
;	-----------------------------------------
_free:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_free_p_1_8
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_free.c:154: pthis = _sdcc_find_memheader(p);
	mov	dptr,#_free_p_1_8
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	r0,#__sdcc_find_memheader
	mov	r1,#(__sdcc_find_memheader >> 8)
	mov	r2,#(__sdcc_find_memheader >> 16)
	lcall	__sdcc_banked_call
	mov	r6,dpl
	mov	r7,dph
;	_free.c:155: if (pthis) //For allocated pointers only!
	mov	a,r6
	orl	a,r7
	jz	00106$
;	_free.c:157: if (!_sdcc_prev_memheader)
	mov	dptr,#__sdcc_prev_memheader
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	00102$
;	_free.c:159: pthis->len = 0;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00106$
00102$:
;	_free.c:163: _sdcc_prev_memheader->next = pthis->next;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00106$:
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
