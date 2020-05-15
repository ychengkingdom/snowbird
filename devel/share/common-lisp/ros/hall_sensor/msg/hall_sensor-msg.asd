
(cl:in-package :asdf)

(defsystem "hall_sensor-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Wheels_vel" :depends-on ("_package_Wheels_vel"))
    (:file "_package_Wheels_vel" :depends-on ("_package"))
  ))