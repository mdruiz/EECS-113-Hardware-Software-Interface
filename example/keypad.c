/*
 | file: keypad.c
 | this code performs keypad scanning and puts the ASCII of 
 | the detected key on P1 to be displayed on the connected 
 | LEDs.
 | compile as follows:
 | To compile, use the commands
 | % sdcc --model-small -mmcs51 --Werror -I. -c keypad.c
 | % sdcc --model-small -mmcs51 --Werror -I. --iram-size 0x100 \
 |   --code-size 0x1000 --code-loc 0x0000 --stack-loc 0x30 --data-loc 0x30\
 |   --out-fmt-ihx keypad.rel
 | % packihx keypad.ihx > keypad.hex
 */
#include <8051.h>

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
	while(1){
		row = 0xf7;  // The first row (connected to P0.3) will be zero
		
		for (i=0;i<4;++i){ // loop over the 4 rows
			
			P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
			P0 = P0 & row; // clear one row at a time
			col = P0 & 0x70;  // Read the 3 columns
			if (col != 0x70){ // If any column is zero i.e. a key is pressed
				col = (~col) & 0x70;  // because the selected column returns zero
				col = col >> 5;       // The column variable now contain the number of the selected column
				gotkey = keypad[i][col]; // Get the ASCII of the corresponding pressed key
				break;  // Since a key was detected -> Exit the for loop
			}
			row = row >> 1;   // No key is detected yet, try the next row
			row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
			
		}
		
		if (gotkey != 0){break;}  // Since a key was detected -> exit the while loop
		
	}

	P1 = ~gotkey;  // Send the detected key to the output
	
	while(1){}
		
}

