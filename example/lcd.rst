                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
                                      4 ; This file was generated Sat Apr 30 21:09:58 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module lcd
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _Main
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _cursorOrDisplayShift_PARM_2
                                    110 	.globl _cursorOrDisplayShift_PARM_1
                                    111 	.globl _displayOnOffControl_PARM_3
                                    112 	.globl _displayOnOffControl_PARM_2
                                    113 	.globl _displayOnOffControl_PARM_1
                                    114 	.globl _returnHome
                                    115 	.globl _entryModeSet
                                    116 	.globl _displayOnOffControl
                                    117 	.globl _cursorOrDisplayShift
                                    118 	.globl _functionSet
                                    119 	.globl _clearDisplay
                                    120 	.globl _setDdRamAddress
                                    121 	.globl _sendChar
                                    122 	.globl _sendString
                                    123 	.globl _delay
                                    124 	.globl _big_delay
                                    125 ;--------------------------------------------------------
                                    126 ; special function registers
                                    127 ;--------------------------------------------------------
                                    128 	.area RSEG    (ABS,DATA)
      000000                        129 	.org 0x0000
                           000080   130 _P0	=	0x0080
                           000081   131 _SP	=	0x0081
                           000082   132 _DPL	=	0x0082
                           000083   133 _DPH	=	0x0083
                           000087   134 _PCON	=	0x0087
                           000088   135 _TCON	=	0x0088
                           000089   136 _TMOD	=	0x0089
                           00008A   137 _TL0	=	0x008a
                           00008B   138 _TL1	=	0x008b
                           00008C   139 _TH0	=	0x008c
                           00008D   140 _TH1	=	0x008d
                           000090   141 _P1	=	0x0090
                           000098   142 _SCON	=	0x0098
                           000099   143 _SBUF	=	0x0099
                           0000A0   144 _P2	=	0x00a0
                           0000A8   145 _IE	=	0x00a8
                           0000B0   146 _P3	=	0x00b0
                           0000B8   147 _IP	=	0x00b8
                           0000D0   148 _PSW	=	0x00d0
                           0000E0   149 _ACC	=	0x00e0
                           0000F0   150 _B	=	0x00f0
                                    151 ;--------------------------------------------------------
                                    152 ; special function bits
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _P0_0	=	0x0080
                           000081   157 _P0_1	=	0x0081
                           000082   158 _P0_2	=	0x0082
                           000083   159 _P0_3	=	0x0083
                           000084   160 _P0_4	=	0x0084
                           000085   161 _P0_5	=	0x0085
                           000086   162 _P0_6	=	0x0086
                           000087   163 _P0_7	=	0x0087
                           000088   164 _IT0	=	0x0088
                           000089   165 _IE0	=	0x0089
                           00008A   166 _IT1	=	0x008a
                           00008B   167 _IE1	=	0x008b
                           00008C   168 _TR0	=	0x008c
                           00008D   169 _TF0	=	0x008d
                           00008E   170 _TR1	=	0x008e
                           00008F   171 _TF1	=	0x008f
                           000090   172 _P1_0	=	0x0090
                           000091   173 _P1_1	=	0x0091
                           000092   174 _P1_2	=	0x0092
                           000093   175 _P1_3	=	0x0093
                           000094   176 _P1_4	=	0x0094
                           000095   177 _P1_5	=	0x0095
                           000096   178 _P1_6	=	0x0096
                           000097   179 _P1_7	=	0x0097
                           000098   180 _RI	=	0x0098
                           000099   181 _TI	=	0x0099
                           00009A   182 _RB8	=	0x009a
                           00009B   183 _TB8	=	0x009b
                           00009C   184 _REN	=	0x009c
                           00009D   185 _SM2	=	0x009d
                           00009E   186 _SM1	=	0x009e
                           00009F   187 _SM0	=	0x009f
                           0000A0   188 _P2_0	=	0x00a0
                           0000A1   189 _P2_1	=	0x00a1
                           0000A2   190 _P2_2	=	0x00a2
                           0000A3   191 _P2_3	=	0x00a3
                           0000A4   192 _P2_4	=	0x00a4
                           0000A5   193 _P2_5	=	0x00a5
                           0000A6   194 _P2_6	=	0x00a6
                           0000A7   195 _P2_7	=	0x00a7
                           0000A8   196 _EX0	=	0x00a8
                           0000A9   197 _ET0	=	0x00a9
                           0000AA   198 _EX1	=	0x00aa
                           0000AB   199 _ET1	=	0x00ab
                           0000AC   200 _ES	=	0x00ac
                           0000AF   201 _EA	=	0x00af
                           0000B0   202 _P3_0	=	0x00b0
                           0000B1   203 _P3_1	=	0x00b1
                           0000B2   204 _P3_2	=	0x00b2
                           0000B3   205 _P3_3	=	0x00b3
                           0000B4   206 _P3_4	=	0x00b4
                           0000B5   207 _P3_5	=	0x00b5
                           0000B6   208 _P3_6	=	0x00b6
                           0000B7   209 _P3_7	=	0x00b7
                           0000B0   210 _RXD	=	0x00b0
                           0000B1   211 _TXD	=	0x00b1
                           0000B2   212 _INT0	=	0x00b2
                           0000B3   213 _INT1	=	0x00b3
                           0000B4   214 _T0	=	0x00b4
                           0000B5   215 _T1	=	0x00b5
                           0000B6   216 _WR	=	0x00b6
                           0000B7   217 _RD	=	0x00b7
                           0000B8   218 _PX0	=	0x00b8
                           0000B9   219 _PT0	=	0x00b9
                           0000BA   220 _PX1	=	0x00ba
                           0000BB   221 _PT1	=	0x00bb
                           0000BC   222 _PS	=	0x00bc
                           0000D0   223 _P	=	0x00d0
                           0000D1   224 _F1	=	0x00d1
                           0000D2   225 _OV	=	0x00d2
                           0000D3   226 _RS0	=	0x00d3
                           0000D4   227 _RS1	=	0x00d4
                           0000D5   228 _F0	=	0x00d5
                           0000D6   229 _AC	=	0x00d6
                           0000D7   230 _CY	=	0x00d7
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable register banks
                                    233 ;--------------------------------------------------------
                                    234 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        235 	.ds 8
                                    236 ;--------------------------------------------------------
                                    237 ; internal ram data
                                    238 ;--------------------------------------------------------
                                    239 	.area DSEG    (DATA)
                                    240 ;--------------------------------------------------------
                                    241 ; overlayable items in internal ram 
                                    242 ;--------------------------------------------------------
                                    243 	.area	OSEG    (OVR,DATA)
                                    244 	.area	OSEG    (OVR,DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; indirectly addressable internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area ISEG    (DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; absolute internal ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area IABS    (ABS,DATA)
                                    253 	.area IABS    (ABS,DATA)
                                    254 ;--------------------------------------------------------
                                    255 ; bit data
                                    256 ;--------------------------------------------------------
                                    257 	.area BSEG    (BIT)
      000000                        258 _displayOnOffControl_PARM_1:
      000000                        259 	.ds 1
      000001                        260 _displayOnOffControl_PARM_2:
      000001                        261 	.ds 1
      000002                        262 _displayOnOffControl_PARM_3:
      000002                        263 	.ds 1
      000003                        264 _cursorOrDisplayShift_PARM_1:
      000003                        265 	.ds 1
      000004                        266 _cursorOrDisplayShift_PARM_2:
      000004                        267 	.ds 1
                                    268 ;--------------------------------------------------------
                                    269 ; paged external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area PSEG    (PAG,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XSEG    (XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; absolute external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XABS    (ABS,XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; external initialized ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XISEG   (XDATA)
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT0 (CODE)
                                    286 	.area GSINIT1 (CODE)
                                    287 	.area GSINIT2 (CODE)
                                    288 	.area GSINIT3 (CODE)
                                    289 	.area GSINIT4 (CODE)
                                    290 	.area GSINIT5 (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area CSEG    (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; global & static initialisations
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.area GSFINAL (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 ;--------------------------------------------------------
                                    302 ; Home
                                    303 ;--------------------------------------------------------
                                    304 	.area HOME    (CODE)
                                    305 	.area HOME    (CODE)
                                    306 ;--------------------------------------------------------
                                    307 ; code
                                    308 ;--------------------------------------------------------
                                    309 	.area CSEG    (CODE)
                                    310 ;------------------------------------------------------------
                                    311 ;Allocation info for local variables in function 'Main'
                                    312 ;------------------------------------------------------------
                                    313 ;	lcd.c:39: void Main(void) {
                                    314 ;	-----------------------------------------
                                    315 ;	 function Main
                                    316 ;	-----------------------------------------
      000000                        317 _Main:
                           000007   318 	ar7 = 0x07
                           000006   319 	ar6 = 0x06
                           000005   320 	ar5 = 0x05
                           000004   321 	ar4 = 0x04
                           000003   322 	ar3 = 0x03
                           000002   323 	ar2 = 0x02
                           000001   324 	ar1 = 0x01
                           000000   325 	ar0 = 0x00
                                    326 ;	lcd.c:40: functionSet();
      000000 12 00 BB         [24]  327 	lcall	_functionSet
                                    328 ;	lcd.c:41: entryModeSet(); // increment and no shift
      000003 12 00 75         [24]  329 	lcall	_entryModeSet
                                    330 ;	lcd.c:42: displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
      000006 D2 00            [12]  331 	setb	_displayOnOffControl_PARM_1
      000008 D2 01            [12]  332 	setb	_displayOnOffControl_PARM_2
      00000A D2 02            [12]  333 	setb	_displayOnOffControl_PARM_3
      00000C 12 00 81         [24]  334 	lcall	_displayOnOffControl
                                    335 ;	lcd.c:43: sendString("Welcome");
      00000F 90 01 4C         [24]  336 	mov	dptr,#___str_0
      000012 75 F0 80         [24]  337 	mov	b,#0x80
      000015 12 00 F0         [24]  338 	lcall	_sendString
                                    339 ;	lcd.c:44: setDdRamAddress(0x40); // set address to start of second line
      000018 75 82 40         [24]  340 	mov	dpl,#0x40
      00001B 12 00 D3         [24]  341 	lcall	_setDdRamAddress
                                    342 ;	lcd.c:45: sendString("EECS113 Students");
      00001E 90 01 54         [24]  343 	mov	dptr,#___str_1
      000021 75 F0 80         [24]  344 	mov	b,#0x80
      000024 12 00 F0         [24]  345 	lcall	_sendString
                                    346 ;	lcd.c:47: while (1) {
      000027                        347 00113$:
                                    348 ;	lcd.c:48: if (clear == 0) {
      000027 20 A0 05         [24]  349 	jb	_P2_0,00110$
                                    350 ;	lcd.c:49: clearDisplay();
      00002A 12 00 C7         [24]  351 	lcall	_clearDisplay
      00002D 80 F8            [24]  352 	sjmp	00113$
      00002F                        353 00110$:
                                    354 ;	lcd.c:51: else if (msg1 == 0){
      00002F 20 A1 20         [24]  355 	jb	_P2_1,00107$
                                    356 ;	lcd.c:52: clearDisplay();   // Clear the display and return the cursor to the home position
      000032 12 00 C7         [24]  357 	lcall	_clearDisplay
                                    358 ;	lcd.c:53: sendString("How are you");
      000035 90 01 65         [24]  359 	mov	dptr,#___str_2
      000038 75 F0 80         [24]  360 	mov	b,#0x80
      00003B 12 00 F0         [24]  361 	lcall	_sendString
                                    362 ;	lcd.c:54: setDdRamAddress(0x44); // set the display to the 5th place of the LCD line 2
      00003E 75 82 44         [24]  363 	mov	dpl,#0x44
      000041 12 00 D3         [24]  364 	lcall	_setDdRamAddress
                                    365 ;	lcd.c:55: sendString("today?");
      000044 90 01 71         [24]  366 	mov	dptr,#___str_3
      000047 75 F0 80         [24]  367 	mov	b,#0x80
      00004A 12 00 F0         [24]  368 	lcall	_sendString
                                    369 ;	lcd.c:56: while (msg1 == 0){}  // Stay here till the msg1 switch is released
      00004D                        370 00101$:
      00004D 20 A1 D7         [24]  371 	jb	_P2_1,00113$
      000050 80 FB            [24]  372 	sjmp	00101$
      000052                        373 00107$:
                                    374 ;	lcd.c:58: else if (msg2 == 0){
      000052 20 A2 D2         [24]  375 	jb	_P2_2,00113$
                                    376 ;	lcd.c:59: clearDisplay();
      000055 12 00 C7         [24]  377 	lcall	_clearDisplay
                                    378 ;	lcd.c:60: sendString("Loading . . .");
      000058 90 01 78         [24]  379 	mov	dptr,#___str_4
      00005B 75 F0 80         [24]  380 	mov	b,#0x80
      00005E 12 00 F0         [24]  381 	lcall	_sendString
                                    382 ;	lcd.c:61: big_delay();
      000061 12 01 26         [24]  383 	lcall	_big_delay
                                    384 ;	lcd.c:62: big_delay();
      000064 12 01 26         [24]  385 	lcall	_big_delay
      000067 80 BE            [24]  386 	sjmp	00113$
                                    387 ;------------------------------------------------------------
                                    388 ;Allocation info for local variables in function 'returnHome'
                                    389 ;------------------------------------------------------------
                                    390 ;	lcd.c:70: void returnHome(void) {
                                    391 ;	-----------------------------------------
                                    392 ;	 function returnHome
                                    393 ;	-----------------------------------------
      000069                        394 _returnHome:
                                    395 ;	lcd.c:71: RS = 0;
      000069 C2 B3            [12]  396 	clr	_P3_3
                                    397 ;	lcd.c:72: P1 = 0x02; // LCD command to return home (the first location of the first lcd line)
      00006B 75 90 02         [24]  398 	mov	_P1,#0x02
                                    399 ;	lcd.c:73: E = 1;
      00006E D2 B2            [12]  400 	setb	_P3_2
                                    401 ;	lcd.c:74: E = 0;
      000070 C2 B2            [12]  402 	clr	_P3_2
                                    403 ;	lcd.c:75: big_delay(); // This operation needs a bigger delay
      000072 02 01 26         [24]  404 	ljmp	_big_delay
                                    405 ;------------------------------------------------------------
                                    406 ;Allocation info for local variables in function 'entryModeSet'
                                    407 ;------------------------------------------------------------
                                    408 ;	lcd.c:78: void entryModeSet() {
                                    409 ;	-----------------------------------------
                                    410 ;	 function entryModeSet
                                    411 ;	-----------------------------------------
      000075                        412 _entryModeSet:
                                    413 ;	lcd.c:79: RS = 0;
      000075 C2 B3            [12]  414 	clr	_P3_3
                                    415 ;	lcd.c:80: P1 = 0x06;  
      000077 75 90 06         [24]  416 	mov	_P1,#0x06
                                    417 ;	lcd.c:81: E = 1;
      00007A D2 B2            [12]  418 	setb	_P3_2
                                    419 ;	lcd.c:82: E = 0;
      00007C C2 B2            [12]  420 	clr	_P3_2
                                    421 ;	lcd.c:83: delay();
      00007E 02 01 1D         [24]  422 	ljmp	_delay
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function 'displayOnOffControl'
                                    425 ;------------------------------------------------------------
                                    426 ;	lcd.c:86: void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
                                    427 ;	-----------------------------------------
                                    428 ;	 function displayOnOffControl
                                    429 ;	-----------------------------------------
      000081                        430 _displayOnOffControl:
                                    431 ;	lcd.c:87: P1_7 = 0;
      000081 C2 97            [12]  432 	clr	_P1_7
                                    433 ;	lcd.c:88: P1_6 = 0;
      000083 C2 96            [12]  434 	clr	_P1_6
                                    435 ;	lcd.c:89: P1_5 = 0;
      000085 C2 95            [12]  436 	clr	_P1_5
                                    437 ;	lcd.c:90: P1_4 = 0;
      000087 C2 94            [12]  438 	clr	_P1_4
                                    439 ;	lcd.c:91: P1_3 = 1;
      000089 D2 93            [12]  440 	setb	_P1_3
                                    441 ;	lcd.c:92: P1_2 = display;
      00008B A2 00            [12]  442 	mov	c,_displayOnOffControl_PARM_1
      00008D 92 92            [24]  443 	mov	_P1_2,c
                                    444 ;	lcd.c:93: P1_1 = cursor;
      00008F A2 01            [12]  445 	mov	c,_displayOnOffControl_PARM_2
      000091 92 91            [24]  446 	mov	_P1_1,c
                                    447 ;	lcd.c:94: P1_0 = blinking;
      000093 A2 02            [12]  448 	mov	c,_displayOnOffControl_PARM_3
      000095 92 90            [24]  449 	mov	_P1_0,c
                                    450 ;	lcd.c:95: E = 1;
      000097 D2 B2            [12]  451 	setb	_P3_2
                                    452 ;	lcd.c:96: E = 0;
      000099 C2 B2            [12]  453 	clr	_P3_2
                                    454 ;	lcd.c:97: delay();
      00009B 02 01 1D         [24]  455 	ljmp	_delay
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'cursorOrDisplayShift'
                                    458 ;------------------------------------------------------------
                                    459 ;	lcd.c:100: void cursorOrDisplayShift(__bit sc, __bit rl) {
                                    460 ;	-----------------------------------------
                                    461 ;	 function cursorOrDisplayShift
                                    462 ;	-----------------------------------------
      00009E                        463 _cursorOrDisplayShift:
                                    464 ;	lcd.c:101: RS = 0;
      00009E C2 B3            [12]  465 	clr	_P3_3
                                    466 ;	lcd.c:102: P1_7 = 0;
      0000A0 C2 97            [12]  467 	clr	_P1_7
                                    468 ;	lcd.c:103: P1_6 = 0;
      0000A2 C2 96            [12]  469 	clr	_P1_6
                                    470 ;	lcd.c:104: P1_5 = 0;
      0000A4 C2 95            [12]  471 	clr	_P1_5
                                    472 ;	lcd.c:105: P1_4 = 1;
      0000A6 D2 94            [12]  473 	setb	_P1_4
                                    474 ;	lcd.c:106: P1_3 = sc;
      0000A8 A2 03            [12]  475 	mov	c,_cursorOrDisplayShift_PARM_1
      0000AA 92 93            [24]  476 	mov	_P1_3,c
                                    477 ;	lcd.c:107: P1_2 = rl;
      0000AC A2 04            [12]  478 	mov	c,_cursorOrDisplayShift_PARM_2
      0000AE 92 92            [24]  479 	mov	_P1_2,c
                                    480 ;	lcd.c:108: P1_1 = 0;
      0000B0 C2 91            [12]  481 	clr	_P1_1
                                    482 ;	lcd.c:109: P1_0 = 0;
      0000B2 C2 90            [12]  483 	clr	_P1_0
                                    484 ;	lcd.c:110: E = 1;
      0000B4 D2 B2            [12]  485 	setb	_P3_2
                                    486 ;	lcd.c:111: E = 0;
      0000B6 C2 B2            [12]  487 	clr	_P3_2
                                    488 ;	lcd.c:112: delay();
      0000B8 02 01 1D         [24]  489 	ljmp	_delay
                                    490 ;------------------------------------------------------------
                                    491 ;Allocation info for local variables in function 'functionSet'
                                    492 ;------------------------------------------------------------
                                    493 ;	lcd.c:115: void functionSet(void) {
                                    494 ;	-----------------------------------------
                                    495 ;	 function functionSet
                                    496 ;	-----------------------------------------
      0000BB                        497 _functionSet:
                                    498 ;	lcd.c:116: RS = 0;
      0000BB C2 B3            [12]  499 	clr	_P3_3
                                    500 ;	lcd.c:117: P1 = 0x38; // 8-bit mode, 2 lines LCD
      0000BD 75 90 38         [24]  501 	mov	_P1,#0x38
                                    502 ;	lcd.c:118: E = 1;
      0000C0 D2 B2            [12]  503 	setb	_P3_2
                                    504 ;	lcd.c:119: E = 0;
      0000C2 C2 B2            [12]  505 	clr	_P3_2
                                    506 ;	lcd.c:120: delay();
      0000C4 02 01 1D         [24]  507 	ljmp	_delay
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'clearDisplay'
                                    510 ;------------------------------------------------------------
                                    511 ;	lcd.c:123: void clearDisplay(void) {
                                    512 ;	-----------------------------------------
                                    513 ;	 function clearDisplay
                                    514 ;	-----------------------------------------
      0000C7                        515 _clearDisplay:
                                    516 ;	lcd.c:124: RS = 0;
      0000C7 C2 B3            [12]  517 	clr	_P3_3
                                    518 ;	lcd.c:125: P1 = 0x01; // command to clear LCD and return the cursor to the home position
      0000C9 75 90 01         [24]  519 	mov	_P1,#0x01
                                    520 ;	lcd.c:126: E = 1;
      0000CC D2 B2            [12]  521 	setb	_P3_2
                                    522 ;	lcd.c:127: E = 0;
      0000CE C2 B2            [12]  523 	clr	_P3_2
                                    524 ;	lcd.c:128: big_delay(); // This operation needs a bigger delay
      0000D0 02 01 26         [24]  525 	ljmp	_big_delay
                                    526 ;------------------------------------------------------------
                                    527 ;Allocation info for local variables in function 'setDdRamAddress'
                                    528 ;------------------------------------------------------------
                                    529 ;address                   Allocated to registers r7 
                                    530 ;------------------------------------------------------------
                                    531 ;	lcd.c:131: void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
                                    532 ;	-----------------------------------------
                                    533 ;	 function setDdRamAddress
                                    534 ;	-----------------------------------------
      0000D3                        535 _setDdRamAddress:
      0000D3 AF 82            [24]  536 	mov	r7,dpl
                                    537 ;	lcd.c:132: RS = 0;
      0000D5 C2 B3            [12]  538 	clr	_P3_3
                                    539 ;	lcd.c:133: P1 = address | 0x80;  // set the MSB to detect that this is an address
      0000D7 74 80            [12]  540 	mov	a,#0x80
      0000D9 4F               [12]  541 	orl	a,r7
      0000DA F5 90            [12]  542 	mov	_P1,a
                                    543 ;	lcd.c:134: E = 1;
      0000DC D2 B2            [12]  544 	setb	_P3_2
                                    545 ;	lcd.c:135: E = 0;
      0000DE C2 B2            [12]  546 	clr	_P3_2
                                    547 ;	lcd.c:136: delay();
      0000E0 02 01 1D         [24]  548 	ljmp	_delay
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'sendChar'
                                    551 ;------------------------------------------------------------
                                    552 ;c                         Allocated to registers r7 
                                    553 ;------------------------------------------------------------
                                    554 ;	lcd.c:141: void sendChar(char c) {  // Function to send one character to be displayed on the LCD
                                    555 ;	-----------------------------------------
                                    556 ;	 function sendChar
                                    557 ;	-----------------------------------------
      0000E3                        558 _sendChar:
      0000E3 AF 82            [24]  559 	mov	r7,dpl
                                    560 ;	lcd.c:142: RS = 1;
      0000E5 D2 B3            [12]  561 	setb	_P3_3
                                    562 ;	lcd.c:143: P1 = c;
      0000E7 8F 90            [24]  563 	mov	_P1,r7
                                    564 ;	lcd.c:144: E = 1;
      0000E9 D2 B2            [12]  565 	setb	_P3_2
                                    566 ;	lcd.c:145: E = 0;
      0000EB C2 B2            [12]  567 	clr	_P3_2
                                    568 ;	lcd.c:146: delay();
      0000ED 02 01 1D         [24]  569 	ljmp	_delay
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'sendString'
                                    572 ;------------------------------------------------------------
                                    573 ;str                       Allocated to registers 
                                    574 ;c                         Allocated to registers r3 
                                    575 ;------------------------------------------------------------
                                    576 ;	lcd.c:149: void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
                                    577 ;	-----------------------------------------
                                    578 ;	 function sendString
                                    579 ;	-----------------------------------------
      0000F0                        580 _sendString:
      0000F0 AD 82            [24]  581 	mov	r5,dpl
      0000F2 AE 83            [24]  582 	mov	r6,dph
      0000F4 AF F0            [24]  583 	mov	r7,b
                                    584 ;	lcd.c:151: while (c = *str++) {
      0000F6                        585 00101$:
      0000F6 8D 82            [24]  586 	mov	dpl,r5
      0000F8 8E 83            [24]  587 	mov	dph,r6
      0000FA 8F F0            [24]  588 	mov	b,r7
      0000FC 12 01 30         [24]  589 	lcall	__gptrget
      0000FF FC               [12]  590 	mov	r4,a
      000100 A3               [24]  591 	inc	dptr
      000101 AD 82            [24]  592 	mov	r5,dpl
      000103 AE 83            [24]  593 	mov	r6,dph
      000105 EC               [12]  594 	mov	a,r4
      000106 FB               [12]  595 	mov	r3,a
      000107 60 13            [24]  596 	jz	00104$
                                    597 ;	lcd.c:152: sendChar(c);
      000109 8B 82            [24]  598 	mov	dpl,r3
      00010B C0 07            [24]  599 	push	ar7
      00010D C0 06            [24]  600 	push	ar6
      00010F C0 05            [24]  601 	push	ar5
      000111 12 00 E3         [24]  602 	lcall	_sendChar
      000114 D0 05            [24]  603 	pop	ar5
      000116 D0 06            [24]  604 	pop	ar6
      000118 D0 07            [24]  605 	pop	ar7
      00011A 80 DA            [24]  606 	sjmp	00101$
      00011C                        607 00104$:
      00011C 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'delay'
                                    611 ;------------------------------------------------------------
                                    612 ;c                         Allocated to registers r7 
                                    613 ;------------------------------------------------------------
                                    614 ;	lcd.c:156: void delay(void) {
                                    615 ;	-----------------------------------------
                                    616 ;	 function delay
                                    617 ;	-----------------------------------------
      00011D                        618 _delay:
                                    619 ;	lcd.c:158: for (c = 0; c < 50; c++);
      00011D 7F 32            [12]  620 	mov	r7,#0x32
      00011F                        621 00104$:
      00011F EF               [12]  622 	mov	a,r7
      000120 14               [12]  623 	dec	a
      000121 FE               [12]  624 	mov	r6,a
      000122 FF               [12]  625 	mov	r7,a
      000123 70 FA            [24]  626 	jnz	00104$
      000125 22               [24]  627 	ret
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'big_delay'
                                    630 ;------------------------------------------------------------
                                    631 ;c                         Allocated to registers r7 
                                    632 ;------------------------------------------------------------
                                    633 ;	lcd.c:161: void big_delay(void) {
                                    634 ;	-----------------------------------------
                                    635 ;	 function big_delay
                                    636 ;	-----------------------------------------
      000126                        637 _big_delay:
                                    638 ;	lcd.c:163: for (c = 0; c < 255; c++);
      000126 7F FF            [12]  639 	mov	r7,#0xFF
      000128                        640 00104$:
      000128 8F 06            [24]  641 	mov	ar6,r7
      00012A 1E               [12]  642 	dec	r6
      00012B EE               [12]  643 	mov	a,r6
      00012C FF               [12]  644 	mov	r7,a
      00012D 70 F9            [24]  645 	jnz	00104$
      00012F 22               [24]  646 	ret
                                    647 	.area CSEG    (CODE)
                                    648 	.area CONST   (CODE)
      00014C                        649 ___str_0:
      00014C 57 65 6C 63 6F 6D 65   650 	.ascii "Welcome"
      000153 00                     651 	.db 0x00
      000154                        652 ___str_1:
      000154 45 45 43 53 31 31 33   653 	.ascii "EECS113 Students"
             20 53 74 75 64 65 6E
             74 73
      000164 00                     654 	.db 0x00
      000165                        655 ___str_2:
      000165 48 6F 77 20 61 72 65   656 	.ascii "How are you"
             20 79 6F 75
      000170 00                     657 	.db 0x00
      000171                        658 ___str_3:
      000171 74 6F 64 61 79 3F      659 	.ascii "today?"
      000177 00                     660 	.db 0x00
      000178                        661 ___str_4:
      000178 4C 6F 61 64 69 6E 67   662 	.ascii "Loading . . ."
             20 2E 20 2E 20 2E
      000185 00                     663 	.db 0x00
                                    664 	.area XINIT   (CODE)
                                    665 	.area CABS    (ABS,CODE)
