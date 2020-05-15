;; Auto-generated. Do not edit!


(when (boundp 'ultra_sonic::Ultra_dis)
  (if (not (find-package "ULTRA_SONIC"))
    (make-package "ULTRA_SONIC"))
  (shadow 'Ultra_dis (find-package "ULTRA_SONIC")))
(unless (find-package "ULTRA_SONIC::ULTRA_DIS")
  (make-package "ULTRA_SONIC::ULTRA_DIS"))

(in-package "ROS")
;;//! \htmlinclude Ultra_dis.msg.html


(defclass ultra_sonic::Ultra_dis
  :super ros::object
  :slots (_fr _re ))

(defmethod ultra_sonic::Ultra_dis
  (:init
   (&key
    ((:fr __fr) 0.0)
    ((:re __re) 0.0)
    )
   (send-super :init)
   (setq _fr (float __fr))
   (setq _re (float __re))
   self)
  (:fr
   (&optional __fr)
   (if __fr (setq _fr __fr)) _fr)
  (:re
   (&optional __re)
   (if __re (setq _re __re)) _re)
  (:serialization-length
   ()
   (+
    ;; float32 _fr
    4
    ;; float32 _re
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _fr
       (sys::poke _fr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _re
       (sys::poke _re (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _fr
     (setq _fr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _re
     (setq _re (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ultra_sonic::Ultra_dis :md5sum-) "2ee497f682fbf9bc21a5c9d264d23864")
(setf (get ultra_sonic::Ultra_dis :datatype-) "ultra_sonic/Ultra_dis")
(setf (get ultra_sonic::Ultra_dis :definition-)
      "float32 fr
float32 re

")



(provide :ultra_sonic/Ultra_dis "2ee497f682fbf9bc21a5c9d264d23864")


