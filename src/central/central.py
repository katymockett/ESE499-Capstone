#!/usr/bin/env python
import rospy
import time
import numpy as np
from std_msgs.msg import Float32MultiArray
from std_msgs.msg import Float32
from std_msgs.msg import String
from sensor_msgs.msg import Image
from sensor_msgs.msg import LaserScan
from i2cpwm_board.msg import Servo
from i2cpwm_board.msg import ServoArray

def callback(data):
	rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)

def callback_image(data):
	rospy.loginfo(rospy.get_caller_id() + "I heard from raspicam_node, converting image")

def central():
	rospy.init_node('central', anonymous=True)
	
	# read from line tracking
	print("Subscribing to /line_dists")
	sub1 = rospy.Subscriber("/line_dists", Float32MultiArray,callback)
	
	# read from gps
	print("Subscribing to /gps_readings")
	sub2 = rospy.Subscriber('/gps_readings',String,callback)

	# read from imu
	print("Subscribing to /imu_data")
	sub3 = rospy.Subscriber('/imu_data',Float32MultiArray,callback)

	# read from camera
	print("Subscribing to /raspicam_node/image")
	sub4 = rospy.Subscriber('/raspicam_node/image',Image,callback_image)

	# read from ultrasonic 
	print("Subscribing to /sonar_dist")
	sub5 = rospy.Subscriber('/sonar_dist',Float32,callback)

	# read from lidar
	print("Subscribing to /scan")
	sub6 = rospy.Subscriber('/scan',LaserScan,callback)

	while not rospy.is_shutdown():
		        pub = rospy.Publisher('/servo_com',ServoArray, queue_size=1)
        		r = rospy.Rate(10) # 10Hz
			servo1 = Servo()
			servo1.servo = 4
			servo1.value = 600
			servo2 = Servo()
			servo2.servo = 5
			servo2.value = 600
			servo3 = Servo()
			servo3.servo = 6
			servo3.value = 600
			servo4 = Servo()
			servo4.servo = 7
			servo4.value = 600
			array = []
			array.append(servo1)
			array.append(servo2)
			array.append(servo3)
			array.append(servo4)
			msg = ServoArray()
			msg = array
			pub.publish(msg)
			print("Publishing to /servo_com")
			rospy.sleep(0.1)

if __name__ == '__main__':
	print("Starting central")
	central()

# "To make a node both a publisher and a subscriber, you need to
# define both a publisher object and a subscriber object AND a 
# callback for the subscriber object"

