#!/usr/bin/env python

import time
import rospy
from ros_pwm_sub.msg import Servo
from ros_pwm_sub.msg import ServoArray

def callback(data):
	rospy.loginfo(rospy.get_caller_id() + "I heard %s", data)

def pwm_sub():
	print("Subscribing to /servo_com")
	rospy.init_node('pwm_sub',anonymous=True)
	rospy.Subscriber("/servo_com",ServoArray,callback)
	rospy.spin()

if __name__ == '__main__':
	pwm_sub()
