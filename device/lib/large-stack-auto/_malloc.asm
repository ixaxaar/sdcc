;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8898 (Nov 27 2013) (Linux)
; This file was generated Wed Nov 27 12:28:11 2013
;--------------------------------------------------------
	.module _malloc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_first_memheader
	.globl _malloc
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
__sdcc_first_memheader::
	.ds 2
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
;Allocation info for local variables in function 'init_dynamic_memory'
;------------------------------------------------------------
;heap                      Allocated to registers r6 r7 
;size                      Allocated to registers r4 r5 
;------------------------------------------------------------
;	_malloc.c:166: static void init_dynamic_memory(void)
;	-----------------------------------------
;	 function init_dynamic_memory
;	-----------------------------------------
_init_dynamic_memory:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	_malloc.c:168: char __xdata * heap = (char __xdata *)_sdcc_heap;
	mov	r6,#__sdcc_heap
	mov	r7,#(__sdcc_heap >> 8)
;	_malloc.c:169: unsigned int size = _sdcc_heap_size;
	mov	dptr,#__sdcc_heap_size
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
;	_malloc.c:171: if ( !heap ) //Reserved memory starts at 0x0000 but that's NULL...
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	_malloc.c:173: heap++;
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
00109$:
;	_malloc.c:174: size--;
	dec	r4
	cjne	r4,#0xFF,00110$
	dec	r5
00110$:
00102$:
;	_malloc.c:176: _sdcc_first_memheader = (MEMHEADER __xdata * ) heap;
	mov	ar2,r6
	mov	ar3,r7
	mov	dptr,#__sdcc_first_memheader
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	_malloc.c:178: _sdcc_first_memheader->next = (MEMHEADER __xdata * )(heap + size - sizeof(MEMHEADER __xdata *));
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	a,r6
	add	a,#0xFE
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_malloc.c:179: _sdcc_first_memheader->next->next = (MEMHEADER __xdata * ) NULL; //And mark it as last
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_malloc.c:180: _sdcc_first_memheader->len        = 0;    //Empty and ready.
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'malloc'
;------------------------------------------------------------
;size                      Allocated to stack - _bp +1
;current_header            Allocated to stack - _bp +3
;new_header                Allocated to registers r2 r3 
;ret                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	_malloc.c:183: void __xdata * malloc (unsigned int size)
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
_malloc:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	inc	sp
	inc	sp
;	_malloc.c:189: if (size>(0xFFFF-HEADER_SIZE))
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,#0xFB
	subb	a,@r0
	mov	a,#0xFF
	inc	r0
	subb	a,@r0
	jnc	00102$
;	_malloc.c:190: return (void __xdata *) NULL; //To prevent overflow in next line
	mov	dptr,#0x0000
	ljmp	00117$
00102$:
;	_malloc.c:191: size += HEADER_SIZE; //We need a memory for header too
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	_malloc.c:193: if (!_sdcc_first_memheader)
	mov	dptr,#__sdcc_first_memheader
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	00104$
;	_malloc.c:194: init_dynamic_memory();
	lcall	_init_dynamic_memory
00104$:
;	_malloc.c:196: current_header = _sdcc_first_memheader;
	mov	dptr,#__sdcc_first_memheader
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	_malloc.c:238: }
	setb	c
	jbc	ea,00142$
	clr	c
00142$:
	push	psw
;	_malloc.c:199: while (1)
00110$:
;	_malloc.c:209: if ((((unsigned int)current_header->next) -
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar6,r2
	mov	ar7,r3
;	_malloc.c:210: ((unsigned int)current_header) -
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
;	_malloc.c:211: current_header->len) >= size)
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jc	00106$
;	_malloc.c:213: ret = current_header->mem;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
;	_malloc.c:214: break;
	sjmp	00111$
00106$:
;	_malloc.c:216: current_header = current_header->next;    //else try next
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	_malloc.c:217: if (!current_header->next)
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
;	_malloc.c:219: ret = (void __xdata *) NULL;
	jnz	00110$
	mov	r6,a
	mov	r7,a
;	_malloc.c:220: break;
00111$:
;	_malloc.c:223: if (ret)
	mov	a,r6
	orl	a,r7
	jnz	00145$
	ljmp	00116$
00145$:
;	_malloc.c:225: if (!current_header->len)
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	00113$
;	_malloc.c:227: current_header->len = size; //for first allocation
	mov	dpl,r4
	mov	dph,r5
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	sjmp	00116$
00113$:
;	_malloc.c:231: new_header = (MEMHEADER __xdata * )((char __xdata *)current_header + current_header->len);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,r2
	add	a,r4
	mov	r2,a
	mov	a,r3
	addc	a,r5
	mov	r3,a
;	_malloc.c:232: new_header->next = current_header->next; //and plug it into the chain
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	_malloc.c:233: current_header->next  = new_header;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	_malloc.c:234: new_header->len  = size; //mark as used
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	_malloc.c:235: ret = new_header->mem;
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar6,r2
	mov	ar7,r3
00116$:
	pop	psw
	mov	ea,c
;	_malloc.c:239: return ret;
	mov	dpl,r6
	mov	dph,r7
00117$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit___sdcc_first_memheader:
	.byte #0x00,#0x00
	.area CABS    (ABS,CODE)
