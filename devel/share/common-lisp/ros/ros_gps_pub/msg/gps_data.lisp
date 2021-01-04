; Auto-generated. Do not edit!


(cl:in-package ros_gps_pub-msg)


;//! \htmlinclude gps_data.msg.html

(cl:defclass <gps_data> (roslisp-msg-protocol:ros-message)
  ((latitude1
    :reader latitude1
    :initarg :latitude1
    :type cl:float
    :initform 0.0)
   (latitude2
    :reader latitude2
    :initarg :latitude2
    :type cl:float
    :initform 0.0)
   (longitude1
    :reader longitude1
    :initarg :longitude1
    :type cl:float
    :initform 0.0)
   (longitude2
    :reader longitude2
    :initarg :longitude2
    :type cl:float
    :initform 0.0)
   (sog1
    :reader sog1
    :initarg :sog1
    :type cl:float
    :initform 0.0)
   (sog2
    :reader sog2
    :initarg :sog2
    :type cl:float
    :initform 0.0))
)

(cl:defclass gps_data (<gps_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gps_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gps_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gps_pub-msg:<gps_data> is deprecated: use ros_gps_pub-msg:gps_data instead.")))

(cl:ensure-generic-function 'latitude1-val :lambda-list '(m))
(cl:defmethod latitude1-val ((m <gps_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gps_pub-msg:latitude1-val is deprecated.  Use ros_gps_pub-msg:latitude1 instead.")
  (latitude1 m))

(cl:ensure-generic-function 'latitude2-val :lambda-list '(m))
(cl:defmethod latitude2-val ((m <gps_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gps_pub-msg:latitude2-val is deprecated.  Use ros_gps_pub-msg:latitude2 instead.")
  (latitude2 m))

(cl:ensure-generic-function 'longitude1-val :lambda-list '(m))
(cl:defmethod longitude1-val ((m <gps_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gps_pub-msg:longitude1-val is deprecated.  Use ros_gps_pub-msg:longitude1 instead.")
  (longitude1 m))

(cl:ensure-generic-function 'longitude2-val :lambda-list '(m))
(cl:defmethod longitude2-val ((m <gps_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gps_pub-msg:longitude2-val is deprecated.  Use ros_gps_pub-msg:longitude2 instead.")
  (longitude2 m))

(cl:ensure-generic-function 'sog1-val :lambda-list '(m))
(cl:defmethod sog1-val ((m <gps_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gps_pub-msg:sog1-val is deprecated.  Use ros_gps_pub-msg:sog1 instead.")
  (sog1 m))

(cl:ensure-generic-function 'sog2-val :lambda-list '(m))
(cl:defmethod sog2-val ((m <gps_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gps_pub-msg:sog2-val is deprecated.  Use ros_gps_pub-msg:sog2 instead.")
  (sog2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gps_data>) ostream)
  "Serializes a message object of type '<gps_data>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sog1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sog2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gps_data>) istream)
  "Deserializes a message object of type '<gps_data>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sog1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sog2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gps_data>)))
  "Returns string type for a message object of type '<gps_data>"
  "ros_gps_pub/gps_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gps_data)))
  "Returns string type for a message object of type 'gps_data"
  "ros_gps_pub/gps_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gps_data>)))
  "Returns md5sum for a message object of type '<gps_data>"
  "240f581cba0734ba766965d88f37634c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gps_data)))
  "Returns md5sum for a message object of type 'gps_data"
  "240f581cba0734ba766965d88f37634c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gps_data>)))
  "Returns full string definition for message of type '<gps_data>"
  (cl:format cl:nil "# GPS data includes two latitude readings, two longitude readings, and two sspeed over ground readings~%~%float32 latitude1~%float32 latitude2~%float32 longitude1~%float32 longitude2~%float32 sog1~%float32 sog2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gps_data)))
  "Returns full string definition for message of type 'gps_data"
  (cl:format cl:nil "# GPS data includes two latitude readings, two longitude readings, and two sspeed over ground readings~%~%float32 latitude1~%float32 latitude2~%float32 longitude1~%float32 longitude2~%float32 sog1~%float32 sog2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gps_data>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gps_data>))
  "Converts a ROS message object to a list"
  (cl:list 'gps_data
    (cl:cons ':latitude1 (latitude1 msg))
    (cl:cons ':latitude2 (latitude2 msg))
    (cl:cons ':longitude1 (longitude1 msg))
    (cl:cons ':longitude2 (longitude2 msg))
    (cl:cons ':sog1 (sog1 msg))
    (cl:cons ':sog2 (sog2 msg))
))
