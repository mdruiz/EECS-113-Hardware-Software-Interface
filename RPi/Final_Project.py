# EECS 113 
# Python code for Simon game.


from gpiozero import LED, Button
from time import sleep,clock, time
import random 

led1 = LED(5) 	#GREEN 
led2 = LED(22) 	#RED
led3 = LED(24)	#BLUE
led4 = LED(25)	#YELLOW

button1 = Button(13) 	#GREEN 
button2 = Button(4)	#RED
button3 = Button(18)  	#BLUE
button4 = Button(12) 	#YELLOW

score = 0
sequence = []



def begin():
	led1.on()
	sleep(0.2)
	
	led2.on()
	sleep(0.2)
		
	led3.on()
	sleep(0.2)
		
	led4.on()
	sleep(0.2)
		
	switchoff()


def switchoff():
	led1.off()
	led2.off()
	led3.off()
	led4.off()


def switchon(input):
	
	if input == "Blue":
		led1.on()
	
	if input == "Yellow":
		led2.on()
	
	if input == "Red":
		led3.on()
	
	if input == "Green":
		led4.on()
		
def getinput():
	if button1 == false:
		print("Blue is pressed.")
		return ("Blue")
		
	if button2 == false:
		print("Yellow is pressed.")
		return ("Yellow")
		
	if button3 == false:
		print("Red is pressed.")
		return ("Red")
		
	if button4 == false:
		print("Green is pressed.")
		return ("Green")	

def main():
	begin() #test to make sure that all the lights work and the game 
		#can begin.
	
	while True:
		sequence.append(random.choice(["Blue","Yellow","Red","Green"]))
		j=0
		for i in range (score + 1):
			switchon(sequence[i])
			sleep(0.2)
			switchoff()
			sleep(0.2)
			
		# while(j < ( score + 1 ) ):
			# button_pressed = getinput()
			# sleep(0.2)
			# if button_pressed == sequence[j] :
				# print("Correct")
				# switchon(button_pressed)
				# sleep(0.2)
				# switchoff()
				# j = j + 1
			# else :
				# print("Incorrect Button Pressed!")
				# sleep(0.2)
				# break
		
		
		score = score + 1
		
		
		button1.wait_for_press()
		
		if score == 10 :
			break

	# After the player has lost, send email with score

	begin()
	switchoff()
	begin()
	switchoff()
			
	





			
	