
(cl:in-package :asdf)

(defsystem "actuator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Actuator" :depends-on ("_package_Actuator"))
    (:file "_package_Actuator" :depends-on ("_package"))
  ))