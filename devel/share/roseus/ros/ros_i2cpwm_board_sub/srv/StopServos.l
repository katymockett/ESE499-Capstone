;; Auto-generated. Do not edit!


(when (boundp 'ros_i2cpwm_board_sub::StopServos)
  (if (not (find-package "ROS_I2CPWM_BOARD_SUB"))
    (make-package "ROS_I2CPWM_BOARD_SUB"))
  (shadow 'StopServos (find-package "ROS_I2CPWM_BOARD_SUB")))
(unless (find-package "ROS_I2CPWM_BOARD_SUB::STOPSERVOS")
  (make-package "ROS_I2CPWM_BOARD_SUB::STOPSERVOS"))
(unless (find-package "ROS_I2CPWM_BOARD_SUB::STOPSERVOSREQUEST")
  (make-package "ROS_I2CPWM_BOARD_SUB::STOPSERVOSREQUEST"))
(unless (find-package "ROS_I2CPWM_BOARD_SUB::STOPSERVOSRESPONSE")
  (make-package "ROS_I2CPWM_BOARD_SUB::STOPSERVOSRESPONSE"))

(in-package "ROS")





(defclass ros_i2cpwm_board_sub::StopServosRequest
  :super ros::object
  :slots ())

(defmethod ros_i2cpwm_board_sub::StopServosRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ros_i2cpwm_board_sub::StopServosResponse
  :super ros::object
  :slots ())

(defmethod ros_i2cpwm_board_sub::StopServosResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ros_i2cpwm_board_sub::StopServos
  :super ros::object
  :slots ())

(setf (get ros_i2cpwm_board_sub::StopServos :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get ros_i2cpwm_board_sub::StopServos :datatype-) "ros_i2cpwm_board_sub/StopServos")
(setf (get ros_i2cpwm_board_sub::StopServos :request) ros_i2cpwm_board_sub::StopServosRequest)
(setf (get ros_i2cpwm_board_sub::StopServos :response) ros_i2cpwm_board_sub::StopServosResponse)

(defmethod ros_i2cpwm_board_sub::StopServosRequest
  (:response () (instance ros_i2cpwm_board_sub::StopServosResponse :init)))

(setf (get ros_i2cpwm_board_sub::StopServosRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get ros_i2cpwm_board_sub::StopServosRequest :datatype-) "ros_i2cpwm_board_sub/StopServosRequest")
(setf (get ros_i2cpwm_board_sub::StopServosRequest :definition-)
      "

---

")

(setf (get ros_i2cpwm_board_sub::StopServosResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get ros_i2cpwm_board_sub::StopServosResponse :datatype-) "ros_i2cpwm_board_sub/StopServosResponse")
(setf (get ros_i2cpwm_board_sub::StopServosResponse :definition-)
      "

---

")



(provide :ros_i2cpwm_board_sub/StopServos "d41d8cd98f00b204e9800998ecf8427e")


