; Auto-generated. Do not edit!


(cl:in-package mushr_rhc-msg)


;//! \htmlinclude XYHVPath.msg.html

(cl:defclass <XYHVPath> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector mushr_rhc-msg:XYHV)
   :initform (cl:make-array 0 :element-type 'mushr_rhc-msg:XYHV :initial-element (cl:make-instance 'mushr_rhc-msg:XYHV))))
)

(cl:defclass XYHVPath (<XYHVPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XYHVPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XYHVPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mushr_rhc-msg:<XYHVPath> is deprecated: use mushr_rhc-msg:XYHVPath instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <XYHVPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mushr_rhc-msg:header-val is deprecated.  Use mushr_rhc-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <XYHVPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mushr_rhc-msg:waypoints-val is deprecated.  Use mushr_rhc-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XYHVPath>) ostream)
  "Serializes a message object of type '<XYHVPath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XYHVPath>) istream)
  "Deserializes a message object of type '<XYHVPath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mushr_rhc-msg:XYHV))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XYHVPath>)))
  "Returns string type for a message object of type '<XYHVPath>"
  "mushr_rhc/XYHVPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XYHVPath)))
  "Returns string type for a message object of type 'XYHVPath"
  "mushr_rhc/XYHVPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XYHVPath>)))
  "Returns md5sum for a message object of type '<XYHVPath>"
  "809d76babfb4692a2ac3d65a1d0c301b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XYHVPath)))
  "Returns md5sum for a message object of type 'XYHVPath"
  "809d76babfb4692a2ac3d65a1d0c301b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XYHVPath>)))
  "Returns full string definition for message of type '<XYHVPath>"
  (cl:format cl:nil "Header header~%~%mushr_rhc/XYHV[] waypoints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mushr_rhc/XYHV~%float64 x~%float64 y~%float64 h~%float64 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XYHVPath)))
  "Returns full string definition for message of type 'XYHVPath"
  (cl:format cl:nil "Header header~%~%mushr_rhc/XYHV[] waypoints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mushr_rhc/XYHV~%float64 x~%float64 y~%float64 h~%float64 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XYHVPath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XYHVPath>))
  "Converts a ROS message object to a list"
  (cl:list 'XYHVPath
    (cl:cons ':header (header msg))
    (cl:cons ':waypoints (waypoints msg))
))
