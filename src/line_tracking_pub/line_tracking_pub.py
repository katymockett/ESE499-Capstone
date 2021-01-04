#!/usr/bin/env python

import RPi.GPIO as GPIO
import time
import sys
import rospy
import signal
import numpy as np
from ros_linetracking_pub.msg import linetracking_data

def signal_handler(signal, frame): # ctrl + c -> exit program
        print('You pressed Ctrl+C!')
        sys.exit(0)
signal.signal(signal.SIGINT, signal_handler)

class linetracking():
    def __init__(self):
        rospy.init_node('linetracking', anonymous=True)
        self.pub = rospy.Publisher('/line_dists',linetracking_data, queue_size=1)
        self.r = rospy.Rate(10) # 10Hz

    def data_sender(self,readings):
        msg = linetracking_data()
	print(msg)
        msg.data=readings
	print(msg.data)
        self.pub.publish(msg)

# set up pins
GPIO.setmode(GPIO.BCM)
GPIO.setup(17, GPIO.IN)
GPIO.setup(27, GPIO.IN)
GPIO.setup(22, GPIO.IN)
GPIO.setup(5, GPIO.IN)
GPIO.setup(6, GPIO.IN)

sensor=linetracking()
time.sleep(0.5)
print ('----------------------------linetracking start-------------------------------')
try :
    while True :
	L11 =GPIO.input(17)
        L12 =GPIO.input(27)
	L13 =GPIO.input(22)
	L14 =GPIO.input(5)
	L15 =GPIO.input(6)
	mess = linetracking_data()
	mess.lt_data = np.array([L11,L12,L13,L14,L15]) 
	print(mess)
	sensor.data_sender(mess)

	sensor.r.sleep()
	

except (KeyboardInterrupt, SystemExit):
    GPIO.cleanup()
    sys.exit(0)
except:
    GPIO.cleanup()