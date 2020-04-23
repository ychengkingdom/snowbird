;; Auto-generated. Do not edit!


(when (boundp 'actuator::Actuator)
  (if (not (find-package "ACTUATOR"))
    (make-package "ACTUATOR"))
  (shadow 'Actuator (find-package "ACTUATOR")))
(unless (find-package "ACTUATOR::ACTUATOR")
  (make-package "ACTUATOR::ACTUATOR"))

(in-package "ROS")
;;//! \htmlinclude Actuator.msg.html


(intern "*LEFT*" (find-package "ACTUATOR::ACTUATOR"))
(shadow '*LEFT* (find-package "ACTUATOR::ACTUATOR"))
(defconstant actuator::Actuator::*LEFT* 0)
(intern "*RIGHT*" (find-package "ACTUATOR::ACTUATOR"))
(shadow '*RIGHT* (find-package "ACTUATOR::ACTUATOR"))
(defconstant actuator::Actuator::*RIGHT* 1)
(intern "*BACK*" (find-package "ACTUATOR::ACTUATOR"))
(shadow '*BACK* (find-package "ACTUATOR::ACTUATOR"))
(defconstant actuator::Actuator::*BACK* 0)
(intern "*FORWARD*" (find-package "ACTUATOR::ACTUATOR"))
(shadow '*FORWARD* (find-package "ACTUATOR::ACTUATOR"))
(defconstant actuator::Actuator::*FORWARD* 1)
(defclass actuator::Actuator
  :super ros::object
  :slots (_strDirec _strAng _accDire _accVal ))

(defmethod actuator::Actuator
  (:init
   (&key
    ((:strDirec __strDirec) 0)
    ((:strAng __strAng) 0)
    ((:accDire __accDire) 0)
    ((:accVal __accVal) 0)
    )
   (send-super :init)
   (setq _strDirec (round __strDirec))
   (setq _strAng (round __strAng))
   (setq _accDire (round __accDire))
   (setq _accVal (round __accVal))
   self)
  (:strDirec
   (&optional __strDirec)
   (if __strDirec (setq _strDirec __strDirec)) _strDirec)
  (:strAng
   (&optional __strAng)
   (if __strAng (setq _strAng __strAng)) _strAng)
  (:accDire
   (&optional __accDire)
   (if __accDire (setq _accDire __accDire)) _accDire)
  (:accVal
   (&optional __accVal)
   (if __accVal (setq _accVal __accVal)) _accVal)
  (:serialization-length
   ()
   (+
    ;; uint8 _strDirec
    1
    ;; uint8 _strAng
    1
    ;; uint8 _accDire
    1
    ;; uint8 _accVal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _strDirec
       (write-byte _strDirec s)
     ;; uint8 _strAng
       (write-byte _strAng s)
     ;; uint8 _accDire
       (write-byte _accDire s)
     ;; uint8 _accVal
       (write-byte _accVal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _strDirec
     (setq _strDirec (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _strAng
     (setq _strAng (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _accDire
     (setq _accDire (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _accVal
     (setq _accVal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get actuator::Actuator :md5sum-) "0a5f96192a9e0f688db79bb649c89f55")
(setf (get actuator::Actuator :datatype-) "actuator/Actuator")
(setf (get actuator::Actuator :definition-)
      "uint8 strDirec
uint8 strAng
uint8 accDire
uint8 accVal

uint8 left = 0
uint8 right = 1
uint8 back = 0
uint8 forward = 1

")



(provide :actuator/Actuator "0a5f96192a9e0f688db79bb649c89f55")


