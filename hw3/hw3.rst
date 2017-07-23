                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
                                      4 ; This file was generated Tue May 03 11:00:04 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module hw3
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _Main
                                     13 	.globl _atoi
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _displayOnOffControl_PARM_3
                                    111 	.globl _displayOnOffControl_PARM_2
                                    112 	.globl _displayOnOffControl_PARM_1
                                    113 	.globl _entryModeSet
                                    114 	.globl _setDdRamAddress
                                    115 	.globl _displayOnOffControl
                                    116 	.globl _functionSet
                                    117 	.globl _sendChar
                                    118 	.globl _delay
                                    119 	.globl _big_delay
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000030                        235 _Main_col_1_23:
      000030                        236 	.ds 1
      000031                        237 _Main_keypad_1_23:
      000031                        238 	.ds 12
      00003D                        239 _Main_i_1_23:
      00003D                        240 	.ds 1
      00003E                        241 _Main_gotkey_1_23:
      00003E                        242 	.ds 1
      00003F                        243 _Main_num1_1_23:
      00003F                        244 	.ds 6
      000045                        245 _Main_num2_1_23:
      000045                        246 	.ds 6
      00004B                        247 _Main_answer_1_23:
      00004B                        248 	.ds 6
      000051                        249 _Main_j_1_23:
      000051                        250 	.ds 2
      000053                        251 _Main_flag_1_23:
      000053                        252 	.ds 2
      000055                        253 _Main_sloc0_1_0:
      000055                        254 	.ds 2
                                    255 ;--------------------------------------------------------
                                    256 ; overlayable items in internal ram 
                                    257 ;--------------------------------------------------------
                                    258 	.area	OSEG    (OVR,DATA)
                                    259 	.area	OSEG    (OVR,DATA)
                                    260 ;--------------------------------------------------------
                                    261 ; indirectly addressable internal ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area ISEG    (DATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area IABS    (ABS,DATA)
                                    268 	.area IABS    (ABS,DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; bit data
                                    271 ;--------------------------------------------------------
                                    272 	.area BSEG    (BIT)
      000000                        273 _displayOnOffControl_PARM_1:
      000000                        274 	.ds 1
      000001                        275 _displayOnOffControl_PARM_2:
      000001                        276 	.ds 1
      000002                        277 _displayOnOffControl_PARM_3:
      000002                        278 	.ds 1
                                    279 ;--------------------------------------------------------
                                    280 ; paged external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area PSEG    (PAG,XDATA)
                                    283 ;--------------------------------------------------------
                                    284 ; external ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area XSEG    (XDATA)
                                    287 ;--------------------------------------------------------
                                    288 ; absolute external ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area XABS    (ABS,XDATA)
                                    291 ;--------------------------------------------------------
                                    292 ; external initialized ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area XISEG   (XDATA)
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT0 (CODE)
                                    297 	.area GSINIT1 (CODE)
                                    298 	.area GSINIT2 (CODE)
                                    299 	.area GSINIT3 (CODE)
                                    300 	.area GSINIT4 (CODE)
                                    301 	.area GSINIT5 (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.area GSFINAL (CODE)
                                    304 	.area CSEG    (CODE)
                                    305 ;--------------------------------------------------------
                                    306 ; global & static initialisations
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 	.area GSFINAL (CODE)
                                    311 	.area GSINIT  (CODE)
                                    312 ;--------------------------------------------------------
                                    313 ; Home
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
                                    316 	.area HOME    (CODE)
                                    317 ;--------------------------------------------------------
                                    318 ; code
                                    319 ;--------------------------------------------------------
                                    320 	.area CSEG    (CODE)
                                    321 ;------------------------------------------------------------
                                    322 ;Allocation info for local variables in function 'Main'
                                    323 ;------------------------------------------------------------
                                    324 ;row                       Allocated to registers r3 
                                    325 ;col                       Allocated with name '_Main_col_1_23'
                                    326 ;keypad                    Allocated with name '_Main_keypad_1_23'
                                    327 ;i                         Allocated with name '_Main_i_1_23'
                                    328 ;gotkey                    Allocated with name '_Main_gotkey_1_23'
                                    329 ;num1                      Allocated with name '_Main_num1_1_23'
                                    330 ;num2                      Allocated with name '_Main_num2_1_23'
                                    331 ;answer                    Allocated with name '_Main_answer_1_23'
                                    332 ;j                         Allocated with name '_Main_j_1_23'
                                    333 ;flag                      Allocated with name '_Main_flag_1_23'
                                    334 ;sum                       Allocated to registers r2 r4 
                                    335 ;digit                     Allocated to registers r3 r5 
                                    336 ;sloc0                     Allocated with name '_Main_sloc0_1_0'
                                    337 ;------------------------------------------------------------
                                    338 ;	hw3.c:24: void Main(void) {
                                    339 ;	-----------------------------------------
                                    340 ;	 function Main
                                    341 ;	-----------------------------------------
      000000                        342 _Main:
                           000007   343 	ar7 = 0x07
                           000006   344 	ar6 = 0x06
                           000005   345 	ar5 = 0x05
                           000004   346 	ar4 = 0x04
                           000003   347 	ar3 = 0x03
                           000002   348 	ar2 = 0x02
                           000001   349 	ar1 = 0x01
                           000000   350 	ar0 = 0x00
                                    351 ;	hw3.c:27: unsigned char keypad[4][3] = {   // This array contains the ASCII of the keypad keys
      000000 75 31 33         [24]  352 	mov	_Main_keypad_1_23,#0x33
      000003 75 32 32         [24]  353 	mov	(_Main_keypad_1_23 + 0x0001),#0x32
      000006 75 33 31         [24]  354 	mov	(_Main_keypad_1_23 + 0x0002),#0x31
      000009 75 34 36         [24]  355 	mov	(_Main_keypad_1_23 + 0x0003),#0x36
      00000C 75 35 35         [24]  356 	mov	(_Main_keypad_1_23 + 0x0004),#0x35
      00000F 75 36 34         [24]  357 	mov	(_Main_keypad_1_23 + 0x0005),#0x34
      000012 75 37 39         [24]  358 	mov	(_Main_keypad_1_23 + 0x0006),#0x39
      000015 75 38 38         [24]  359 	mov	(_Main_keypad_1_23 + 0x0007),#0x38
      000018 75 39 37         [24]  360 	mov	(_Main_keypad_1_23 + 0x0008),#0x37
      00001B 75 3A 23         [24]  361 	mov	(_Main_keypad_1_23 + 0x0009),#0x23
      00001E 75 3B 30         [24]  362 	mov	(_Main_keypad_1_23 + 0x000a),#0x30
      000021 75 3C 2A         [24]  363 	mov	(_Main_keypad_1_23 + 0x000b),#0x2A
                                    364 ;	hw3.c:34: unsigned char gotkey = 0;	
      000024 75 3E 00         [24]  365 	mov	_Main_gotkey_1_23,#0x00
                                    366 ;	hw3.c:35: unsigned char num1[] = {0,0,0,0,0,0};
      000027 75 3F 00         [24]  367 	mov	_Main_num1_1_23,#0x00
      00002A 75 40 00         [24]  368 	mov	(_Main_num1_1_23 + 0x0001),#0x00
      00002D 75 41 00         [24]  369 	mov	(_Main_num1_1_23 + 0x0002),#0x00
      000030 75 42 00         [24]  370 	mov	(_Main_num1_1_23 + 0x0003),#0x00
      000033 75 43 00         [24]  371 	mov	(_Main_num1_1_23 + 0x0004),#0x00
      000036 75 44 00         [24]  372 	mov	(_Main_num1_1_23 + 0x0005),#0x00
                                    373 ;	hw3.c:36: unsigned char num2[] = {0,0,0,0,0,0}; 
      000039 75 45 00         [24]  374 	mov	_Main_num2_1_23,#0x00
      00003C 75 46 00         [24]  375 	mov	(_Main_num2_1_23 + 0x0001),#0x00
      00003F 75 47 00         [24]  376 	mov	(_Main_num2_1_23 + 0x0002),#0x00
      000042 75 48 00         [24]  377 	mov	(_Main_num2_1_23 + 0x0003),#0x00
      000045 75 49 00         [24]  378 	mov	(_Main_num2_1_23 + 0x0004),#0x00
      000048 75 4A 00         [24]  379 	mov	(_Main_num2_1_23 + 0x0005),#0x00
                                    380 ;	hw3.c:37: unsigned char answer[] = {0,0,0,0,0,0}; 
      00004B 75 4B 00         [24]  381 	mov	_Main_answer_1_23,#0x00
      00004E 75 4C 00         [24]  382 	mov	(_Main_answer_1_23 + 0x0001),#0x00
                                    383 ;	hw3.c:38: int j = 0;
      000051 E4               [12]  384 	clr	a
      000052 F5 4D            [12]  385 	mov	(_Main_answer_1_23 + 0x0002),a
      000054 F5 4E            [12]  386 	mov	(_Main_answer_1_23 + 0x0003),a
      000056 F5 4F            [12]  387 	mov	(_Main_answer_1_23 + 0x0004),a
      000058 F5 50            [12]  388 	mov	(_Main_answer_1_23 + 0x0005),a
      00005A F5 51            [12]  389 	mov	_Main_j_1_23,a
      00005C F5 52            [12]  390 	mov	(_Main_j_1_23 + 1),a
                                    391 ;	hw3.c:39: int flag = 0;
      00005E F5 53            [12]  392 	mov	_Main_flag_1_23,a
      000060 F5 54            [12]  393 	mov	(_Main_flag_1_23 + 1),a
                                    394 ;	hw3.c:40: unsigned int sum = 0;
      000062 7A 00            [12]  395 	mov	r2,#0x00
      000064 7C 00            [12]  396 	mov	r4,#0x00
                                    397 ;	hw3.c:44: functionSet();
      000066 C0 04            [24]  398 	push	ar4
      000068 C0 02            [24]  399 	push	ar2
      00006A 12 02 36         [24]  400 	lcall	_functionSet
                                    401 ;	hw3.c:45: entryModeSet(); // increment and no shift
      00006D 12 01 FD         [24]  402 	lcall	_entryModeSet
      000070 D0 02            [24]  403 	pop	ar2
      000072 D0 04            [24]  404 	pop	ar4
                                    405 ;	hw3.c:46: displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
      000074 D2 00            [12]  406 	setb	_displayOnOffControl_PARM_1
      000076 D2 01            [12]  407 	setb	_displayOnOffControl_PARM_2
      000078 D2 02            [12]  408 	setb	_displayOnOffControl_PARM_3
      00007A C0 04            [24]  409 	push	ar4
      00007C C0 02            [24]  410 	push	ar2
      00007E 12 02 19         [24]  411 	lcall	_displayOnOffControl
      000081 D0 02            [24]  412 	pop	ar2
      000083 D0 04            [24]  413 	pop	ar4
                                    414 ;	hw3.c:48: while (1) {
      000085                        415 00118$:
                                    416 ;	hw3.c:50: row = 0xf7;  // The first row (connected to P0.3) will be zero
      000085 7B F7            [12]  417 	mov	r3,#0xF7
                                    418 ;	hw3.c:52: for (i=0;i<4;++i){ // loop over the 4 rows
      000087 7E 00            [12]  419 	mov	r6,#0x00
                                    420 ;	1-genFromRTrack replaced	mov	_Main_i_1_23,#0x00
      000089 8E 3D            [24]  421 	mov	_Main_i_1_23,r6
      00008B                        422 00129$:
                                    423 ;	hw3.c:54: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
      00008B 75 80 FF         [24]  424 	mov	_P0,#0xFF
                                    425 ;	hw3.c:55: P0 = P0 & row; // clear one row at a time
      00008E EB               [12]  426 	mov	a,r3
      00008F 52 80            [12]  427 	anl	_P0,a
                                    428 ;	hw3.c:56: col = P0 & 0x70;  // Read the 3 columns
      000091 74 70            [12]  429 	mov	a,#0x70
      000093 55 80            [12]  430 	anl	a,_P0
      000095 F5 30            [12]  431 	mov	_Main_col_1_23,a
                                    432 ;	hw3.c:58: if (col != 0x70){ // If any column is zero i.e. a key is pressed
      000097 74 70            [12]  433 	mov	a,#0x70
      000099 B5 30 03         [24]  434 	cjne	a,_Main_col_1_23,00173$
      00009C 02 01 5D         [24]  435 	ljmp	00113$
      00009F                        436 00173$:
                                    437 ;	hw3.c:59: col = (~col) & 0x70;  // because the selected column returns zero
      00009F E5 30            [12]  438 	mov	a,_Main_col_1_23
      0000A1 F4               [12]  439 	cpl	a
      0000A2 FD               [12]  440 	mov	r5,a
      0000A3 74 70            [12]  441 	mov	a,#0x70
      0000A5 5D               [12]  442 	anl	a,r5
                                    443 ;	hw3.c:60: col = col >> 5;       // The column variable now contain the number of the selected column
      0000A6 F5 30            [12]  444 	mov	_Main_col_1_23,a
      0000A8 C4               [12]  445 	swap	a
      0000A9 03               [12]  446 	rr	a
      0000AA 54 07            [12]  447 	anl	a,#0x07
      0000AC F5 30            [12]  448 	mov	_Main_col_1_23,a
                                    449 ;	hw3.c:61: gotkey = keypad[i][col]; // Get the ASCII of the corresponding pressed key
      0000AE EE               [12]  450 	mov	a,r6
      0000AF 75 F0 03         [24]  451 	mov	b,#0x03
      0000B2 A4               [48]  452 	mul	ab
      0000B3 24 31            [12]  453 	add	a,#_Main_keypad_1_23
      0000B5 25 30            [12]  454 	add	a,_Main_col_1_23
      0000B7 F9               [12]  455 	mov	r1,a
      0000B8 87 3E            [24]  456 	mov	_Main_gotkey_1_23,@r1
                                    457 ;	hw3.c:62: big_delay();
      0000BA C0 04            [24]  458 	push	ar4
      0000BC C0 02            [24]  459 	push	ar2
      0000BE 12 02 58         [24]  460 	lcall	_big_delay
      0000C1 D0 02            [24]  461 	pop	ar2
      0000C3 D0 04            [24]  462 	pop	ar4
                                    463 ;	hw3.c:63: if (gotkey == '#'){
      0000C5 74 23            [12]  464 	mov	a,#0x23
      0000C7 B5 3E 31         [24]  465 	cjne	a,_Main_gotkey_1_23,00110$
                                    466 ;	hw3.c:64: sendChar('=');
      0000CA 75 82 3D         [24]  467 	mov	dpl,#0x3D
      0000CD 12 02 42         [24]  468 	lcall	_sendChar
                                    469 ;	hw3.c:65: sum = atoi(num1) +  atoi(num2);
      0000D0 90 00 3F         [24]  470 	mov	dptr,#_Main_num1_1_23
      0000D3 75 F0 40         [24]  471 	mov	b,#0x40
      0000D6 12 02 8B         [24]  472 	lcall	_atoi
      0000D9 85 82 55         [24]  473 	mov	_Main_sloc0_1_0,dpl
      0000DC 85 83 56         [24]  474 	mov	(_Main_sloc0_1_0 + 1),dph
      0000DF 90 00 45         [24]  475 	mov	dptr,#_Main_num2_1_23
      0000E2 75 F0 40         [24]  476 	mov	b,#0x40
      0000E5 12 02 8B         [24]  477 	lcall	_atoi
      0000E8 AD 82            [24]  478 	mov	r5,dpl
      0000EA AF 83            [24]  479 	mov	r7,dph
      0000EC ED               [12]  480 	mov	a,r5
      0000ED 25 55            [12]  481 	add	a,_Main_sloc0_1_0
      0000EF FA               [12]  482 	mov	r2,a
      0000F0 EF               [12]  483 	mov	a,r7
      0000F1 35 56            [12]  484 	addc	a,(_Main_sloc0_1_0 + 1)
      0000F3 FC               [12]  485 	mov	r4,a
                                    486 ;	hw3.c:66: j = 0;
      0000F4 E4               [12]  487 	clr	a
      0000F5 F5 51            [12]  488 	mov	_Main_j_1_23,a
      0000F7 F5 52            [12]  489 	mov	(_Main_j_1_23 + 1),a
      0000F9 80 76            [24]  490 	sjmp	00114$
      0000FB                        491 00110$:
                                    492 ;	hw3.c:68: else if (gotkey == '*'){
      0000FB 74 2A            [12]  493 	mov	a,#0x2A
      0000FD B5 3E 1A         [24]  494 	cjne	a,_Main_gotkey_1_23,00107$
                                    495 ;	hw3.c:69: sendChar('+');
      000100 75 82 2B         [24]  496 	mov	dpl,#0x2B
      000103 C0 04            [24]  497 	push	ar4
      000105 C0 02            [24]  498 	push	ar2
      000107 12 02 42         [24]  499 	lcall	_sendChar
      00010A D0 02            [24]  500 	pop	ar2
      00010C D0 04            [24]  501 	pop	ar4
                                    502 ;	hw3.c:70: flag = 1;
      00010E 75 53 01         [24]  503 	mov	_Main_flag_1_23,#0x01
                                    504 ;	hw3.c:71: j = 0;
      000111 E4               [12]  505 	clr	a
      000112 F5 54            [12]  506 	mov	(_Main_flag_1_23 + 1),a
      000114 F5 51            [12]  507 	mov	_Main_j_1_23,a
      000116 F5 52            [12]  508 	mov	(_Main_j_1_23 + 1),a
      000118 80 57            [24]  509 	sjmp	00114$
      00011A                        510 00107$:
                                    511 ;	hw3.c:74: if (flag == 0){
      00011A E5 53            [12]  512 	mov	a,_Main_flag_1_23
      00011C 45 54            [12]  513 	orl	a,(_Main_flag_1_23 + 1)
      00011E 70 11            [24]  514 	jnz	00104$
                                    515 ;	hw3.c:75: num1[j] = gotkey;
      000120 E5 51            [12]  516 	mov	a,_Main_j_1_23
      000122 24 3F            [12]  517 	add	a,#_Main_num1_1_23
      000124 F8               [12]  518 	mov	r0,a
      000125 A6 3E            [24]  519 	mov	@r0,_Main_gotkey_1_23
                                    520 ;	hw3.c:76: j++;
      000127 05 51            [12]  521 	inc	_Main_j_1_23
      000129 E4               [12]  522 	clr	a
      00012A B5 51 20         [24]  523 	cjne	a,_Main_j_1_23,00105$
      00012D 05 52            [12]  524 	inc	(_Main_j_1_23 + 1)
      00012F 80 1C            [24]  525 	sjmp	00105$
      000131                        526 00104$:
                                    527 ;	hw3.c:78: else if (flag == 1){
      000131 74 01            [12]  528 	mov	a,#0x01
      000133 B5 53 06         [24]  529 	cjne	a,_Main_flag_1_23,00180$
      000136 E4               [12]  530 	clr	a
      000137 B5 54 02         [24]  531 	cjne	a,(_Main_flag_1_23 + 1),00180$
      00013A 80 02            [24]  532 	sjmp	00181$
      00013C                        533 00180$:
      00013C 80 0F            [24]  534 	sjmp	00105$
      00013E                        535 00181$:
                                    536 ;	hw3.c:79: num2[j] = gotkey;
      00013E E5 51            [12]  537 	mov	a,_Main_j_1_23
      000140 24 45            [12]  538 	add	a,#_Main_num2_1_23
      000142 F8               [12]  539 	mov	r0,a
      000143 A6 3E            [24]  540 	mov	@r0,_Main_gotkey_1_23
                                    541 ;	hw3.c:80: j++;
      000145 05 51            [12]  542 	inc	_Main_j_1_23
      000147 E4               [12]  543 	clr	a
      000148 B5 51 02         [24]  544 	cjne	a,_Main_j_1_23,00182$
      00014B 05 52            [12]  545 	inc	(_Main_j_1_23 + 1)
      00014D                        546 00182$:
      00014D                        547 00105$:
                                    548 ;	hw3.c:82: sendChar(gotkey);
      00014D 85 3E 82         [24]  549 	mov	dpl,_Main_gotkey_1_23
      000150 C0 04            [24]  550 	push	ar4
      000152 C0 02            [24]  551 	push	ar2
      000154 12 02 42         [24]  552 	lcall	_sendChar
      000157 D0 02            [24]  553 	pop	ar2
      000159 D0 04            [24]  554 	pop	ar4
                                    555 ;	hw3.c:84: break;  // Since a key was detected -> Exit the for loop
      00015B 80 14            [24]  556 	sjmp	00114$
      00015D                        557 00113$:
                                    558 ;	hw3.c:87: row = row >> 1;   // No key is detected yet, try the next row
      00015D EB               [12]  559 	mov	a,r3
      00015E C3               [12]  560 	clr	c
      00015F 13               [12]  561 	rrc	a
      000160 FB               [12]  562 	mov	r3,a
                                    563 ;	hw3.c:88: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
      000161 43 03 F0         [24]  564 	orl	ar3,#0xF0
                                    565 ;	hw3.c:52: for (i=0;i<4;++i){ // loop over the 4 rows
      000164 05 3D            [12]  566 	inc	_Main_i_1_23
      000166 AE 3D            [24]  567 	mov	r6,_Main_i_1_23
      000168 74 FC            [12]  568 	mov	a,#0x100 - 0x04
      00016A 25 3D            [12]  569 	add	a,_Main_i_1_23
      00016C 40 03            [24]  570 	jc	00183$
      00016E 02 00 8B         [24]  571 	ljmp	00129$
      000171                        572 00183$:
      000171                        573 00114$:
                                    574 ;	hw3.c:92: if (gotkey == '#'){break;}  // Since an '=' was detected -> exit the while loop
      000171 74 23            [12]  575 	mov	a,#0x23
      000173 B5 3E 02         [24]  576 	cjne	a,_Main_gotkey_1_23,00184$
      000176 80 03            [24]  577 	sjmp	00185$
      000178                        578 00184$:
      000178 02 00 85         [24]  579 	ljmp	00118$
      00017B                        580 00185$:
                                    581 ;	hw3.c:96: while (sum != 0){
      00017B AE 51            [24]  582 	mov	r6,_Main_j_1_23
      00017D AF 52            [24]  583 	mov	r7,(_Main_j_1_23 + 1)
      00017F                        584 00120$:
      00017F EA               [12]  585 	mov	a,r2
      000180 4C               [12]  586 	orl	a,r4
      000181 60 4E            [24]  587 	jz	00122$
                                    588 ;	hw3.c:97: digit = sum % 10;
      000183 75 59 0A         [24]  589 	mov	__moduint_PARM_2,#0x0A
      000186 75 5A 00         [24]  590 	mov	(__moduint_PARM_2 + 1),#0x00
      000189 8A 82            [24]  591 	mov	dpl,r2
      00018B 8C 83            [24]  592 	mov	dph,r4
      00018D C0 07            [24]  593 	push	ar7
      00018F C0 06            [24]  594 	push	ar6
      000191 C0 04            [24]  595 	push	ar4
      000193 C0 02            [24]  596 	push	ar2
      000195 12 03 6E         [24]  597 	lcall	__moduint
      000198 AB 82            [24]  598 	mov	r3,dpl
      00019A AD 83            [24]  599 	mov	r5,dph
      00019C D0 02            [24]  600 	pop	ar2
      00019E D0 04            [24]  601 	pop	ar4
                                    602 ;	hw3.c:98: sum = sum / 10;
      0001A0 75 59 0A         [24]  603 	mov	__divuint_PARM_2,#0x0A
      0001A3 75 5A 00         [24]  604 	mov	(__divuint_PARM_2 + 1),#0x00
      0001A6 8A 82            [24]  605 	mov	dpl,r2
      0001A8 8C 83            [24]  606 	mov	dph,r4
      0001AA C0 05            [24]  607 	push	ar5
      0001AC C0 03            [24]  608 	push	ar3
      0001AE 12 02 62         [24]  609 	lcall	__divuint
      0001B1 AA 82            [24]  610 	mov	r2,dpl
      0001B3 AC 83            [24]  611 	mov	r4,dph
      0001B5 D0 03            [24]  612 	pop	ar3
      0001B7 D0 05            [24]  613 	pop	ar5
      0001B9 D0 06            [24]  614 	pop	ar6
      0001BB D0 07            [24]  615 	pop	ar7
                                    616 ;	hw3.c:99: digit = digit + 48;
      0001BD 74 30            [12]  617 	mov	a,#0x30
      0001BF 2B               [12]  618 	add	a,r3
      0001C0 FB               [12]  619 	mov	r3,a
      0001C1 E4               [12]  620 	clr	a
      0001C2 3D               [12]  621 	addc	a,r5
      0001C3 FD               [12]  622 	mov	r5,a
                                    623 ;	hw3.c:100: answer[j] = digit;
      0001C4 EE               [12]  624 	mov	a,r6
      0001C5 24 4B            [12]  625 	add	a,#_Main_answer_1_23
      0001C7 F9               [12]  626 	mov	r1,a
      0001C8 A7 03            [24]  627 	mov	@r1,ar3
                                    628 ;	hw3.c:101: j++;
      0001CA 0E               [12]  629 	inc	r6
      0001CB BE 00 B1         [24]  630 	cjne	r6,#0x00,00120$
      0001CE 0F               [12]  631 	inc	r7
      0001CF 80 AE            [24]  632 	sjmp	00120$
      0001D1                        633 00122$:
                                    634 ;	hw3.c:104: setDdRamAddress(0x40); // set address to start of second line
      0001D1 75 82 40         [24]  635 	mov	dpl,#0x40
      0001D4 C0 07            [24]  636 	push	ar7
      0001D6 C0 06            [24]  637 	push	ar6
      0001D8 12 02 09         [24]  638 	lcall	_setDdRamAddress
      0001DB D0 06            [24]  639 	pop	ar6
      0001DD D0 07            [24]  640 	pop	ar7
                                    641 ;	hw3.c:106: while (j >= 0){
      0001DF                        642 00123$:
      0001DF EF               [12]  643 	mov	a,r7
      0001E0 20 E7 18         [24]  644 	jb	acc.7,00127$
                                    645 ;	hw3.c:107: j--;
      0001E3 1E               [12]  646 	dec	r6
      0001E4 BE FF 01         [24]  647 	cjne	r6,#0xFF,00189$
      0001E7 1F               [12]  648 	dec	r7
      0001E8                        649 00189$:
                                    650 ;	hw3.c:108: sendChar (answer[j]);
      0001E8 EE               [12]  651 	mov	a,r6
      0001E9 24 4B            [12]  652 	add	a,#_Main_answer_1_23
      0001EB F9               [12]  653 	mov	r1,a
      0001EC 87 82            [24]  654 	mov	dpl,@r1
      0001EE C0 07            [24]  655 	push	ar7
      0001F0 C0 06            [24]  656 	push	ar6
      0001F2 12 02 42         [24]  657 	lcall	_sendChar
      0001F5 D0 06            [24]  658 	pop	ar6
      0001F7 D0 07            [24]  659 	pop	ar7
                                    660 ;	hw3.c:111: while(1){}
      0001F9 80 E4            [24]  661 	sjmp	00123$
      0001FB                        662 00127$:
      0001FB 80 FE            [24]  663 	sjmp	00127$
                                    664 ;------------------------------------------------------------
                                    665 ;Allocation info for local variables in function 'entryModeSet'
                                    666 ;------------------------------------------------------------
                                    667 ;	hw3.c:118: void entryModeSet() {
                                    668 ;	-----------------------------------------
                                    669 ;	 function entryModeSet
                                    670 ;	-----------------------------------------
      0001FD                        671 _entryModeSet:
                                    672 ;	hw3.c:119: RS = 0;
      0001FD C2 B3            [12]  673 	clr	_P3_3
                                    674 ;	hw3.c:120: P1 = 0x06;  
      0001FF 75 90 06         [24]  675 	mov	_P1,#0x06
                                    676 ;	hw3.c:121: E = 1;
      000202 D2 B2            [12]  677 	setb	_P3_2
                                    678 ;	hw3.c:122: E = 0;
      000204 C2 B2            [12]  679 	clr	_P3_2
                                    680 ;	hw3.c:123: delay();
      000206 02 02 4F         [24]  681 	ljmp	_delay
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'setDdRamAddress'
                                    684 ;------------------------------------------------------------
                                    685 ;address                   Allocated to registers r7 
                                    686 ;------------------------------------------------------------
                                    687 ;	hw3.c:126: void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
                                    688 ;	-----------------------------------------
                                    689 ;	 function setDdRamAddress
                                    690 ;	-----------------------------------------
      000209                        691 _setDdRamAddress:
      000209 AF 82            [24]  692 	mov	r7,dpl
                                    693 ;	hw3.c:127: RS = 0;
      00020B C2 B3            [12]  694 	clr	_P3_3
                                    695 ;	hw3.c:128: P1 = address | 0x80;  // set the MSB to detect that this is an address
      00020D 74 80            [12]  696 	mov	a,#0x80
      00020F 4F               [12]  697 	orl	a,r7
      000210 F5 90            [12]  698 	mov	_P1,a
                                    699 ;	hw3.c:129: E = 1;
      000212 D2 B2            [12]  700 	setb	_P3_2
                                    701 ;	hw3.c:130: E = 0;
      000214 C2 B2            [12]  702 	clr	_P3_2
                                    703 ;	hw3.c:131: delay();
      000216 02 02 4F         [24]  704 	ljmp	_delay
                                    705 ;------------------------------------------------------------
                                    706 ;Allocation info for local variables in function 'displayOnOffControl'
                                    707 ;------------------------------------------------------------
                                    708 ;	hw3.c:134: void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
                                    709 ;	-----------------------------------------
                                    710 ;	 function displayOnOffControl
                                    711 ;	-----------------------------------------
      000219                        712 _displayOnOffControl:
                                    713 ;	hw3.c:135: P1_7 = 0;
      000219 C2 97            [12]  714 	clr	_P1_7
                                    715 ;	hw3.c:136: P1_6 = 0;
      00021B C2 96            [12]  716 	clr	_P1_6
                                    717 ;	hw3.c:137: P1_5 = 0;
      00021D C2 95            [12]  718 	clr	_P1_5
                                    719 ;	hw3.c:138: P1_4 = 0;
      00021F C2 94            [12]  720 	clr	_P1_4
                                    721 ;	hw3.c:139: P1_3 = 1;
      000221 D2 93            [12]  722 	setb	_P1_3
                                    723 ;	hw3.c:140: P1_2 = display;
      000223 A2 00            [12]  724 	mov	c,_displayOnOffControl_PARM_1
      000225 92 92            [24]  725 	mov	_P1_2,c
                                    726 ;	hw3.c:141: P1_1 = cursor;
      000227 A2 01            [12]  727 	mov	c,_displayOnOffControl_PARM_2
      000229 92 91            [24]  728 	mov	_P1_1,c
                                    729 ;	hw3.c:142: P1_0 = blinking;
      00022B A2 02            [12]  730 	mov	c,_displayOnOffControl_PARM_3
      00022D 92 90            [24]  731 	mov	_P1_0,c
                                    732 ;	hw3.c:143: E = 1;
      00022F D2 B2            [12]  733 	setb	_P3_2
                                    734 ;	hw3.c:144: E = 0;
      000231 C2 B2            [12]  735 	clr	_P3_2
                                    736 ;	hw3.c:145: delay();
      000233 02 02 4F         [24]  737 	ljmp	_delay
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'functionSet'
                                    740 ;------------------------------------------------------------
                                    741 ;	hw3.c:148: void functionSet(void) {
                                    742 ;	-----------------------------------------
                                    743 ;	 function functionSet
                                    744 ;	-----------------------------------------
      000236                        745 _functionSet:
                                    746 ;	hw3.c:149: RS = 0;
      000236 C2 B3            [12]  747 	clr	_P3_3
                                    748 ;	hw3.c:150: P1 = 0x38; // 8-bit mode, 2 lines LCD
      000238 75 90 38         [24]  749 	mov	_P1,#0x38
                                    750 ;	hw3.c:151: E = 1;
      00023B D2 B2            [12]  751 	setb	_P3_2
                                    752 ;	hw3.c:152: E = 0;
      00023D C2 B2            [12]  753 	clr	_P3_2
                                    754 ;	hw3.c:153: delay();
      00023F 02 02 4F         [24]  755 	ljmp	_delay
                                    756 ;------------------------------------------------------------
                                    757 ;Allocation info for local variables in function 'sendChar'
                                    758 ;------------------------------------------------------------
                                    759 ;c                         Allocated to registers r7 
                                    760 ;------------------------------------------------------------
                                    761 ;	hw3.c:156: void sendChar(char c) {  // Function to send one character to be displayed on the LCD
                                    762 ;	-----------------------------------------
                                    763 ;	 function sendChar
                                    764 ;	-----------------------------------------
      000242                        765 _sendChar:
      000242 AF 82            [24]  766 	mov	r7,dpl
                                    767 ;	hw3.c:157: RS = 1;
      000244 D2 B3            [12]  768 	setb	_P3_3
                                    769 ;	hw3.c:158: P1 = c;
      000246 8F 90            [24]  770 	mov	_P1,r7
                                    771 ;	hw3.c:159: E = 1;
      000248 D2 B2            [12]  772 	setb	_P3_2
                                    773 ;	hw3.c:160: E = 0;
      00024A C2 B2            [12]  774 	clr	_P3_2
                                    775 ;	hw3.c:161: delay();
      00024C 02 02 4F         [24]  776 	ljmp	_delay
                                    777 ;------------------------------------------------------------
                                    778 ;Allocation info for local variables in function 'delay'
                                    779 ;------------------------------------------------------------
                                    780 ;c                         Allocated to registers r7 
                                    781 ;------------------------------------------------------------
                                    782 ;	hw3.c:164: void delay(void) {
                                    783 ;	-----------------------------------------
                                    784 ;	 function delay
                                    785 ;	-----------------------------------------
      00024F                        786 _delay:
                                    787 ;	hw3.c:166: for (c = 0; c < 50; c++);
      00024F 7F 32            [12]  788 	mov	r7,#0x32
      000251                        789 00104$:
      000251 EF               [12]  790 	mov	a,r7
      000252 14               [12]  791 	dec	a
      000253 FE               [12]  792 	mov	r6,a
      000254 FF               [12]  793 	mov	r7,a
      000255 70 FA            [24]  794 	jnz	00104$
      000257 22               [24]  795 	ret
                                    796 ;------------------------------------------------------------
                                    797 ;Allocation info for local variables in function 'big_delay'
                                    798 ;------------------------------------------------------------
                                    799 ;c                         Allocated to registers r7 
                                    800 ;------------------------------------------------------------
                                    801 ;	hw3.c:169: void big_delay(void) {
                                    802 ;	-----------------------------------------
                                    803 ;	 function big_delay
                                    804 ;	-----------------------------------------
      000258                        805 _big_delay:
                                    806 ;	hw3.c:171: for (c = 0; c < 255; c++);
      000258 7F FF            [12]  807 	mov	r7,#0xFF
      00025A                        808 00104$:
      00025A 8F 06            [24]  809 	mov	ar6,r7
      00025C 1E               [12]  810 	dec	r6
      00025D EE               [12]  811 	mov	a,r6
      00025E FF               [12]  812 	mov	r7,a
      00025F 70 F9            [24]  813 	jnz	00104$
      000261 22               [24]  814 	ret
                                    815 	.area CSEG    (CODE)
                                    816 	.area CONST   (CODE)
                                    817 	.area XINIT   (CODE)
                                    818 	.area CABS    (ABS,CODE)
