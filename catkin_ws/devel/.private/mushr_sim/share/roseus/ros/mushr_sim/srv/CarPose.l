;; Auto-generated. Do not edit!


(when (boundp 'mushr_sim::CarPose)
  (if (not (find-package "MUSHR_SIM"))
    (make-package "MUSHR_SIM"))
  (shadow 'CarPose (find-package "MUSHR_SIM")))
(unless (find-package "MUSHR_SIM::CARPOSE")
  (make-package "MUSHR_SIM::CARPOSE"))
(unless (find-package "MUSHR_SIM::CARPOSEREQUEST")
  (make-package "MUSHR_SIM::CARPOSEREQUEST"))
(unless (find-package "MUSHR_SIM::CARPOSERESPONSE")
  (make-package "MUSHR_SIM::CARPOSERESPONSE"))

(in-package "ROS")





(defclass mushr_sim::CarPoseRequest
  :super ros::object
  :slots (_car_name _x _y _theta ))

(defmethod mushr_sim::CarPoseRequest
  (:init
   (&key
    ((:car_name __car_name) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _car_name (string __car_name))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   self)
  (:car_name
   (&optional __car_name)
   (if __car_name (setq _car_name __car_name)) _car_name)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; string _car_name
    4 (length _car_name)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _car_name
       (write-long (length _car_name) s) (princ _car_name s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _car_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _car_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mushr_sim::CarPoseResponse
  :super ros::object
  :slots (_success ))

(defmethod mushr_sim::CarPoseResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mushr_sim::CarPose
  :super ros::object
  :slots ())

(setf (get mushr_sim::CarPose :md5sum-) "d3607be278658b1796ac5e670eba6ac0")
(setf (get mushr_sim::CarPose :datatype-) "mushr_sim/CarPose")
(setf (get mushr_sim::CarPose :request) mushr_sim::CarPoseRequest)
(setf (get mushr_sim::CarPose :response) mushr_sim::CarPoseResponse)

(defmethod mushr_sim::CarPoseRequest
  (:response () (instance mushr_sim::CarPoseResponse :init)))

(setf (get mushr_sim::CarPoseRequest :md5sum-) "d3607be278658b1796ac5e670eba6ac0")
(setf (get mushr_sim::CarPoseRequest :datatype-) "mushr_sim/CarPoseRequest")
(setf (get mushr_sim::CarPoseRequest :definition-)
      "string car_name
float32 x
float32 y
float32 theta
---
bool success
")

(setf (get mushr_sim::CarPoseResponse :md5sum-) "d3607be278658b1796ac5e670eba6ac0")
(setf (get mushr_sim::CarPoseResponse :datatype-) "mushr_sim/CarPoseResponse")
(setf (get mushr_sim::CarPoseResponse :definition-)
      "string car_name
float32 x
float32 y
float32 theta
---
bool success
")



(provide :mushr_sim/CarPose "d3607be278658b1796ac5e670eba6ac0")


