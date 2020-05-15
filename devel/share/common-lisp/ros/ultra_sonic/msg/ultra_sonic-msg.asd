
(cl:in-package :asdf)

(defsystem "ultra_sonic-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Ultra_dis" :depends-on ("_package_Ultra_dis"))
    (:file "_package_Ultra_dis" :depends-on ("_package"))
  ))