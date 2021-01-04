;; Auto-generated. Do not edit!


(when (boundp 'ros_i2cpwm_board_sub::IntValue)
  (if (not (find-package "ROS_I2CPWM_BOARD_SUB"))
    (make-package "ROS_I2CPWM_BOARD_SUB"))
  (shadow 'IntValue (find-package "ROS_I2CPWM_BOARD_SUB")))
(unless (find-package "ROS_I2CPWM_BOARD_SUB::INTVALUE")
  (make-package "ROS_I2CPWM_BOARD_SUB::INTVALUE"))
(unless (find-package "ROS_I2CPWM_BOARD_SUB::INTVALUEREQUEST")
  (make-package "ROS_I2CPWM_BOARD_SUB::INTVALUEREQUEST"))
(unless (find-package "ROS_I2CPWM_BOARD_SUB::INTVALUERESPONSE")
  (make-package "ROS_I2CPWM_BOARD_SUB::INTVALUERESPONSE"))

(in-package "ROS")





(defclass ros_i2cpwm_board_sub::IntValueRequest
  :super ros::object
  :slots (_value ))

(defmethod ros_i2cpwm_board_sub::IntValueRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass ros_i2cpwm_board_sub::IntValueResponse
  :super ros::object
  :slots (_error ))

(defmethod ros_i2cpwm_board_sub::IntValueResponse
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

(defclass ros_i2cpwm_board_sub::IntValue
  :super ros::object
  :slots ())

(setf (get ros_i2cpwm_board_sub::IntValue :md5sum-) "0f0a503a6dfd41f41ab6b6db4044064a")
(setf (get ros_i2cpwm_board_sub::IntValue :datatype-) "ros_i2cpwm_board_sub/IntValue")
(setf (get ros_i2cpwm_board_sub::IntValue :request) ros_i2cpwm_board_sub::IntValueRequest)
(setf (get ros_i2cpwm_board_sub::IntValue :response) ros_i2cpwm_board_sub::IntValueResponse)

(defmethod ros_i2cpwm_board_sub::IntValueRequest
  (:response () (instance ros_i2cpwm_board_sub::IntValueResponse :init)))

(setf (get ros_i2cpwm_board_sub::IntValueRequest :md5sum-) "0f0a503a6dfd41f41ab6b6db4044064a")
(setf (get ros_i2cpwm_board_sub::IntValueRequest :datatype-) "ros_i2cpwm_board_sub/IntValueRequest")
(setf (get ros_i2cpwm_board_sub::IntValueRequest :definition-)
      "


int16 value
---
int16 error


")

(setf (get ros_i2cpwm_board_sub::IntValueResponse :md5sum-) "0f0a503a6dfd41f41ab6b6db4044064a")
(setf (get ros_i2cpwm_board_sub::IntValueResponse :datatype-) "ros_i2cpwm_board_sub/IntValueResponse")
(setf (get ros_i2cpwm_board_sub::IntValueResponse :definition-)
      "


int16 value
---
int16 error


")



(provide :ros_i2cpwm_board_sub/IntValue "0f0a503a6dfd41f41ab6b6db4044064a")


