;; Auto-generated. Do not edit!


(when (boundp 'ros_gps_pub::gps_data)
  (if (not (find-package "ROS_GPS_PUB"))
    (make-package "ROS_GPS_PUB"))
  (shadow 'gps_data (find-package "ROS_GPS_PUB")))
(unless (find-package "ROS_GPS_PUB::GPS_DATA")
  (make-package "ROS_GPS_PUB::GPS_DATA"))

(in-package "ROS")
;;//! \htmlinclude gps_data.msg.html


(defclass ros_gps_pub::gps_data
  :super ros::object
  :slots (_latitude1 _latitude2 _longitude1 _longitude2 _sog1 _sog2 ))

(defmethod ros_gps_pub::gps_data
  (:init
   (&key
    ((:latitude1 __latitude1) 0.0)
    ((:latitude2 __latitude2) 0.0)
    ((:longitude1 __longitude1) 0.0)
    ((:longitude2 __longitude2) 0.0)
    ((:sog1 __sog1) 0.0)
    ((:sog2 __sog2) 0.0)
    )
   (send-super :init)
   (setq _latitude1 (float __latitude1))
   (setq _latitude2 (float __latitude2))
   (setq _longitude1 (float __longitude1))
   (setq _longitude2 (float __longitude2))
   (setq _sog1 (float __sog1))
   (setq _sog2 (float __sog2))
   self)
  (:latitude1
   (&optional __latitude1)
   (if __latitude1 (setq _latitude1 __latitude1)) _latitude1)
  (:latitude2
   (&optional __latitude2)
   (if __latitude2 (setq _latitude2 __latitude2)) _latitude2)
  (:longitude1
   (&optional __longitude1)
   (if __longitude1 (setq _longitude1 __longitude1)) _longitude1)
  (:longitude2
   (&optional __longitude2)
   (if __longitude2 (setq _longitude2 __longitude2)) _longitude2)
  (:sog1
   (&optional __sog1)
   (if __sog1 (setq _sog1 __sog1)) _sog1)
  (:sog2
   (&optional __sog2)
   (if __sog2 (setq _sog2 __sog2)) _sog2)
  (:serialization-length
   ()
   (+
    ;; float32 _latitude1
    4
    ;; float32 _latitude2
    4
    ;; float32 _longitude1
    4
    ;; float32 _longitude2
    4
    ;; float32 _sog1
    4
    ;; float32 _sog2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _latitude1
       (sys::poke _latitude1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _latitude2
       (sys::poke _latitude2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude1
       (sys::poke _longitude1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude2
       (sys::poke _longitude2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sog1
       (sys::poke _sog1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sog2
       (sys::poke _sog2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _latitude1
     (setq _latitude1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _latitude2
     (setq _latitude2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude1
     (setq _longitude1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude2
     (setq _longitude2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sog1
     (setq _sog1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sog2
     (setq _sog2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_gps_pub::gps_data :md5sum-) "240f581cba0734ba766965d88f37634c")
(setf (get ros_gps_pub::gps_data :datatype-) "ros_gps_pub/gps_data")
(setf (get ros_gps_pub::gps_data :definition-)
      "# GPS data includes two latitude readings, two longitude readings, and two sspeed over ground readings

float32 latitude1
float32 latitude2
float32 longitude1
float32 longitude2
float32 sog1
float32 sog2

")



(provide :ros_gps_pub/gps_data "240f581cba0734ba766965d88f37634c")


