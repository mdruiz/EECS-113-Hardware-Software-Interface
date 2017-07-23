/*
 | Code for running a counter on the LEDs with a delay of ~ 50ms using timer0
 | SW0 connected to P3.2 is used to reset the counting through INT0
 | EdSim51 DI must be changed such that SW0 should be the ONLY peripheral connected to P3.2 
 | To compile, use the commands
 | % sdcc --model-small -mmcs51 --Werror -I. -c interrupt.c
 | % sdcc --model-small -mmcs51 --Werror -I. --iram-size 0x100 --code-size 0x1000 --code-loc 0x0000 --stack-loc 0x30 --data-loc 0x30 --out-fmt-ihx interrupt.rel
 | % packihx interrupt.ihx > interrupt.hex 
 */
#include <8051.h>

char count = 0;

void timer_delay(void);

void int0_isr (void) __interrupt (0) __using (1){
	
	while (P3_2 == 0){
		
		count = 0;
		P1 = ~ count;
	}

}

void main(void) {
	
	IT0 = 1;   // make INT0 to edge triggered
	IE = 0x81;  //enable external interupt0
	count = 0;
	
	while (1){
		
		P1 = ~ count;
		timer_delay();
		count++;
	}
	
}


void timer_delay(void){
	
	TMOD = 0x01;
	TL0 = 0xAF;
	TH0 = 0x3C;
	TR0 = 1;
	while (!TF0) ;
	TR0 = 0;
	TF0 = 0;

		
}

// To make the interrupt work correctly with Edsim51
void _sdcc_gsinit_startup(void) {

        __asm
                mov sp, #0x5F
        __endasm;
        main();
}

