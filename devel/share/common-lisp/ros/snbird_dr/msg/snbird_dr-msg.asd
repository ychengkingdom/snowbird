
(cl:in-package :asdf)

(defsystem "snbird_dr-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Snbird_dr" :depends-on ("_package_Snbird_dr"))
    (:file "_package_Snbird_dr" :depends-on ("_package"))
  ))