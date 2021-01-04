; Auto-generated. Do not edit!


(cl:in-package imu_pub-msg)


;//! \htmlinclude imu_data.msg.html

(cl:defclass <imu_data> (roslisp-msg-protocol:ros-message)
  ((heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (lin_x
    :reader lin_x
    :initarg :lin_x
    :type cl:float
    :initform 0.0)
   (lin_y
    :reader lin_y
    :initarg :lin_y
    :type cl:float
    :initform 0.0)
   (lin_z
    :reader lin_z
    :initarg :lin_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass imu_data (<imu_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imu_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imu_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imu_pub-msg:<imu_data> is deprecated: use imu_pub-msg:imu_data instead.")))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_pub-msg:heading-val is deprecated.  Use imu_pub-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_pub-msg:roll-val is deprecated.  Use imu_pub-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_pub-msg:pitch-val is deprecated.  Use imu_pub-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'lin_x-val :lambda-list '(m))
(cl:defmethod lin_x-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_pub-msg:lin_x-val is deprecated.  Use imu_pub-msg:lin_x instead.")
  (lin_x m))

(cl:ensure-generic-function 'lin_y-val :lambda-list '(m))
(cl:defmethod lin_y-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_pub-msg:lin_y-val is deprecated.  Use imu_pub-msg:lin_y instead.")
  (lin_y m))

(cl:ensure-generic-function 'lin_z-val :lambda-list '(m))
(cl:defmethod lin_z-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_pub-msg:lin_z-val is deprecated.  Use imu_pub-msg:lin_z instead.")
  (lin_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imu_data>) ostream)
  "Serializes a message object of type '<imu_data>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lin_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lin_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lin_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imu_data>) istream)
  "Deserializes a message object of type '<imu_data>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lin_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lin_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lin_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imu_data>)))
  "Returns string type for a message object of type '<imu_data>"
  "imu_pub/imu_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imu_data)))
  "Returns string type for a message object of type 'imu_data"
  "imu_pub/imu_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imu_data>)))
  "Returns md5sum for a message object of type '<imu_data>"
  "1347b952cec5150e8281187595637f91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imu_data)))
  "Returns md5sum for a message object of type 'imu_data"
  "1347b952cec5150e8281187595637f91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imu_data>)))
  "Returns full string definition for message of type '<imu_data>"
  (cl:format cl:nil "# GPS data includes two latitude readings, two longitude readings, and two sspeed over ground readings~%~%float32 heading~%float32 roll~%float32 pitch~%float32 lin_x~%float32 lin_y~%float32 lin_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imu_data)))
  "Returns full string definition for message of type 'imu_data"
  (cl:format cl:nil "# GPS data includes two latitude readings, two longitude readings, and two sspeed over ground readings~%~%float32 heading~%float32 roll~%float32 pitch~%float32 lin_x~%float32 lin_y~%float32 lin_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imu_data>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imu_data>))
  "Converts a ROS message object to a list"
  (cl:list 'imu_data
    (cl:cons ':heading (heading msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':lin_x (lin_x msg))
    (cl:cons ':lin_y (lin_y msg))
    (cl:cons ':lin_z (lin_z msg))
))
