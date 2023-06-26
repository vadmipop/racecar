;; Auto-generated. Do not edit!


(when (boundp 'mushr_rhc::XYHV)
  (if (not (find-package "MUSHR_RHC"))
    (make-package "MUSHR_RHC"))
  (shadow 'XYHV (find-package "MUSHR_RHC")))
(unless (find-package "MUSHR_RHC::XYHV")
  (make-package "MUSHR_RHC::XYHV"))

(in-package "ROS")
;;//! \htmlinclude XYHV.msg.html


(defclass mushr_rhc::XYHV
  :super ros::object
  :slots (_x _y _h _v ))

(defmethod mushr_rhc::XYHV
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:h __h) 0.0)
    ((:v __v) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _h (float __h))
   (setq _v (float __v))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _h
    8
    ;; float64 _v
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _h
       (sys::poke _h (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _h
     (setq _h (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mushr_rhc::XYHV :md5sum-) "0cafccb00bc1c3b48904a8807acc6293")
(setf (get mushr_rhc::XYHV :datatype-) "mushr_rhc/XYHV")
(setf (get mushr_rhc::XYHV :definition-)
      "float64 x
float64 y
float64 h
float64 v

")



(provide :mushr_rhc/XYHV "0cafccb00bc1c3b48904a8807acc6293")


