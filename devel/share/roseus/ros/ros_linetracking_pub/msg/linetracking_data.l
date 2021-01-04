;; Auto-generated. Do not edit!


(when (boundp 'ros_linetracking_pub::linetracking_data)
  (if (not (find-package "ROS_LINETRACKING_PUB"))
    (make-package "ROS_LINETRACKING_PUB"))
  (shadow 'linetracking_data (find-package "ROS_LINETRACKING_PUB")))
(unless (find-package "ROS_LINETRACKING_PUB::LINETRACKING_DATA")
  (make-package "ROS_LINETRACKING_PUB::LINETRACKING_DATA"))

(in-package "ROS")
;;//! \htmlinclude linetracking_data.msg.html


(defclass ros_linetracking_pub::linetracking_data
  :super ros::object
  :slots (_readings ))

(defmethod ros_linetracking_pub::linetracking_data
  (:init
   (&key
    ((:readings __readings) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _readings __readings)
   self)
  (:readings
   (&optional __readings)
   (if __readings (setq _readings __readings)) _readings)
  (:serialization-length
   ()
   (+
    ;; float32[] _readings
    (* 4    (length _readings)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _readings
     (write-long (length _readings) s)
     (dotimes (i (length _readings))
       (sys::poke (elt _readings i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _readings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _readings (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _readings i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ros_linetracking_pub::linetracking_data :md5sum-) "790f38aeabddcc73abb1ebbc6fb37849")
(setf (get ros_linetracking_pub::linetracking_data :datatype-) "ros_linetracking_pub/linetracking_data")
(setf (get ros_linetracking_pub::linetracking_data :definition-)
      "# line tracking data is float array with five elements

float32[] readings

")



(provide :ros_linetracking_pub/linetracking_data "790f38aeabddcc73abb1ebbc6fb37849")


