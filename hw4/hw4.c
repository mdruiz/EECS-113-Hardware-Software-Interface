// Mario Ruiz	#46301389
//  Assignment 4
// 

// Everyhting works except that i cant change the date.
// the time and date loop around correctly
// time setting mode works correctly with error checking.
// I can enter date setting mode and move the cursor but it wont actually change the values
//the date is in thwe format DD-MM-YY. My frequency is 10,000
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//**  My code for changing the date is included but commented out. 							**//
//**  I was unable to fix the bug which made the rest of my code crash but the logic is all there.		**//
//** For some reason that i was unable to figure out, my arrays kept getting overwritten with random data **//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


				/////*********** UPDATE *************/////
// I got the date to change as well, however, I found my bug was when i did errror checking for the second digit of the day.
// because lack of time, i didnt implement the error checking for that digit.
// However, assuming the user inputs the right value for that digit, it works fine


// To compile, use the commands
// % sdcc --model-small -mmcs51 --Werror -I. -c hw4.c
// % sdcc --model-small -mmcs51 --Werror -I. --iram-size 0x100 --code-size 0x1000 --code-loc 0x0000 --stack-loc 0x30 --data-loc 0x30 --out-fmt-ihx hw4.rel
// % packihx hw4.ihx > hw4.hex

#include <stdlib.h>
#include <8051.h>
#define DB P1
#define RS P2_3
#define E P2_2

void entryModeSet();
void displayOnOffControl(__bit display, __bit cursor, __bit blinking);
void functionSet(void);
void sendChar(char c);
void sendString(char* str);
void delay(void);
void setDdRamAddress(char address);
void big_delay(void);
void timer_delay(void);
void timeMode(void);
void dateMode(void);
void updateTime(char new);
void updateDate(char new);


int position;



unsigned char seconds[3];
unsigned char minutes[3]; 
unsigned char hours[3]; 

unsigned char days[3];
unsigned char month[3];
unsigned char year[3];
unsigned int numDays[12]; 
//unsigned int numDay[12];
// unsigned char keypad[4][3] = {   // This array contains the ASCII of the keypad keys
		// {'3','2','1'},
		// {'6','5','4'},
		// {'9','8','7'},
		// {'#','0','*'}
	// };
//unsigned char keypad[12] = {'3','2','1','6','5','4','9','8','7','#','0','*'};

void main(void) {
	//unsigned int numDays[12] = {31,28,31,30,31,30,31,31,30,31,30,31};
	seconds[0] = '0';
	seconds[1] = '0';
	minutes[0] = '0';
	minutes[1] = '0';
	hours[0] = '0';
	hours[1] = '0';
	seconds[2] = 0;
	minutes[2] = 0;
	hours[2] = 0;
	days[0] = '0';
	days[1] = '1';
	month[0] = '0';
	month[1] = '1';
	year[0] = '0';
	year[1] = '0';
	seconds[2] = 0;
	minutes[2] = 0;
	hours[2] = 0;
	                    
	
	numDays[0]= 31 ;
	numDays[1]= 28 ;
	numDays[2]= 31 ;
	numDays[3]= 30 ;
	numDays[4]= 31 ;
	numDays[5]= 30 ;
	numDays[6]= 31 ;
	numDays[7]= 31 ;
	numDays[8]= 30 ;
	numDays[9]= 31 ;
	numDays[10]= 30 ;
	numDays[11]= 31 ;

	
	IT0 = 1;   // make INT0 to edge triggered
	IT1 = 1;   // make INT1 to edge triggered
	IE = 0x85;  //enable external interupt0	

	functionSet();
	entryModeSet(); // increment and no shift
	displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	
	//On power up
	setDdRamAddress(0x00); // set address to start of first line
	sendString(hours);
	sendChar(':');
	sendString(minutes);
	sendChar(':');
	sendString(seconds);
	setDdRamAddress(0x40); // set address to start of second line
	sendString(days);
	sendChar('-');
	sendString(month);
	sendChar('-');
	sendString(year);

	while (1) {
		// setDdRamAddress(0x48);
		// sendChar( ( (numDays[1] ) / 10 ) + 48 );
		// sendChar( ( (numDays[1] ) % 10 ) + 48 );
		P1 = ~ seconds[1];
		timer_delay();
		seconds[1]++;
		if (seconds[1] == 58){
			seconds[1] = '0';
			seconds[0] ++;
			if(seconds [0] == '6'){
				seconds[0] = '0';
				minutes[1] ++;
				if(minutes[1] == 58){
					minutes[1] = '0';
					minutes[0] ++;
					if(minutes[0] == '6'){
						minutes[0] = '0';
						hours[1] ++;
						// 24 hour format
						if((hours[1] == 58) || (hours[1] == '4' && hours[0] == '2' ) ){
							hours[1] = '0';
							hours[0] ++;
							if (hours[0] == '3'){
								hours[0] = '0';
								// if already on last day of month dont add one to days;
								if (atoi(days) == numDays[atoi(month)-1] ){
									days[1] = '0';
									days[0] = '0';
									month[1]++;
									if((month[1] == 58) || (month[1] == '3' && month[0] == '1' ) ){
										month[1] = '0';
										month[0] ++;
										if (month[0] == '2'){
											month[0] = '0';
											month[1] = '1';
											year[1] ++;
											if ( year[1] == 58){
												year[1] = '0';
												year[0] ++;
												if (year[0] == 58){
													year[0] = '0';
												}
											}
											setDdRamAddress(0x46); //setting adress to beginning of year
											sendString(year);
										}
									}
									setDdRamAddress(0x43); //setting adress to beginning of months
									sendString(month);
								}
								days[1] ++;
								if ((days[1] == 58) ){
									days[1] = '0';
									days[0] ++;
								}
								setDdRamAddress(0x40); //setting adress to beginning of line 2 (days)
								sendString(days);
							}
						}
						setDdRamAddress(0x00); //setting adress to beginning of line 1 (hours)
						sendString(hours);		
					}
				}
				setDdRamAddress(0x03); // setting adress to beginning of minutes
				sendString(minutes);
			}
		}
		//printing to last digit of seconds
		setDdRamAddress(0x06); // setting adress to beggining of seconds
		sendString(seconds);
	}
}

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
	unsigned int c;
	for (c = 0; c < 755; c++);
}

void timer_delay(void){
	
	unsigned char a=1;  
	TMOD = 0x01;
	while (a != 0){
		TL0 = 0xAF;
		TH0 = 0x3C;
		TR0 = 1;
		while (!TF0) ;
		TR0 = 0;
		TF0 = 0;
		a = a-1;

	}
		
}

// To make the interrupt work correctly with Edsim51
void _sdcc_gsinit_startup(void) {

        __asm
                mov sp, #0x5F
        __endasm;
        main();
}

void int0_isr (void) __interrupt (0) __using (1){
	 position = 0;
	 setDdRamAddress(position);
	 while (P3_2 == 0){
		timeMode();
	 }
}

void int2_isr (void) __interrupt (2) __using (1){
	 position = 40;
	 setDdRamAddress(position);
	 while (P3_3 == 0){
		dateMode();
	 }
}

void timeMode(void){
	unsigned char row;   // Contains the required mask to clear one of the rows at a time
	unsigned char col;   // Contains the output of the columns
	// unsigned char keypad[4][3] = {   // This array contains the ASCII of the keypad keys
		// {'3','2','1'},
		// {'6','5','4'},
		// {'9','8','7'},
		// {'#','0','*'}
	// };
	//unsigned char keypad[12] = {'3','2','1','6','5','4','9','8','7','#','0','*'};
	unsigned char i;		
	unsigned char gotkey = 0;
	row = 0xf7;  // The first row (connected to P0.3) will be zero
	for (i=0;i<4;++i){ // loop over the 4 rows
		
		P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
		P0 = P0 & row; // clear one row at a time
		col = P0 & 0x70;  // Read the 3 columns
		
		if (col != 0x70){ // If any column is zero i.e. a key is pressed
			col = (~col) & 0x70;  // because the selected column returns zero
			col = col >> 5;       // The column variable now contain the number of the selected column
			
			// figuring out which key was pressed because keypad array wont work.
			if (i == 3 && col == 0 ){
				gotkey = '#';
			}
			else if (i == 3 && col == 2){
				gotkey = '*';
			}
			else if (i == 3 && col == 1){
				gotkey = '0';
			}
			//if number other than 0
			else{
				//integer value = (3*(i+1) - col) on keyboard
				gotkey = (3*(i+1) - col) + 48 ;
			}
			
			// gotkey = keypad[i][col]; // Get the ASCII of the corresponding pressed key
			//gotkey = keypad[(i*3) + col]; // Get the ASCII of the corresponding pressed key
			big_delay();
			if (gotkey == '#'){
				position++;
				if (position == 8){
					position = 0;
				}
				setDdRamAddress(position);// moving cursor to right
			}
			else if (gotkey == '*'){
				position--;
				if (position == -1){
					position = 7;
				}
				setDdRamAddress(position);// moving cursor to left
			}
			else{
				updateTime(gotkey);
				position++;
				if (position == 8){
					position = 0;
					setDdRamAddress(position);
				}
			}
			break;  // Since a key was detected -> Exit the for loop
		}
		row = row >> 1;   // No key is detected yet, try the next row
		row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
	}
}

void dateMode(void){
	unsigned char row;   // Contains the required mask to clear one of the rows at a time
	unsigned char col;   // Contains the output of the columns
	unsigned char i;		
	unsigned char gotkey = 0;
	row = 0xf7;  // The first row (connected to P0.3) will be zero
	for (i=0;i<4;++i){ // loop over the 4 rows
		
		P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
		P0 = P0 & row; // clear one row at a time
		col = P0 & 0x70;  // Read the 3 columns
		
		if (col != 0x70){ // If any column is zero i.e. a key is pressed
			col = (~col) & 0x70;  // because the selected column returns zero
			col = col >> 5;       // The column variable now contain the number of the selected column
			
			// figuring out which key was pressed because keypad array wont work.
			if (i == 3 && col == 0 ){
				gotkey = '#';
			}
			else if (i == 3 && col == 2){
				gotkey = '*';
			}
			else if (i == 3 && col == 1){
				gotkey = '0';
			}
			//if number other than 0
			else{
				//integer value = (3*(i+1) - col) on keyboard
				gotkey = (3*(i+1) - col) + 48 ;
			}
			big_delay();
			if (gotkey == '#'){
				position++;
				if (position == 48){
					position = 40;
				}
				setDdRamAddress(position);// moving cursor to right
			}
			else if (gotkey == '*'){
				position--;
				if (position == 39){
					position = 47;
				}
				setDdRamAddress(position);// moving cursor to left
			}
			else{
				updateDate(gotkey);
				position++;
				if (position == 48){
					position = 40;
					setDdRamAddress(position);
				}
			}
			break;  // Since a key was detected -> Exit the for loop
		}
		row = row >> 1;   // No key is detected yet, try the next row
		row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
	}
	
	
}

void updateTime(char new){
	// hours
	if(position ==  0|| position == 1){
		if (position == 0){
			// error checking for hours
			if (new > '2' || (new == '2' && hours[1] >'3') ) {
				position --;
				return;
			}
			hours[0] = new;
		}
		else{
			// more error checking for hours
			if(hours[0] == '2' && new > '3'){
				position --;
				return;
			}
			hours[1] = new;
		}
	}
	// minutes
	else if (position == 3 || position == 4){
		if (position == 3){
			// error checking for minutes
			if (new > '5'){
				position --;
				return;
			}
			minutes[0] = new;
		}
		else{
			minutes[1] = new;
		}
	}
	//seconds
	else if (position == 6 || position == 7){
		if (position == 6){
			// error checking for seconds
			if (new > '5'){
				position --;
				return;
			}
			seconds[0] = new;
		}
		else{
			seconds[1] = new;
		}
	}
	//else its on colons, do nothing 
	else{
		position --;
		return;
	}
	sendChar(new);
}

void updateDate(char new){ 
	int temp ;
	// days
	if(position ==  40|| position == 41){
		// position --; 
		// return;
		if (position == 40){
			temp = ((new-48) * 10) + (days[1] -48) ;// new date if accepting user input
			// error checking for days
			if( temp > numDays[atoi(month)-1] ){ // if past max date of currently set month, dont update
				position --;
				return;
			}
			days[0] = new;
		}
		else{
			//temp = ( (days[0] - 48)* 10) + (new - 48); // new date if accepting user input
			// more error checking for days
			// setDdRamAddress(48);
			// sendChar( (temp%10) + 48 );
			// sendChar( (temp/10) + 48 );
			// sendChar( ( (numDays[atoi(month) -1] ) / 10 ) + 48 );
			// sendChar( ( (numDays[atoi(month) -1] ) % 10 ) + 48 );
			 // setDdRamAddress(40);
			 
			// if( temp > numDays[atoi(month)-1] ){ // if past max date of currently set month, dont update
				// position --;
				// return;
			// }
			days[1] = new;
			// new = 'q';
			// position --; 
			// return;
		}
	}
	//month
	else if (position == 43 || position == 44){
		if (position == 43){
			// error checking for month
			if(new > '1' || (new == '1' && month[1] > '2') ){
				position --;
				return;
			}
			month[0] = new;
		}
		else{
			// more error checking for month
			if(month[0] == '1' && new > '2'){
				position --;
				return;
			}
			month[1] = new;
		}
	}
	//year
	else if (position == 46 || position == 47){
		if (position == 46){
			year[0] = new;
		}
		else{
			year[1] = new;
		}
	}
	//else its on dash, dont update 
	else{
		position --;
		return;
	}
	sendChar(new);


}


