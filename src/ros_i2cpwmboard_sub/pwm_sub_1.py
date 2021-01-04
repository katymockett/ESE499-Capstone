# Using code fragments / helper method from Tony DiCola

#!/usr/bin/env python

import time
from board import SCL,SDA
import busio
import Adafruit_PCA9685
import rospy
from i2cpwm_board.msg import Servo
from i2cpwm_board.msg import ServoArray

def callback(data):
	rospy.loginfo(rospy.get_caller_id() + "I heard %s", data)

class pwm():
	rospy.init_node('pwm_sub_1',anonymous=True)

	# read from central node
	print("Subscribing to /servo_com")
	sub = rospy.Subscriber("/servo_com",ServoArray,callback)

	# Initialise the PCA9685 using the default address (0x40).
	pwm = Adafruit_PCA9685.PCA9685()

	# Alternatively specify a different address and/or bus:
	#pwm = Adafruit_PCA9685.PCA9685(address=0x41, busnum=2)

	# Set frequency to 60hz, good for servos.
	pwm.set_pwm_freq(60)

	while not rospy.is_shutdown():
    		# Move servo on channel 4 to 600.
    		pwm.set_pwm(0, 0, 600)
    		time.sleep(0.5)

if __name__ == '__main__':
	print("Starting PWM")
	pwm()

# Helper function to make setting a servo pulse width simpler.
def set_servo_pulse(channel, pulse):
    pulse_length = 1000000    # 1,000,000 us per second
    pulse_length //= 60       # 60 Hz
    print('{0}us per period'.format(pulse_length))
    pulse_length //= 4096     # 12 bits of resolution
    print('{0}us per bit'.format(pulse_length))
    pulse *= 1000
    pulse //= pulse_length
    pwm.set_pwm(channel, 0, pulse)
