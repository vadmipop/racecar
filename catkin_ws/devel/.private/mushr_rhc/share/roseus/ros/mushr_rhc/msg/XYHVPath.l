;; Auto-generated. Do not edit!


(when (boundp 'mushr_rhc::XYHVPath)
  (if (not (find-package "MUSHR_RHC"))
    (make-package "MUSHR_RHC"))
  (shadow 'XYHVPath (find-package "MUSHR_RHC")))
(unless (find-package "MUSHR_RHC::XYHVPATH")
  (make-package "MUSHR_RHC::XYHVPATH"))

(in-package "ROS")
;;//! \htmlinclude XYHVPath.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mushr_rhc::XYHVPath
  :super ros::object
  :slots (_header _waypoints ))

(defmethod mushr_rhc::XYHVPath
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:waypoints __waypoints) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _waypoints __waypoints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mushr_rhc/XYHV[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mushr_rhc/XYHV[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mushr_rhc/XYHV[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance mushr_rhc::XYHV :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mushr_rhc::XYHVPath :md5sum-) "809d76babfb4692a2ac3d65a1d0c301b")
(setf (get mushr_rhc::XYHVPath :datatype-) "mushr_rhc/XYHVPath")
(setf (get mushr_rhc::XYHVPath :definition-)
      "Header header

mushr_rhc/XYHV[] waypoints

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: mushr_rhc/XYHV
float64 x
float64 y
float64 h
float64 v

")



(provide :mushr_rhc/XYHVPath "809d76babfb4692a2ac3d65a1d0c301b")


