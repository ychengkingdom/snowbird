; Auto-generated. Do not edit!


(cl:in-package actuator-msg)


;//! \htmlinclude Actuator.msg.html

(cl:defclass <Actuator> (roslisp-msg-protocol:ros-message)
  ((strDirec
    :reader strDirec
    :initarg :strDirec
    :type cl:fixnum
    :initform 0)
   (strAng
    :reader strAng
    :initarg :strAng
    :type cl:fixnum
    :initform 0)
   (accDire
    :reader accDire
    :initarg :accDire
    :type cl:fixnum
    :initform 0)
   (accVal
    :reader accVal
    :initarg :accVal
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Actuator (<Actuator>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Actuator>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Actuator)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actuator-msg:<Actuator> is deprecated: use actuator-msg:Actuator instead.")))

(cl:ensure-generic-function 'strDirec-val :lambda-list '(m))
(cl:defmethod strDirec-val ((m <Actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actuator-msg:strDirec-val is deprecated.  Use actuator-msg:strDirec instead.")
  (strDirec m))

(cl:ensure-generic-function 'strAng-val :lambda-list '(m))
(cl:defmethod strAng-val ((m <Actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actuator-msg:strAng-val is deprecated.  Use actuator-msg:strAng instead.")
  (strAng m))

(cl:ensure-generic-function 'accDire-val :lambda-list '(m))
(cl:defmethod accDire-val ((m <Actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actuator-msg:accDire-val is deprecated.  Use actuator-msg:accDire instead.")
  (accDire m))

(cl:ensure-generic-function 'accVal-val :lambda-list '(m))
(cl:defmethod accVal-val ((m <Actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actuator-msg:accVal-val is deprecated.  Use actuator-msg:accVal instead.")
  (accVal m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Actuator>)))
    "Constants for message type '<Actuator>"
  '((:LEFT . 0)
    (:RIGHT . 1)
    (:BACK . 0)
    (:FORWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Actuator)))
    "Constants for message type 'Actuator"
  '((:LEFT . 0)
    (:RIGHT . 1)
    (:BACK . 0)
    (:FORWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Actuator>) ostream)
  "Serializes a message object of type '<Actuator>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'strDirec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'strAng)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accDire)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accVal)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Actuator>) istream)
  "Deserializes a message object of type '<Actuator>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'strDirec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'strAng)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accDire)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accVal)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Actuator>)))
  "Returns string type for a message object of type '<Actuator>"
  "actuator/Actuator")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Actuator)))
  "Returns string type for a message object of type 'Actuator"
  "actuator/Actuator")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Actuator>)))
  "Returns md5sum for a message object of type '<Actuator>"
  "0a5f96192a9e0f688db79bb649c89f55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Actuator)))
  "Returns md5sum for a message object of type 'Actuator"
  "0a5f96192a9e0f688db79bb649c89f55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Actuator>)))
  "Returns full string definition for message of type '<Actuator>"
  (cl:format cl:nil "uint8 strDirec~%uint8 strAng~%uint8 accDire~%uint8 accVal~%~%uint8 left = 0~%uint8 right = 1~%uint8 back = 0~%uint8 forward = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Actuator)))
  "Returns full string definition for message of type 'Actuator"
  (cl:format cl:nil "uint8 strDirec~%uint8 strAng~%uint8 accDire~%uint8 accVal~%~%uint8 left = 0~%uint8 right = 1~%uint8 back = 0~%uint8 forward = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Actuator>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Actuator>))
  "Converts a ROS message object to a list"
  (cl:list 'Actuator
    (cl:cons ':strDirec (strDirec msg))
    (cl:cons ':strAng (strAng msg))
    (cl:cons ':accDire (accDire msg))
    (cl:cons ':accVal (accVal msg))
))
