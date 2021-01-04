;; Auto-generated. Do not edit!


(when (boundp 'ros_imu_pub::imu_data)
  (if (not (find-package "ROS_IMU_PUB"))
    (make-package "ROS_IMU_PUB"))
  (shadow 'imu_data (find-package "ROS_IMU_PUB")))
(unless (find-package "ROS_IMU_PUB::IMU_DATA")
  (make-package "ROS_IMU_PUB::IMU_DATA"))

(in-package "ROS")
;;//! \htmlinclude imu_data.msg.html


(defclass ros_imu_pub::imu_data
  :super ros::object
  :slots (_heading _roll _pitch _lin_x _lin_y _lin_z ))

(defmethod ros_imu_pub::imu_data
  (:init
   (&key
    ((:heading __heading) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:lin_x __lin_x) 0.0)
    ((:lin_y __lin_y) 0.0)
    ((:lin_z __lin_z) 0.0)
    )
   (send-super :init)
   (setq _heading (float __heading))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _lin_x (float __lin_x))
   (setq _lin_y (float __lin_y))
   (setq _lin_z (float __lin_z))
   self)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:lin_x
   (&optional __lin_x)
   (if __lin_x (setq _lin_x __lin_x)) _lin_x)
  (:lin_y
   (&optional __lin_y)
   (if __lin_y (setq _lin_y __lin_y)) _lin_y)
  (:lin_z
   (&optional __lin_z)
   (if __lin_z (setq _lin_z __lin_z)) _lin_z)
  (:serialization-length
   ()
   (+
    ;; float32 _heading
    4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _lin_x
    4
    ;; float32 _lin_y
    4
    ;; float32 _lin_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lin_x
       (sys::poke _lin_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lin_y
       (sys::poke _lin_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lin_z
       (sys::poke _lin_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lin_x
     (setq _lin_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lin_y
     (setq _lin_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lin_z
     (setq _lin_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_imu_pub::imu_data :md5sum-) "1347b952cec5150e8281187595637f91")
(setf (get ros_imu_pub::imu_data :datatype-) "ros_imu_pub/imu_data")
(setf (get ros_imu_pub::imu_data :definition-)
      "# GPS data includes two latitude readings, two longitude readings, and two sspeed over ground readings

float32 heading
float32 roll
float32 pitch
float32 lin_x
float32 lin_y
float32 lin_z

")



(provide :ros_imu_pub/imu_data "1347b952cec5150e8281187595637f91")


