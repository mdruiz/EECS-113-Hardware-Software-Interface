// Mario Ruiz	#46301389
//  Assignment 3
// 
// My code is fully functional
// I used an update frequency of 1000
// Sometimes the keypad doesnt register the button presses, just press again.

// To compile, use the commands
// % sdcc --model-small -mmcs51 --Werror -I. -c hw3.c
// % sdcc --model-small -mmcs51 --Werror -I. --iram-size 0x100 --code-size 0x1000 --code-loc 0x0000 --stack-loc 0x30 --data-loc 0x30 --out-fmt-ihx hw3.rel
// % packihx hw3.ihx > hw3.hex

#include <stdlib.h>
#include <8051.h>
#define DB P1
#define RS P3_3
#define E P3_2

void entryModeSet();
void displayOnOffControl(__bit display, __bit cursor, __bit blinking);
void functionSet(void);
void sendChar(char c);
void delay(void);
void setDdRamAddress(char address);
void big_delay(void);

//unsigned int findSum(unsigned char num1, unsigned char num2);

void Main(void) {
	unsigned char row;   // Contains the required mask to clear one of the rows at a time
	unsigned char col;   // Contains the output of the columns
	unsigned char keypad[4][3] = {   // This array contains the ASCII of the keypad keys
		{'3','2','1'},
		{'6','5','4'},
		{'9','8','7'},
		{'#','0','*'}
		};
	unsigned char i;
	unsigned char gotkey = 0;	
	unsigned char num1[] = {0,0,0,0,0,0};
	unsigned char num2[] = {0,0,0,0,0,0}; 
	unsigned char answer[] = {0,0,0,0,0,0}; 
	int j = 0;
	int flag = 0;
	unsigned int sum = 0;
	int digit ;
	
	
	functionSet();
	entryModeSet(); // increment and no shift
	displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on

	while (1) {
	
		row = 0xf7;  // The first row (connected to P0.3) will be zero
		
		for (i=0;i<4;++i){ // loop over the 4 rows
			
			P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
			P0 = P0 & row; // clear one row at a time
			col = P0 & 0x70;  // Read the 3 columns
			
			if (col != 0x70){ // If any column is zero i.e. a key is pressed
				col = (~col) & 0x70;  // because the selected column returns zero
				col = col >> 5;       // The column variable now contain the number of the selected column
				gotkey = keypad[i][col]; // Get the ASCII of the corresponding pressed key
				big_delay();
				if (gotkey == '#'){
					sendChar('=');
					sum = atoi(num1) +  atoi(num2);
					j = 0;
				}
				else if (gotkey == '*'){
					sendChar('+');
					flag = 1;
					j = 0;
				}
				else{
					if (flag == 0){
						num1[j] = gotkey;
						j++;
					}
					else if (flag == 1){
						num2[j] = gotkey;
						j++;
					}
					sendChar(gotkey);
				}
				break;  // Since a key was detected -> Exit the for loop
			}
			
			row = row >> 1;   // No key is detected yet, try the next row
			row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
			
		}
		
		if (gotkey == '#'){break;}  // Since an '=' was detected -> exit the while loop
		
	}
	// putting sum into a char array as ascii values
	while (sum != 0){
		digit = sum % 10;
		sum = sum / 10;
		digit = digit + 48;
		answer[j] = digit;
		j++;
		
	}
	setDdRamAddress(0x40); // set address to start of second line
	// printing answer to lcd
	while (j >= 0){
		j--;
		sendChar (answer[j]);
	} 
	
	while(1){}
	
	
}

// LCD Module instructions -------------------------------------------

void entryModeSet() {
	RS = 0;
	P1 = 0x06;  
	E = 1;
	E = 0;
	delay();
}

void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
	RS = 0;
	P1 = address | 0x80;  // set the MSB to detect that this is an address
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

void functionSet(void) {
	RS = 0;
	P1 = 0x38; // 8-bit mode, 2 lines LCD
	E = 1;
	E = 0;
	delay();
}

void sendChar(char c) {  // Function to send one character to be displayed on the LCD
	RS = 1;
	P1 = c;
	E = 1;
	E = 0;
	delay();
}

void delay(void) {
	char c;
	for (c = 0; c < 50; c++);
}

void big_delay(void) {
	unsigned char c;
	for (c = 0; c < 255; c++);
}
