__author__ = 'Cody Giles'
__license__ = "Creative Commons Attribution-ShareAlike 3.0 Unported License"
__version__ = "1.0"
__maintainer__ = "Cody Giles"
__status__ = "Production"
import subprocess
import smtplib
from email.mime.text import MIMEText
import datetime
import socket
import traceback
import time
def connect_type(word_list):
 """ This function takes a list of words, then, depeding which key word, returns the
corresponding
 internet connection type as a string. ie) 'ethernet'.
 """
 if 'wlan0' in word_list or 'wlan1' in word_list:
 con_type = 'wifi'
 elif 'eth0' in word_list:
 con_type = 'ethernet'
 else:
 con_type = 'current'
 return con_type
# Change to your own account information
# Account Information
to = 'mdruiz@uci.edu' # Email to send to. (CAN BE ANYTHING)
gmail_user = 'mdruiz@edu.com' # Email to send from. (MUST BE GMAIL)
gmail_password = '' # Gmail password.
tries = 0
while True:
 if (tries > 60):
 exit()
 print str(tries) + "\n"
 try:
 smtpserver = smtplib.SMTP('smtp.gmail.com', 587, timeout=30) # Server to use.
 break
 except Exception as e:
 tries = tries + 1
 #logging.error(traceback.format_exc())
 print e.__doc__
 print e.message
 time.sleep(1)

smtpserver.ehlo() # Says 'hello' to the server
smtpserver.starttls() # Start TLS encryption
smtpserver.ehlo()
smtpserver.login(gmail_user, gmail_password) # Log in to server
today = datetime.date.today() # Get current time/date
arg='ip route list' # Linux command to retrieve ip addresses.
# Runs 'arg' in a 'hidden terminal'.
p=subprocess.Popen(arg,shell=True,stdout=subprocess.PIPE)
data = p.communicate() # Get data from 'p terminal'.
# Split IP text block into three, and divide the two containing IPs into words.
ip_lines = data[0].splitlines()
split_line = ip_lines[1].split()
# con_type variables for the message text. ex) 'ethernet', 'wifi', etc.
ip_type = connect_type(split_line)
"""Because the text 'src' is always followed by an ip address,
we can use the 'index' function to find 'src' and add one to
get the index position of our ip.
"""
ipaddr = split_line[split_line.index('src')+1]
# Creates a sentence for each ip address.
my_ip = 'Your %s ip is %s' % (ip_type, ipaddr)
# Creates the text, subject, 'from', and 'to' of the message.
msg = MIMEText(my_ip + "\n")
msg['Subject'] = 'IPs For RaspberryPi on %s' % today.strftime('%b %d %Y')
msg['From'] = gmail_user
msg['To'] = to
# Sends the message
smtpserver.sendmail(gmail_user, [to], msg.as_string())
# Closes the smtp server.
smtpserver.quit()