# Written by Limor "Ladyada" Fried for Adafruit Industries, (c) 2015
# This code is released into the public domain
import time
import os
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)
DEBUG = 1

# read SPI data from MCP3008 chip, 8 possible adc's (0 thru 7)
def readadc(adcnum, clockpin, mosipin, misopin, cspin):
	if ((adcnum > 7) or (adcnum < 0)):
		return -1
	GPIO.output(cspin, True)
	GPIO.output(clockpin, False) # start clock low
	GPIO.output(cspin, False) # bring CS low
 
	commandout = adcnum
	commandout |= 0x18 # start bit + single-ended bit
	commandout <<= 3 # we only need to send 5 bits here
	for i in range(5):
		if (commandout & 0x80):
			GPIO.output(mosipin, True)
		else:
			GPIO.output(mosipin, False)
		commandout <<= 1
		GPIO.output(clockpin, True)
		GPIO.output(clockpin, False)

	adcout = 0
	# read in one empty bit, one null bit and 10 ADC bits
	for i in range(12):
		GPIO.output(clockpin, True)
		GPIO.output(clockpin, False)
		adcout <<= 1
		if (GPIO.input(misopin)):
			adcout |= 0x1
	
	GPIO.output(cspin, True)

	adcout >>= 1 # first bit is 'null' so drop it
	return adcout

# change these as desired - they're the pins connected from the
# SPI port on the ADC to the Cobbler
SPICLK = 18
SPIMISO = 23
SPIMOSI = 24
SPICS = 25

# set up the SPI interface pins
GPIO.setup(SPIMOSI, GPIO.OUT)
GPIO.setup(SPIMISO, GPIO.IN)
GPIO.setup(SPICLK, GPIO.OUT)
GPIO.setup(SPICS, GPIO.OUT)

LED1 = 4
LED2 = 17
LED3 = 27
LED4 = 22

# set up the SPI interface pins
GPIO.setup(LED1, GPIO.OUT)
GPIO.setup(LED2, GPIO.OUT)
GPIO.setup(LED3, GPIO.OUT)
GPIO.setup(LED4, GPIO.OUT)

# 10k trim pot connected to adc channel #0
potentiometer_adc = 0;

while True:
	# read the analog pin
	trim_pot = readadc(potentiometer_adc, SPICLK, SPIMOSI, SPIMISO, SPICS)

	if DEBUG:
		print "trim_pot:", trim_pot
	if ( trim_pot > 0 ):
		GPIO.output(LED1, True)
	else:
		GPIO.output(LED1, False)
	if ( trim_pot > 64 ):
		GPIO.output(LED2, True)
	else:
		GPIO.output(LED2, False)
	if ( trim_pot > 128 ):
		GPIO.output(LED3, True)
	else:
		GPIO.output(LED3, False)
	if ( trim_pot > 192 ):
		GPIO.output(LED4, True)
	else:
		GPIO.output(LED4, False)
	
	# hang out and do nothing for a half second
	time.sleep(0.5)