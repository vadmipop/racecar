; Auto-generated. Do not edit!


(cl:in-package mushr_sim-srv)


;//! \htmlinclude CarPose-request.msg.html

(cl:defclass <CarPose-request> (roslisp-msg-protocol:ros-message)
  ((car_name
    :reader car_name
    :initarg :car_name
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass CarPose-request (<CarPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mushr_sim-srv:<CarPose-request> is deprecated: use mushr_sim-srv:CarPose-request instead.")))

(cl:ensure-generic-function 'car_name-val :lambda-list '(m))
(cl:defmethod car_name-val ((m <CarPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mushr_sim-srv:car_name-val is deprecated.  Use mushr_sim-srv:car_name instead.")
  (car_name m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <CarPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mushr_sim-srv:x-val is deprecated.  Use mushr_sim-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <CarPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mushr_sim-srv:y-val is deprecated.  Use mushr_sim-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <CarPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mushr_sim-srv:theta-val is deprecated.  Use mushr_sim-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarPose-request>) ostream)
  "Serializes a message object of type '<CarPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'car_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'car_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarPose-request>) istream)
  "Deserializes a message object of type '<CarPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'car_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarPose-request>)))
  "Returns string type for a service object of type '<CarPose-request>"
  "mushr_sim/CarPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarPose-request)))
  "Returns string type for a service object of type 'CarPose-request"
  "mushr_sim/CarPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarPose-request>)))
  "Returns md5sum for a message object of type '<CarPose-request>"
  "d3607be278658b1796ac5e670eba6ac0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarPose-request)))
  "Returns md5sum for a message object of type 'CarPose-request"
  "d3607be278658b1796ac5e670eba6ac0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarPose-request>)))
  "Returns full string definition for message of type '<CarPose-request>"
  (cl:format cl:nil "string car_name~%float32 x~%float32 y~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarPose-request)))
  "Returns full string definition for message of type 'CarPose-request"
  (cl:format cl:nil "string car_name~%float32 x~%float32 y~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'car_name))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CarPose-request
    (cl:cons ':car_name (car_name msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
;//! \htmlinclude CarPose-response.msg.html

(cl:defclass <CarPose-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CarPose-response (<CarPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mushr_sim-srv:<CarPose-response> is deprecated: use mushr_sim-srv:CarPose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CarPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mushr_sim-srv:success-val is deprecated.  Use mushr_sim-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarPose-response>) ostream)
  "Serializes a message object of type '<CarPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarPose-response>) istream)
  "Deserializes a message object of type '<CarPose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarPose-response>)))
  "Returns string type for a service object of type '<CarPose-response>"
  "mushr_sim/CarPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarPose-response)))
  "Returns string type for a service object of type 'CarPose-response"
  "mushr_sim/CarPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarPose-response>)))
  "Returns md5sum for a message object of type '<CarPose-response>"
  "d3607be278658b1796ac5e670eba6ac0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarPose-response)))
  "Returns md5sum for a message object of type 'CarPose-response"
  "d3607be278658b1796ac5e670eba6ac0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarPose-response>)))
  "Returns full string definition for message of type '<CarPose-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarPose-response)))
  "Returns full string definition for message of type 'CarPose-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CarPose-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CarPose)))
  'CarPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CarPose)))
  'CarPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarPose)))
  "Returns string type for a service object of type '<CarPose>"
  "mushr_sim/CarPose")