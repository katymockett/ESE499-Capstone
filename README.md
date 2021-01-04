This project contains code to read data in from line tracker, camera, gps, imu, lidar, and ultrasonic sensors. 

Each of these sensors publishes their data to their own topic, and the central node subscribes to these topics.

The central node then publishes its own topic with an array of commands for the servos.

Lastly, the PWM board subscribes to the central node's topic.