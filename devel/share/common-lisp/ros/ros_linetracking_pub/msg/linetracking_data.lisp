; Auto-generated. Do not edit!


(cl:in-package ros_linetracking_pub-msg)


;//! \htmlinclude linetracking_data.msg.html

(cl:defclass <linetracking_data> (roslisp-msg-protocol:ros-message)
  ((readings
    :reader readings
    :initarg :readings
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass linetracking_data (<linetracking_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <linetracking_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'linetracking_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_linetracking_pub-msg:<linetracking_data> is deprecated: use ros_linetracking_pub-msg:linetracking_data instead.")))

(cl:ensure-generic-function 'readings-val :lambda-list '(m))
(cl:defmethod readings-val ((m <linetracking_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_linetracking_pub-msg:readings-val is deprecated.  Use ros_linetracking_pub-msg:readings instead.")
  (readings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <linetracking_data>) ostream)
  "Serializes a message object of type '<linetracking_data>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'readings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'readings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <linetracking_data>) istream)
  "Deserializes a message object of type '<linetracking_data>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'readings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'readings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<linetracking_data>)))
  "Returns string type for a message object of type '<linetracking_data>"
  "ros_linetracking_pub/linetracking_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'linetracking_data)))
  "Returns string type for a message object of type 'linetracking_data"
  "ros_linetracking_pub/linetracking_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<linetracking_data>)))
  "Returns md5sum for a message object of type '<linetracking_data>"
  "790f38aeabddcc73abb1ebbc6fb37849")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'linetracking_data)))
  "Returns md5sum for a message object of type 'linetracking_data"
  "790f38aeabddcc73abb1ebbc6fb37849")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<linetracking_data>)))
  "Returns full string definition for message of type '<linetracking_data>"
  (cl:format cl:nil "# line tracking data is float array with five elements~%~%float32[] readings~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'linetracking_data)))
  "Returns full string definition for message of type 'linetracking_data"
  (cl:format cl:nil "# line tracking data is float array with five elements~%~%float32[] readings~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <linetracking_data>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'readings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <linetracking_data>))
  "Converts a ROS message object to a list"
  (cl:list 'linetracking_data
    (cl:cons ':readings (readings msg))
))
