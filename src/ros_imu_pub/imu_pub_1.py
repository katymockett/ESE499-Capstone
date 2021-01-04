#!/usr/bin/env python
 
import serial
import time
import sys
import rospy
import signal
from ros_imu_pub.msg import imu_data

import logging
from Adafruit_BNO055 import BNO055

def signal_handler(signal, frame): # ctrl + c -> exit program
        print('You pressed Ctrl+C!')
        sys.exit(0)
signal.signal(signal.SIGINT, signal_handler)

class imu():
    def __init__(self):
        rospy.init_node('imu', anonymous=True)
        self.pub = rospy.Publisher('/imu_data',imu_data, queue_size=1)
        self.r = rospy.Rate(10) # 10Hz

    def data_sender(self,readings):
        msg = imu_data()
        msg.data=readings
	print(msg.data)
        self.pub.publish(msg)

# Create and configure the BNO sensor connection.  Make sure only ONE of the
# below 'bno = ...' lines is uncommented:
# Raspberry Pi configuration with serial UART and RST connected to GPIO 18:
bno = BNO055.BNO055(serial_port='/dev/ttyUSB0', rst=18)
# BeagleBone Black configuration with default I2C connection (SCL=P9_19, SDA=P9_20),
# and RST connected to pin P9_12:
#bno = BNO055.BNO055(rst='P9_12')

# Initialize the BNO055 and stop if something went wrong.
if not bno.begin():
    raise RuntimeError('Failed to initialize BNO055! Is the sensor connected?')

# Print system status and self test result.
status, self_test, error = bno.get_system_status()
print('System status: {0}'.format(status))
print('Self test result (0x0F is normal): 0x{0:02X}'.format(self_test))
# Print out an error if system status is in error mode.
if status == 0x01:
    print('System error: {0}'.format(error))
    print('See datasheet section 4.3.59 for the meaning.')

print ('---------------------------IMU start----------------------------------')

try :
    while True :
    	# Read the Euler angles for heading, roll, pitch (all in degrees).
    	h, r, p = bno.read_euler()
  	# Orientation as a quaternion:
    	x,y,z,w = bno.read_quaterion()
	msg = imu_data()
	msg.heading = h
	msg.roll = r
	msg.pitch = p
	msg.lin_x = x
	msg.lin_y = y
	msg.lin_z = z
	sensor.data_sender(msg);
	sensor.r.sleep()

except (KeyboardInterrupt, SystemExit):
    sys.exit(0)