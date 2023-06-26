
(cl:in-package :asdf)

(defsystem "mushr_rhc-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "XYHV" :depends-on ("_package_XYHV"))
    (:file "_package_XYHV" :depends-on ("_package"))
    (:file "XYHVPath" :depends-on ("_package_XYHVPath"))
    (:file "_package_XYHVPath" :depends-on ("_package"))
  ))