
(cl:in-package :asdf)

(defsystem "hall_sensor-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Whls_vel" :depends-on ("_package_Whls_vel"))
    (:file "_package_Whls_vel" :depends-on ("_package"))
  ))