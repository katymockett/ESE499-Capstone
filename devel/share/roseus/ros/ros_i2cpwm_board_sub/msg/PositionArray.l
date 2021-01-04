;; Auto-generated. Do not edit!


(when (boundp 'ros_i2cpwm_board_sub::PositionArray)
  (if (not (find-package "ROS_I2CPWM_BOARD_SUB"))
    (make-package "ROS_I2CPWM_BOARD_SUB"))
  (shadow 'PositionArray (find-package "ROS_I2CPWM_BOARD_SUB")))
(unless (find-package "ROS_I2CPWM_BOARD_SUB::POSITIONARRAY")
  (make-package "ROS_I2CPWM_BOARD_SUB::POSITIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude PositionArray.msg.html


(defclass ros_i2cpwm_board_sub::PositionArray
  :super ros::object
  :slots (_servos ))

(defmethod ros_i2cpwm_board_sub::PositionArray
  (:init
   (&key
    ((:servos __servos) (let (r) (dotimes (i 0) (push (instance ros_i2cpwm_board_sub::Position :init) r)) r))
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
    ;; ros_i2cpwm_board_sub/Position[] _servos
    (apply #'+ (send-all _servos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_i2cpwm_board_sub/Position[] _servos
     (write-long (length _servos) s)
     (dolist (elem _servos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_i2cpwm_board_sub/Position[] _servos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servos (let (r) (dotimes (i n) (push (instance ros_i2cpwm_board_sub::Position :init) r)) r))
     (dolist (elem- _servos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_i2cpwm_board_sub::PositionArray :md5sum-) "06b5be802f78af7b5ec929fe386952bb")
(setf (get ros_i2cpwm_board_sub::PositionArray :datatype-) "ros_i2cpwm_board_sub/PositionArray")
(setf (get ros_i2cpwm_board_sub::PositionArray :definition-)
      "# the PositionArray message handles multiple position assignments
# of servos.

Position[] servos

================================================================================
MSG: ros_i2cpwm_board_sub/Position
# the position message is used when configuring drive mode to
# assign a  servo to a specific wheel positon in the drive system
# postions are specific toe the desired drive mode
# ackerman has only one position
# 1 = drive
# differential has two positons
# 1 = left, 2 = right
# mecanum has four positions
# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right
# multiple servos/motors may be used for each positon

int16 servo
int16 position

")



(provide :ros_i2cpwm_board_sub/PositionArray "06b5be802f78af7b5ec929fe386952bb")


