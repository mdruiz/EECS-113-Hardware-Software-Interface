/* source code from http://www.edsim51.com/examples/lcd.c
// Modified to work with SDCC 
//
// To work, you have to change the EdSim51 LCD connection
// to connect RS to P3.3 and E to P3.2.
// You can do that using the DI button at the top left of the peripheral panel.
//
// To compile, use the commands
// % sdcc --model-small -mmcs51 --Werror -I. -c lcd.c
// % sdcc --model-small -mmcs51 --Werror -I. --iram-size 0x100 \
//   --code-size 0x1000 --code-loc 0x0000 --stack-loc 0x30 --data-loc 0x30\
//   --out-fmt-ihx lcd.rel
// % packihx lcd.ihx > lcd.hex
//
*/
#include <8051.h>

#define DB P1
#define RS P3_3
#define E P3_2

#define clear P2_0  // SW0
#define msg1 P2_1   // SW1
#define msg2 P2_2   // SW2

void returnHome(void);
void entryModeSet();
void displayOnOffControl(__bit display, __bit cursor, __bit blinking);
void cursorOrDisplayShift(__bit sc, __bit rl);
void functionSet(void);
void clearDisplay(void);
void setDdRamAddress(char address);

void sendChar(char c);
void sendString(char* str);
void delay(void);
void big_delay(void);

void Main(void) {
	functionSet();
	entryModeSet(); // increment and no shift
	displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	sendString("Welcome");
	setDdRamAddress(0x40); // set address to start of second line
	sendString("EECS113 Students");

	while (1) {
		if (clear == 0) {
			clearDisplay();
		}
		else if (msg1 == 0){
		    clearDisplay();   // Clear the display and return the cursor to the home position
			sendString("How are you");
			setDdRamAddress(0x44); // set the display to the 5th place of the LCD line 2
			sendString("today?");
			while (msg1 == 0){}  // Stay here till the msg1 switch is released
		}	
		else if (msg2 == 0){
			clearDisplay();
			sendString("Loading . . .");
			big_delay();
			big_delay();
		}
	}
}


// LCD Module instructions -------------------------------------------

void returnHome(void) {
	RS = 0;
	P1 = 0x02; // LCD command to return home (the first location of the first lcd line)
	E = 1;
	E = 0;
	big_delay(); // This operation needs a bigger delay
}	

void entryModeSet() {
	RS = 0;
	P1 = 0x06;  
	E = 1;
	E = 0;
	delay();
}

void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
	P1_7 = 0;
	P1_6 = 0;
	P1_5 = 0;
	P1_4 = 0;
	P1_3 = 1;
	P1_2 = display;
	P1_1 = cursor;
	P1_0 = blinking;
	E = 1;
	E = 0;
	delay();
}

void cursorOrDisplayShift(__bit sc, __bit rl) {
	RS = 0;
	P1_7 = 0;
	P1_6 = 0;
	P1_5 = 0;
	P1_4 = 1;
	P1_3 = sc;
	P1_2 = rl;
	P1_1 = 0;
	P1_0 = 0;
	E = 1;
	E = 0;
	delay();
}

void functionSet(void) {
	RS = 0;
	P1 = 0x38; // 8-bit mode, 2 lines LCD
	E = 1;
	E = 0;
	delay();
}

void clearDisplay(void) {
	RS = 0;
	P1 = 0x01; // command to clear LCD and return the cursor to the home position
	E = 1;
	E = 0;
	big_delay(); // This operation needs a bigger delay
}	

void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
	RS = 0;
	P1 = address | 0x80;  // set the MSB to detect that this is an address
	E = 1;
	E = 0;
	delay();
}

// --------------------------------------------------------------------

void sendChar(char c) {  // Function to send one character to be displayed on the LCD
	RS = 1;
	P1 = c;
	E = 1;
	E = 0;
	delay();
}

void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
	char c;
	while (c = *str++) {
		sendChar(c);
	}
}

void delay(void) {
	char c;
	for (c = 0; c < 50; c++);
}

void big_delay(void) {
	unsigned char c;
	for (c = 0; c < 255; c++);
}