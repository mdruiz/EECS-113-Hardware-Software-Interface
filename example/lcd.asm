;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
; This file was generated Sat Apr 30 21:09:58 2016
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Main
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
	.globl _cursorOrDisplayShift_PARM_2
	.globl _cursorOrDisplayShift_PARM_1
	.globl _displayOnOffControl_PARM_3
	.globl _displayOnOffControl_PARM_2
	.globl _displayOnOffControl_PARM_1
	.globl _returnHome
	.globl _entryModeSet
	.globl _displayOnOffControl
	.globl _cursorOrDisplayShift
	.globl _functionSet
	.globl _clearDisplay
	.globl _setDdRamAddress
	.globl _sendChar
	.globl _sendString
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
_cursorOrDisplayShift_PARM_1:
	.ds 1
_cursorOrDisplayShift_PARM_2:
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
;	lcd.c:39: void Main(void) {
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
;	lcd.c:40: functionSet();
	lcall	_functionSet
;	lcd.c:41: entryModeSet(); // increment and no shift
	lcall	_entryModeSet
;	lcd.c:42: displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	setb	_displayOnOffControl_PARM_1
	setb	_displayOnOffControl_PARM_2
	setb	_displayOnOffControl_PARM_3
	lcall	_displayOnOffControl
;	lcd.c:43: sendString("Welcome");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_sendString
;	lcd.c:44: setDdRamAddress(0x40); // set address to start of second line
	mov	dpl,#0x40
	lcall	_setDdRamAddress
;	lcd.c:45: sendString("EECS113 Students");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_sendString
;	lcd.c:47: while (1) {
00113$:
;	lcd.c:48: if (clear == 0) {
	jb	_P2_0,00110$
;	lcd.c:49: clearDisplay();
	lcall	_clearDisplay
	sjmp	00113$
00110$:
;	lcd.c:51: else if (msg1 == 0){
	jb	_P2_1,00107$
;	lcd.c:52: clearDisplay();   // Clear the display and return the cursor to the home position
	lcall	_clearDisplay
;	lcd.c:53: sendString("How are you");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_sendString
;	lcd.c:54: setDdRamAddress(0x44); // set the display to the 5th place of the LCD line 2
	mov	dpl,#0x44
	lcall	_setDdRamAddress
;	lcd.c:55: sendString("today?");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_sendString
;	lcd.c:56: while (msg1 == 0){}  // Stay here till the msg1 switch is released
00101$:
	jb	_P2_1,00113$
	sjmp	00101$
00107$:
;	lcd.c:58: else if (msg2 == 0){
	jb	_P2_2,00113$
;	lcd.c:59: clearDisplay();
	lcall	_clearDisplay
;	lcd.c:60: sendString("Loading . . .");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_sendString
;	lcd.c:61: big_delay();
	lcall	_big_delay
;	lcd.c:62: big_delay();
	lcall	_big_delay
	sjmp	00113$
;------------------------------------------------------------
;Allocation info for local variables in function 'returnHome'
;------------------------------------------------------------
;	lcd.c:70: void returnHome(void) {
;	-----------------------------------------
;	 function returnHome
;	-----------------------------------------
_returnHome:
;	lcd.c:71: RS = 0;
	clr	_P3_3
;	lcd.c:72: P1 = 0x02; // LCD command to return home (the first location of the first lcd line)
	mov	_P1,#0x02
;	lcd.c:73: E = 1;
	setb	_P3_2
;	lcd.c:74: E = 0;
	clr	_P3_2
;	lcd.c:75: big_delay(); // This operation needs a bigger delay
	ljmp	_big_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'entryModeSet'
;------------------------------------------------------------
;	lcd.c:78: void entryModeSet() {
;	-----------------------------------------
;	 function entryModeSet
;	-----------------------------------------
_entryModeSet:
;	lcd.c:79: RS = 0;
	clr	_P3_3
;	lcd.c:80: P1 = 0x06;  
	mov	_P1,#0x06
;	lcd.c:81: E = 1;
	setb	_P3_2
;	lcd.c:82: E = 0;
	clr	_P3_2
;	lcd.c:83: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'displayOnOffControl'
;------------------------------------------------------------
;	lcd.c:86: void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
;	-----------------------------------------
;	 function displayOnOffControl
;	-----------------------------------------
_displayOnOffControl:
;	lcd.c:87: P1_7 = 0;
	clr	_P1_7
;	lcd.c:88: P1_6 = 0;
	clr	_P1_6
;	lcd.c:89: P1_5 = 0;
	clr	_P1_5
;	lcd.c:90: P1_4 = 0;
	clr	_P1_4
;	lcd.c:91: P1_3 = 1;
	setb	_P1_3
;	lcd.c:92: P1_2 = display;
	mov	c,_displayOnOffControl_PARM_1
	mov	_P1_2,c
;	lcd.c:93: P1_1 = cursor;
	mov	c,_displayOnOffControl_PARM_2
	mov	_P1_1,c
;	lcd.c:94: P1_0 = blinking;
	mov	c,_displayOnOffControl_PARM_3
	mov	_P1_0,c
;	lcd.c:95: E = 1;
	setb	_P3_2
;	lcd.c:96: E = 0;
	clr	_P3_2
;	lcd.c:97: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'cursorOrDisplayShift'
;------------------------------------------------------------
;	lcd.c:100: void cursorOrDisplayShift(__bit sc, __bit rl) {
;	-----------------------------------------
;	 function cursorOrDisplayShift
;	-----------------------------------------
_cursorOrDisplayShift:
;	lcd.c:101: RS = 0;
	clr	_P3_3
;	lcd.c:102: P1_7 = 0;
	clr	_P1_7
;	lcd.c:103: P1_6 = 0;
	clr	_P1_6
;	lcd.c:104: P1_5 = 0;
	clr	_P1_5
;	lcd.c:105: P1_4 = 1;
	setb	_P1_4
;	lcd.c:106: P1_3 = sc;
	mov	c,_cursorOrDisplayShift_PARM_1
	mov	_P1_3,c
;	lcd.c:107: P1_2 = rl;
	mov	c,_cursorOrDisplayShift_PARM_2
	mov	_P1_2,c
;	lcd.c:108: P1_1 = 0;
	clr	_P1_1
;	lcd.c:109: P1_0 = 0;
	clr	_P1_0
;	lcd.c:110: E = 1;
	setb	_P3_2
;	lcd.c:111: E = 0;
	clr	_P3_2
;	lcd.c:112: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'functionSet'
;------------------------------------------------------------
;	lcd.c:115: void functionSet(void) {
;	-----------------------------------------
;	 function functionSet
;	-----------------------------------------
_functionSet:
;	lcd.c:116: RS = 0;
	clr	_P3_3
;	lcd.c:117: P1 = 0x38; // 8-bit mode, 2 lines LCD
	mov	_P1,#0x38
;	lcd.c:118: E = 1;
	setb	_P3_2
;	lcd.c:119: E = 0;
	clr	_P3_2
;	lcd.c:120: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'clearDisplay'
;------------------------------------------------------------
;	lcd.c:123: void clearDisplay(void) {
;	-----------------------------------------
;	 function clearDisplay
;	-----------------------------------------
_clearDisplay:
;	lcd.c:124: RS = 0;
	clr	_P3_3
;	lcd.c:125: P1 = 0x01; // command to clear LCD and return the cursor to the home position
	mov	_P1,#0x01
;	lcd.c:126: E = 1;
	setb	_P3_2
;	lcd.c:127: E = 0;
	clr	_P3_2
;	lcd.c:128: big_delay(); // This operation needs a bigger delay
	ljmp	_big_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDdRamAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:131: void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
;	-----------------------------------------
;	 function setDdRamAddress
;	-----------------------------------------
_setDdRamAddress:
	mov	r7,dpl
;	lcd.c:132: RS = 0;
	clr	_P3_3
;	lcd.c:133: P1 = address | 0x80;  // set the MSB to detect that this is an address
	mov	a,#0x80
	orl	a,r7
	mov	_P1,a
;	lcd.c:134: E = 1;
	setb	_P3_2
;	lcd.c:135: E = 0;
	clr	_P3_2
;	lcd.c:136: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:141: void sendChar(char c) {  // Function to send one character to be displayed on the LCD
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	r7,dpl
;	lcd.c:142: RS = 1;
	setb	_P3_3
;	lcd.c:143: P1 = c;
	mov	_P1,r7
;	lcd.c:144: E = 1;
	setb	_P3_2
;	lcd.c:145: E = 0;
	clr	_P3_2
;	lcd.c:146: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;c                         Allocated to registers r3 
;------------------------------------------------------------
;	lcd.c:149: void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
;	-----------------------------------------
;	 function sendString
;	-----------------------------------------
_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	lcd.c:151: while (c = *str++) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r4
	mov	r3,a
	jz	00104$
;	lcd.c:152: sendChar(c);
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_sendChar
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:156: void delay(void) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	lcd.c:158: for (c = 0; c < 50; c++);
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
;	lcd.c:161: void big_delay(void) {
;	-----------------------------------------
;	 function big_delay
;	-----------------------------------------
_big_delay:
;	lcd.c:163: for (c = 0; c < 255; c++);
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
___str_0:
	.ascii "Welcome"
	.db 0x00
___str_1:
	.ascii "EECS113 Students"
	.db 0x00
___str_2:
	.ascii "How are you"
	.db 0x00
___str_3:
	.ascii "today?"
	.db 0x00
___str_4:
	.ascii "Loading . . ."
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
