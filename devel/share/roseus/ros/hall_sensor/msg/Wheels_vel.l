;; Auto-generated. Do not edit!


(when (boundp 'hall_sensor::Wheels_vel)
  (if (not (find-package "HALL_SENSOR"))
    (make-package "HALL_SENSOR"))
  (shadow 'Wheels_vel (find-package "HALL_SENSOR")))
(unless (find-package "HALL_SENSOR::WHEELS_VEL")
  (make-package "HALL_SENSOR::WHEELS_VEL"))

(in-package "ROS")
;;//! \htmlinclude Wheels_vel.msg.html


(defclass hall_sensor::Wheels_vel
  :super ros::object
  :slots (_fl _fr _rl _rr ))

(defmethod hall_sensor::Wheels_vel
  (:init
   (&key
    ((:fl __fl) 0.0)
    ((:fr __fr) 0.0)
    ((:rl __rl) 0.0)
    ((:rr __rr) 0.0)
    )
   (send-super :init)
   (setq _fl (float __fl))
   (setq _fr (float __fr))
   (setq _rl (float __rl))
   (setq _rr (float __rr))
   self)
  (:fl
   (&optional __fl)
   (if __fl (setq _fl __fl)) _fl)
  (:fr
   (&optional __fr)
   (if __fr (setq _fr __fr)) _fr)
  (:rl
   (&optional __rl)
   (if __rl (setq _rl __rl)) _rl)
  (:rr
   (&optional __rr)
   (if __rr (setq _rr __rr)) _rr)
  (:serialization-length
   ()
   (+
    ;; float32 _fl
    4
    ;; float32 _fr
    4
    ;; float32 _rl
    4
    ;; float32 _rr
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _fl
       (sys::poke _fl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fr
       (sys::poke _fr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rl
       (sys::poke _rl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rr
       (sys::poke _rr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _fl
     (setq _fl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fr
     (setq _fr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rl
     (setq _rl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rr
     (setq _rr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hall_sensor::Wheels_vel :md5sum-) "291d0a1bb554e9cecb818a219ca75ef0")
(setf (get hall_sensor::Wheels_vel :datatype-) "hall_sensor/Wheels_vel")
(setf (get hall_sensor::Wheels_vel :definition-)
      "float32 fl
float32 fr
float32 rl
float32 rr

")



(provide :hall_sensor/Wheels_vel "291d0a1bb554e9cecb818a219ca75ef0")


