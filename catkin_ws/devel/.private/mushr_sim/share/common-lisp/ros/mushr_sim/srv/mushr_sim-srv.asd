
(cl:in-package :asdf)

(defsystem "mushr_sim-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CarPose" :depends-on ("_package_CarPose"))
    (:file "_package_CarPose" :depends-on ("_package"))
  ))