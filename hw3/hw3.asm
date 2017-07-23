;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
; This file was generated Tue May 03 11:00:04 2016
;--------------------------------------------------------
	.module hw3
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Main
	.globl _atoi
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
	.globl _displayOnOffControl_PARM_3
	.globl _displayOnOffControl_PARM_2
	.globl _displayOnOffControl_PARM_1
	.globl _entryModeSet
	.globl _setDdRamAddress
	.globl _displayOnOffControl
	.globl _functionSet
	.globl _sendChar
	.globl _delay
	.globl _big_delay
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
_Main_col_1_23:
	.ds 1
_Main_keypad_1_23:
	.ds 12
_Main_i_1_23:
	.ds 1
_Main_gotkey_1_23:
	.ds 1
_Main_num1_1_23:
	.ds 6
_Main_num2_1_23:
	.ds 6
_Main_answer_1_23:
	.ds 6
_Main_j_1_23:
	.ds 2
_Main_flag_1_23:
	.ds 2
_Main_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_displayOnOffControl_PARM_1:
	.ds 1
_displayOnOffControl_PARM_2:
	.ds 1
_displayOnOffControl_PARM_3:
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
;Allocation info for local variables in function 'Main'
;------------------------------------------------------------
;row                       Allocated to registers r3 
;col                       Allocated with name '_Main_col_1_23'
;keypad                    Allocated with name '_Main_keypad_1_23'
;i                         Allocated with name '_Main_i_1_23'
;gotkey                    Allocated with name '_Main_gotkey_1_23'
;num1                      Allocated with name '_Main_num1_1_23'
;num2                      Allocated with name '_Main_num2_1_23'
;answer                    Allocated with name '_Main_answer_1_23'
;j                         Allocated with name '_Main_j_1_23'
;flag                      Allocated with name '_Main_flag_1_23'
;sum                       Allocated to registers r2 r4 
;digit                     Allocated to registers r3 r5 
;sloc0                     Allocated with name '_Main_sloc0_1_0'
;------------------------------------------------------------
;	hw3.c:24: void Main(void) {
;	-----------------------------------------
;	 function Main
;	-----------------------------------------
_Main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	hw3.c:27: unsigned char keypad[4][3] = {   // This array contains the ASCII of the keypad keys
	mov	_Main_keypad_1_23,#0x33
	mov	(_Main_keypad_1_23 + 0x0001),#0x32
	mov	(_Main_keypad_1_23 + 0x0002),#0x31
	mov	(_Main_keypad_1_23 + 0x0003),#0x36
	mov	(_Main_keypad_1_23 + 0x0004),#0x35
	mov	(_Main_keypad_1_23 + 0x0005),#0x34
	mov	(_Main_keypad_1_23 + 0x0006),#0x39
	mov	(_Main_keypad_1_23 + 0x0007),#0x38
	mov	(_Main_keypad_1_23 + 0x0008),#0x37
	mov	(_Main_keypad_1_23 + 0x0009),#0x23
	mov	(_Main_keypad_1_23 + 0x000a),#0x30
	mov	(_Main_keypad_1_23 + 0x000b),#0x2A
;	hw3.c:34: unsigned char gotkey = 0;	
	mov	_Main_gotkey_1_23,#0x00
;	hw3.c:35: unsigned char num1[] = {0,0,0,0,0,0};
	mov	_Main_num1_1_23,#0x00
	mov	(_Main_num1_1_23 + 0x0001),#0x00
	mov	(_Main_num1_1_23 + 0x0002),#0x00
	mov	(_Main_num1_1_23 + 0x0003),#0x00
	mov	(_Main_num1_1_23 + 0x0004),#0x00
	mov	(_Main_num1_1_23 + 0x0005),#0x00
;	hw3.c:36: unsigned char num2[] = {0,0,0,0,0,0}; 
	mov	_Main_num2_1_23,#0x00
	mov	(_Main_num2_1_23 + 0x0001),#0x00
	mov	(_Main_num2_1_23 + 0x0002),#0x00
	mov	(_Main_num2_1_23 + 0x0003),#0x00
	mov	(_Main_num2_1_23 + 0x0004),#0x00
	mov	(_Main_num2_1_23 + 0x0005),#0x00
;	hw3.c:37: unsigned char answer[] = {0,0,0,0,0,0}; 
	mov	_Main_answer_1_23,#0x00
	mov	(_Main_answer_1_23 + 0x0001),#0x00
;	hw3.c:38: int j = 0;
	clr	a
	mov	(_Main_answer_1_23 + 0x0002),a
	mov	(_Main_answer_1_23 + 0x0003),a
	mov	(_Main_answer_1_23 + 0x0004),a
	mov	(_Main_answer_1_23 + 0x0005),a
	mov	_Main_j_1_23,a
	mov	(_Main_j_1_23 + 1),a
;	hw3.c:39: int flag = 0;
	mov	_Main_flag_1_23,a
	mov	(_Main_flag_1_23 + 1),a
;	hw3.c:40: unsigned int sum = 0;
	mov	r2,#0x00
	mov	r4,#0x00
;	hw3.c:44: functionSet();
	push	ar4
	push	ar2
	lcall	_functionSet
;	hw3.c:45: entryModeSet(); // increment and no shift
	lcall	_entryModeSet
	pop	ar2
	pop	ar4
;	hw3.c:46: displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	setb	_displayOnOffControl_PARM_1
	setb	_displayOnOffControl_PARM_2
	setb	_displayOnOffControl_PARM_3
	push	ar4
	push	ar2
	lcall	_displayOnOffControl
	pop	ar2
	pop	ar4
;	hw3.c:48: while (1) {
00118$:
;	hw3.c:50: row = 0xf7;  // The first row (connected to P0.3) will be zero
	mov	r3,#0xF7
;	hw3.c:52: for (i=0;i<4;++i){ // loop over the 4 rows
	mov	r6,#0x00
;	1-genFromRTrack replaced	mov	_Main_i_1_23,#0x00
	mov	_Main_i_1_23,r6
00129$:
;	hw3.c:54: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
	mov	_P0,#0xFF
;	hw3.c:55: P0 = P0 & row; // clear one row at a time
	mov	a,r3
	anl	_P0,a
;	hw3.c:56: col = P0 & 0x70;  // Read the 3 columns
	mov	a,#0x70
	anl	a,_P0
	mov	_Main_col_1_23,a
;	hw3.c:58: if (col != 0x70){ // If any column is zero i.e. a key is pressed
	mov	a,#0x70
	cjne	a,_Main_col_1_23,00173$
	ljmp	00113$
00173$:
;	hw3.c:59: col = (~col) & 0x70;  // because the selected column returns zero
	mov	a,_Main_col_1_23
	cpl	a
	mov	r5,a
	mov	a,#0x70
	anl	a,r5
;	hw3.c:60: col = col >> 5;       // The column variable now contain the number of the selected column
	mov	_Main_col_1_23,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	_Main_col_1_23,a
;	hw3.c:61: gotkey = keypad[i][col]; // Get the ASCII of the corresponding pressed key
	mov	a,r6
	mov	b,#0x03
	mul	ab
	add	a,#_Main_keypad_1_23
	add	a,_Main_col_1_23
	mov	r1,a
	mov	_Main_gotkey_1_23,@r1
;	hw3.c:62: big_delay();
	push	ar4
	push	ar2
	lcall	_big_delay
	pop	ar2
	pop	ar4
;	hw3.c:63: if (gotkey == '#'){
	mov	a,#0x23
	cjne	a,_Main_gotkey_1_23,00110$
;	hw3.c:64: sendChar('=');
	mov	dpl,#0x3D
	lcall	_sendChar
;	hw3.c:65: sum = atoi(num1) +  atoi(num2);
	mov	dptr,#_Main_num1_1_23
	mov	b,#0x40
	lcall	_atoi
	mov	_Main_sloc0_1_0,dpl
	mov	(_Main_sloc0_1_0 + 1),dph
	mov	dptr,#_Main_num2_1_23
	mov	b,#0x40
	lcall	_atoi
	mov	r5,dpl
	mov	r7,dph
	mov	a,r5
	add	a,_Main_sloc0_1_0
	mov	r2,a
	mov	a,r7
	addc	a,(_Main_sloc0_1_0 + 1)
	mov	r4,a
;	hw3.c:66: j = 0;
	clr	a
	mov	_Main_j_1_23,a
	mov	(_Main_j_1_23 + 1),a
	sjmp	00114$
00110$:
;	hw3.c:68: else if (gotkey == '*'){
	mov	a,#0x2A
	cjne	a,_Main_gotkey_1_23,00107$
;	hw3.c:69: sendChar('+');
	mov	dpl,#0x2B
	push	ar4
	push	ar2
	lcall	_sendChar
	pop	ar2
	pop	ar4
;	hw3.c:70: flag = 1;
	mov	_Main_flag_1_23,#0x01
;	hw3.c:71: j = 0;
	clr	a
	mov	(_Main_flag_1_23 + 1),a
	mov	_Main_j_1_23,a
	mov	(_Main_j_1_23 + 1),a
	sjmp	00114$
00107$:
;	hw3.c:74: if (flag == 0){
	mov	a,_Main_flag_1_23
	orl	a,(_Main_flag_1_23 + 1)
	jnz	00104$
;	hw3.c:75: num1[j] = gotkey;
	mov	a,_Main_j_1_23
	add	a,#_Main_num1_1_23
	mov	r0,a
	mov	@r0,_Main_gotkey_1_23
;	hw3.c:76: j++;
	inc	_Main_j_1_23
	clr	a
	cjne	a,_Main_j_1_23,00105$
	inc	(_Main_j_1_23 + 1)
	sjmp	00105$
00104$:
;	hw3.c:78: else if (flag == 1){
	mov	a,#0x01
	cjne	a,_Main_flag_1_23,00180$
	clr	a
	cjne	a,(_Main_flag_1_23 + 1),00180$
	sjmp	00181$
00180$:
	sjmp	00105$
00181$:
;	hw3.c:79: num2[j] = gotkey;
	mov	a,_Main_j_1_23
	add	a,#_Main_num2_1_23
	mov	r0,a
	mov	@r0,_Main_gotkey_1_23
;	hw3.c:80: j++;
	inc	_Main_j_1_23
	clr	a
	cjne	a,_Main_j_1_23,00182$
	inc	(_Main_j_1_23 + 1)
00182$:
00105$:
;	hw3.c:82: sendChar(gotkey);
	mov	dpl,_Main_gotkey_1_23
	push	ar4
	push	ar2
	lcall	_sendChar
	pop	ar2
	pop	ar4
;	hw3.c:84: break;  // Since a key was detected -> Exit the for loop
	sjmp	00114$
00113$:
;	hw3.c:87: row = row >> 1;   // No key is detected yet, try the next row
	mov	a,r3
	clr	c
	rrc	a
	mov	r3,a
;	hw3.c:88: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
	orl	ar3,#0xF0
;	hw3.c:52: for (i=0;i<4;++i){ // loop over the 4 rows
	inc	_Main_i_1_23
	mov	r6,_Main_i_1_23
	mov	a,#0x100 - 0x04
	add	a,_Main_i_1_23
	jc	00183$
	ljmp	00129$
00183$:
00114$:
;	hw3.c:92: if (gotkey == '#'){break;}  // Since an '=' was detected -> exit the while loop
	mov	a,#0x23
	cjne	a,_Main_gotkey_1_23,00184$
	sjmp	00185$
00184$:
	ljmp	00118$
00185$:
;	hw3.c:96: while (sum != 0){
	mov	r6,_Main_j_1_23
	mov	r7,(_Main_j_1_23 + 1)
00120$:
	mov	a,r2
	orl	a,r4
	jz	00122$
;	hw3.c:97: digit = sum % 10;
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r2
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar4
	push	ar2
	lcall	__moduint
	mov	r3,dpl
	mov	r5,dph
	pop	ar2
	pop	ar4
;	hw3.c:98: sum = sum / 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r2
	mov	dph,r4
	push	ar5
	push	ar3
	lcall	__divuint
	mov	r2,dpl
	mov	r4,dph
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	hw3.c:99: digit = digit + 48;
	mov	a,#0x30
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r5,a
;	hw3.c:100: answer[j] = digit;
	mov	a,r6
	add	a,#_Main_answer_1_23
	mov	r1,a
	mov	@r1,ar3
;	hw3.c:101: j++;
	inc	r6
	cjne	r6,#0x00,00120$
	inc	r7
	sjmp	00120$
00122$:
;	hw3.c:104: setDdRamAddress(0x40); // set address to start of second line
	mov	dpl,#0x40
	push	ar7
	push	ar6
	lcall	_setDdRamAddress
	pop	ar6
	pop	ar7
;	hw3.c:106: while (j >= 0){
00123$:
	mov	a,r7
	jb	acc.7,00127$
;	hw3.c:107: j--;
	dec	r6
	cjne	r6,#0xFF,00189$
	dec	r7
00189$:
;	hw3.c:108: sendChar (answer[j]);
	mov	a,r6
	add	a,#_Main_answer_1_23
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	push	ar6
	lcall	_sendChar
	pop	ar6
	pop	ar7
;	hw3.c:111: while(1){}
	sjmp	00123$
00127$:
	sjmp	00127$
;------------------------------------------------------------
;Allocation info for local variables in function 'entryModeSet'
;------------------------------------------------------------
;	hw3.c:118: void entryModeSet() {
;	-----------------------------------------
;	 function entryModeSet
;	-----------------------------------------
_entryModeSet:
;	hw3.c:119: RS = 0;
	clr	_P3_3
;	hw3.c:120: P1 = 0x06;  
	mov	_P1,#0x06
;	hw3.c:121: E = 1;
	setb	_P3_2
;	hw3.c:122: E = 0;
	clr	_P3_2
;	hw3.c:123: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDdRamAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	hw3.c:126: void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
;	-----------------------------------------
;	 function setDdRamAddress
;	-----------------------------------------
_setDdRamAddress:
	mov	r7,dpl
;	hw3.c:127: RS = 0;
	clr	_P3_3
;	hw3.c:128: P1 = address | 0x80;  // set the MSB to detect that this is an address
	mov	a,#0x80
	orl	a,r7
	mov	_P1,a
;	hw3.c:129: E = 1;
	setb	_P3_2
;	hw3.c:130: E = 0;
	clr	_P3_2
;	hw3.c:131: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'displayOnOffControl'
;------------------------------------------------------------
;	hw3.c:134: void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
;	-----------------------------------------
;	 function displayOnOffControl
;	-----------------------------------------
_displayOnOffControl:
;	hw3.c:135: P1_7 = 0;
	clr	_P1_7
;	hw3.c:136: P1_6 = 0;
	clr	_P1_6
;	hw3.c:137: P1_5 = 0;
	clr	_P1_5
;	hw3.c:138: P1_4 = 0;
	clr	_P1_4
;	hw3.c:139: P1_3 = 1;
	setb	_P1_3
;	hw3.c:140: P1_2 = display;
	mov	c,_displayOnOffControl_PARM_1
	mov	_P1_2,c
;	hw3.c:141: P1_1 = cursor;
	mov	c,_displayOnOffControl_PARM_2
	mov	_P1_1,c
;	hw3.c:142: P1_0 = blinking;
	mov	c,_displayOnOffControl_PARM_3
	mov	_P1_0,c
;	hw3.c:143: E = 1;
	setb	_P3_2
;	hw3.c:144: E = 0;
	clr	_P3_2
;	hw3.c:145: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'functionSet'
;------------------------------------------------------------
;	hw3.c:148: void functionSet(void) {
;	-----------------------------------------
;	 function functionSet
;	-----------------------------------------
_functionSet:
;	hw3.c:149: RS = 0;
	clr	_P3_3
;	hw3.c:150: P1 = 0x38; // 8-bit mode, 2 lines LCD
	mov	_P1,#0x38
;	hw3.c:151: E = 1;
	setb	_P3_2
;	hw3.c:152: E = 0;
	clr	_P3_2
;	hw3.c:153: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw3.c:156: void sendChar(char c) {  // Function to send one character to be displayed on the LCD
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	r7,dpl
;	hw3.c:157: RS = 1;
	setb	_P3_3
;	hw3.c:158: P1 = c;
	mov	_P1,r7
;	hw3.c:159: E = 1;
	setb	_P3_2
;	hw3.c:160: E = 0;
	clr	_P3_2
;	hw3.c:161: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw3.c:164: void delay(void) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	hw3.c:166: for (c = 0; c < 50; c++);
	mov	r7,#0x32
00104$:
	mov	a,r7
	dec	a
	mov	r6,a
	mov	r7,a
	jnz	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'big_delay'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw3.c:169: void big_delay(void) {
;	-----------------------------------------
;	 function big_delay
;	-----------------------------------------
_big_delay:
;	hw3.c:171: for (c = 0; c < 255; c++);
	mov	r7,#0xFF
00104$:
	mov	ar6,r7
	dec	r6
	mov	a,r6
	mov	r7,a
	jnz	00104$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
