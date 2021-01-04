;; Auto-generated. Do not edit!


(when (boundp 'ros_pwm_sub::ServoArray)
  (if (not (find-package "ROS_PWM_SUB"))
    (make-package "ROS_PWM_SUB"))
  (shadow 'ServoArray (find-package "ROS_PWM_SUB")))
(unless (find-package "ROS_PWM_SUB::SERVOARRAY")
  (make-package "ROS_PWM_SUB::SERVOARRAY"))

(in-package "ROS")
;;//! \htmlinclude ServoArray.msg.html


(defclass ros_pwm_sub::ServoArray
  :super ros::object
  :slots (_servos ))

(defmethod ros_pwm_sub::ServoArray
  (:init
   (&key
    ((:servos __servos) (let (r) (dotimes (i 0) (push (instance ros_pwm_sub::Servo :init) r)) r))
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
    ;; ros_pwm_sub/Servo[] _servos
    (apply #'+ (send-all _servos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_pwm_sub/Servo[] _servos
     (write-long (length _servos) s)
     (dolist (elem _servos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_pwm_sub/Servo[] _servos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servos (let (r) (dotimes (i n) (push (instance ros_pwm_sub::Servo :init) r)) r))
     (dolist (elem- _servos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_pwm_sub::ServoArray :md5sum-) "7dcfd407a2095ba27997610e5008ca84")
(setf (get ros_pwm_sub::ServoArray :datatype-) "ros_pwm_sub/ServoArray")
(setf (get ros_pwm_sub::ServoArray :definition-)
      "# the ServoArray message is commonly used message in this package to
# handle multiple assignments of values to servos. the purpose of
# the value is dependent on the topic or service being called

Servo[] servos

================================================================================
MSG: ros_pwm_sub/Servo
# the Servo message is commonly used message in this package to
# assign a value to a specific servo. the purpose of the value is
# dependent on the topic or service being called

int16 servo
float32 value

")



(provide :ros_pwm_sub/ServoArray "7dcfd407a2095ba27997610e5008ca84")


