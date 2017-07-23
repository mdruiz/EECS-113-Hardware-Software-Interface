import smtplib
from email.mime.text import MIMEText
import datetime
import socket
import time
import getpass

import RPi.GPIO as GPIO

# Account Information
RECIPIENT = 'xxxxxx@gmail.com' 	# Email to send to. (CAN BE ANYTHING)
SENDER = 'xxxxxx@gmail.com' 	# Email to send from. (MUST BE GMAIL)
PASSWORD = ''

def sendSOS():
	print("Sending")
	tries = 0
	while True:
		if (tries > 10):
			exit()
		print str(tries) + "\n"
		try:
			smtpserver = smtplib.SMTP('smtp.gmail.com', 587, timeout=30)
			break
		except Exception as e:
			tries = tries + 1
			time.sleep(1)

	smtpserver.ehlo() 	# Says 'hello' to the server
	smtpserver.starttls() 	# Start TLS encryption
	smtpserver.ehlo()

	smtpserver.login(SENDER, PASSWORD) # Log in to server
	today = datetime.date.today() # Get current time/date
	
	# Creates the text, subject, 'from', and 'to' of the message.
	msg = MIMEText("Where are you?\n")
	msg['Subject'] = 'SOS %s' % today.strftime('%b %d %Y')
	msg['From'] = SENDER
	msg['To'] = RECIPIENT
	# Sends the message
	smtpserver.sendmail(SENDER, [RECIPIENT], msg.as_string())
	# Closes the smtp server.
	smtpserver.quit()

def driveLEDs(STATE):
	if STATE:
		GPIO.output(LED1, True)
		GPIO.output(LED2, False)
	else:
		GPIO.output(LED1, False)
		GPIO.output(LED2, True)

STATE = True
QUANTUM = 0.25
ELAPSED = 0.0

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
LED1 = 18 # Green
LED2 = 23 # Red
SWITCH = 16
GPIO.setup(LED1, GPIO.OUT)
GPIO.setup(LED2, GPIO.OUT)
GPIO.setup(SWITCH, GPIO.IN)

PASSWORD = getpass.getpass('Your Gmail Password:')


if __name__ == '__main__':
	try:
		print 'Press Ctrl-C to quit.'
		while True:
			driveLEDs( STATE )
			time.sleep(QUANTUM)
			ELAPSED = ELAPSED + QUANTUM
			print("Time: " + str(ELAPSED))
			if( STATE != GPIO.input(SWITCH) ):
				STATE = GPIO.input(SWITCH)
				ELAPSED = 0
				print("Switching to: " + str(STATE))
			elif (ELAPSED > 30):
				sendSOS()
				ELAPSED = 0
	finally:
		GPIO.cleanup()