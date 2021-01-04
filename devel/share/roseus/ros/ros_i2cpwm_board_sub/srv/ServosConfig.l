;; Auto-generated. Do not edit!


(when (boundp 'ros_i2cpwm_board_sub::ServosConfig)
  (if (not (find-package "ROS_I2CPWM_BOARD_SUB"))
    (make-package "ROS_I2CPWM_BOARD_SUB"))
  (shadow 'ServosConfig (find-package "ROS_I2CPWM_BOARD_SUB")))
(unless (find-package "ROS_I2CPWM_BOARD_SUB::SERVOSCONFIG")
  (make-package "ROS_I2CPWM_BOARD_SUB::SERVOSCONFIG"))
(unless (find-package "ROS_I2CPWM_BOARD_SUB::SERVOSCONFIGREQUEST")
  (make-package "ROS_I2CPWM_BOARD_SUB::SERVOSCONFIGREQUEST"))
(unless (find-package "ROS_I2CPWM_BOARD_SUB::SERVOSCONFIGRESPONSE")
  (make-package "ROS_I2CPWM_BOARD_SUB::SERVOSCONFIGRESPONSE"))

(in-package "ROS")





(defclass ros_i2cpwm_board_sub::ServosConfigRequest
  :super ros::object
  :slots (_servos ))

(defmethod ros_i2cpwm_board_sub::ServosConfigRequest
  (:init
   (&key
    ((:servos __servos) (let (r) (dotimes (i 0) (push (instance ros_i2cpwm_board_sub::ServoConfig :init) r)) r))
    )
   (send-super :init)
   (setq _servos __servos)
   self)
  (:servos
   (&rest __servos)
   (if (keywordp (car __servos))
       (send* _servos __servos)
     (progn
       (if __servos (setq _servos (car __servos)))
       _servos)))
  (:serialization-length
   ()
   (+
    ;; ros_i2cpwm_board_sub/ServoConfig[] _servos
    (apply #'+ (send-all _servos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_i2cpwm_board_sub/ServoConfig[] _servos
     (write-long (length _servos) s)
     (dolist (elem _servos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_i2cpwm_board_sub/ServoConfig[] _servos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servos (let (r) (dotimes (i n) (push (instance ros_i2cpwm_board_sub::ServoConfig :init) r)) r))
     (dolist (elem- _servos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ros_i2cpwm_board_sub::ServosConfigResponse
  :super ros::object
  :slots (_error ))

(defmethod ros_i2cpwm_board_sub::ServosConfigResponse
  (:init
   (&key
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _error (round __error))
   self)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; int16 _error
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _error
       (write-word _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _error
     (setq _error (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass ros_i2cpwm_board_sub::ServosConfig
  :super ros::object
  :slots ())

(setf (get ros_i2cpwm_board_sub::ServosConfig :md5sum-) "29a8ed89c4fc7505dd84e9625c298b65")
(setf (get ros_i2cpwm_board_sub::ServosConfig :datatype-) "ros_i2cpwm_board_sub/ServosConfig")
(setf (get ros_i2cpwm_board_sub::ServosConfig :request) ros_i2cpwm_board_sub::ServosConfigRequest)
(setf (get ros_i2cpwm_board_sub::ServosConfig :response) ros_i2cpwm_board_sub::ServosConfigResponse)

(defmethod ros_i2cpwm_board_sub::ServosConfigRequest
  (:response () (instance ros_i2cpwm_board_sub::ServosConfigResponse :init)))

(setf (get ros_i2cpwm_board_sub::ServosConfigRequest :md5sum-) "29a8ed89c4fc7505dd84e9625c298b65")
(setf (get ros_i2cpwm_board_sub::ServosConfigRequest :datatype-) "ros_i2cpwm_board_sub/ServosConfigRequest")
(setf (get ros_i2cpwm_board_sub::ServosConfigRequest :definition-)
      "




ServoConfig[] servos

================================================================================
MSG: ros_i2cpwm_board_sub/ServoConfig
# the ServoConfig message is used to assign specific configuration
# data to a servo. the data is needed to normalize servos to
# common values to isolate variations from the rest of the user's
# robot motion code. 

int16 servo
int16 center
int16 range
int16 direction
---
int16 error

")

(setf (get ros_i2cpwm_board_sub::ServosConfigResponse :md5sum-) "29a8ed89c4fc7505dd84e9625c298b65")
(setf (get ros_i2cpwm_board_sub::ServosConfigResponse :datatype-) "ros_i2cpwm_board_sub/ServosConfigResponse")
(setf (get ros_i2cpwm_board_sub::ServosConfigResponse :definition-)
      "




ServoConfig[] servos

================================================================================
MSG: ros_i2cpwm_board_sub/ServoConfig
# the ServoConfig message is used to assign specific configuration
# data to a servo. the data is needed to normalize servos to
# common values to isolate variations from the rest of the user's
# robot motion code. 

int16 servo
int16 center
int16 range
int16 direction
---
int16 error

")



(provide :ros_i2cpwm_board_sub/ServosConfig "29a8ed89c4fc7505dd84e9625c298b65")


