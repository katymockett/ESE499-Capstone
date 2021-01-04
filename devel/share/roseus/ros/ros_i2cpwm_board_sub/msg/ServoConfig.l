;; Auto-generated. Do not edit!


(when (boundp 'ros_i2cpwm_board_sub::ServoConfig)
  (if (not (find-package "ROS_I2CPWM_BOARD_SUB"))
    (make-package "ROS_I2CPWM_BOARD_SUB"))
  (shadow 'ServoConfig (find-package "ROS_I2CPWM_BOARD_SUB")))
(unless (find-package "ROS_I2CPWM_BOARD_SUB::SERVOCONFIG")
  (make-package "ROS_I2CPWM_BOARD_SUB::SERVOCONFIG"))

(in-package "ROS")
;;//! \htmlinclude ServoConfig.msg.html


(defclass ros_i2cpwm_board_sub::ServoConfig
  :super ros::object
  :slots (_servo _center _range _direction ))

(defmethod ros_i2cpwm_board_sub::ServoConfig
  (:init
   (&key
    ((:servo __servo) 0)
    ((:center __center) 0)
    ((:range __range) 0)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _servo (round __servo))
   (setq _center (round __center))
   (setq _range (round __range))
   (setq _direction (round __direction))
   self)
  (:servo
   (&optional __servo)
   (if __servo (setq _servo __servo)) _servo)
  (:center
   (&optional __center)
   (if __center (setq _center __center)) _center)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; int16 _servo
    2
    ;; int16 _center
    2
    ;; int16 _range
    2
    ;; int16 _direction
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _servo
       (write-word _servo s)
     ;; int16 _center
       (write-word _center s)
     ;; int16 _range
       (write-word _range s)
     ;; int16 _direction
       (write-word _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _servo
     (setq _servo (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _center
     (setq _center (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _range
     (setq _range (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _direction
     (setq _direction (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ros_i2cpwm_board_sub::ServoConfig :md5sum-) "d258bdc7108a9660981de680cfa4372d")
(setf (get ros_i2cpwm_board_sub::ServoConfig :datatype-) "ros_i2cpwm_board_sub/ServoConfig")
(setf (get ros_i2cpwm_board_sub::ServoConfig :definition-)
      "# the ServoConfig message is used to assign specific configuration
# data to a servo. the data is needed to normalize servos to
# common values to isolate variations from the rest of the user's
# robot motion code. 

int16 servo
int16 center
int16 range
int16 direction

")



(provide :ros_i2cpwm_board_sub/ServoConfig "d258bdc7108a9660981de680cfa4372d")


