/*
 | Code for running a counter on the LEDs with a delay of ~ 1 second using timer0
 | 
 | To compile, use the commands
 | % sdcc --model-small -mmcs51 --Werror -I. -c timer.c
 | % sdcc --model-small -mmcs51 --Werror -I. --iram-size 0x100 --code-size 0x1000 --code-loc 0x0000 --stack-loc 0x30 --data-loc 0x30 --out-fmt-ihx timer.rel
 | % packihx timer.ihx > timer.hex
 */
#include <8051.h>

void timer_delay(void);


void main(void) {
	
	char count = 0;
	
	while (1){
		
		P1 = ~ count;
		timer_delay();
		count++;
	}
		
}


void timer_delay(void){
	
	unsigned char a=20;  
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
