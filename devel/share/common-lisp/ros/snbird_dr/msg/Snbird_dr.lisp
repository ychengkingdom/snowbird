; Auto-generated. Do not edit!


(cl:in-package snbird_dr-msg)


;//! \htmlinclude Snbird_dr.msg.html

(cl:defclass <Snbird_dr> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Snbird_dr (<Snbird_dr>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Snbird_dr>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Snbird_dr)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name snbird_dr-msg:<Snbird_dr> is deprecated: use snbird_dr-msg:Snbird_dr instead.")))

(cl:ensure-generic-function 'strDirec-val :lambda-list '(m))
(cl:defmethod strDirec-val ((m <Snbird_dr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader snbird_dr-msg:strDirec-val is deprecated.  Use snbird_dr-msg:strDirec instead.")
  (strDirec m))

(cl:ensure-generic-function 'strAng-val :lambda-list '(m))
(cl:defmethod strAng-val ((m <Snbird_dr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader snbird_dr-msg:strAng-val is deprecated.  Use snbird_dr-msg:strAng instead.")
  (strAng m))

(cl:ensure-generic-function 'accDire-val :lambda-list '(m))
(cl:defmethod accDire-val ((m <Snbird_dr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader snbird_dr-msg:accDire-val is deprecated.  Use snbird_dr-msg:accDire instead.")
  (accDire m))

(cl:ensure-generic-function 'accVal-val :lambda-list '(m))
(cl:defmethod accVal-val ((m <Snbird_dr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader snbird_dr-msg:accVal-val is deprecated.  Use snbird_dr-msg:accVal instead.")
  (accVal m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Snbird_dr>)))
    "Constants for message type '<Snbird_dr>"
  '((:LEFT . 0)
    (:RIGHT . 1)
    (:BACK . 0)
    (:FORWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Snbird_dr)))
    "Constants for message type 'Snbird_dr"
  '((:LEFT . 0)
    (:RIGHT . 1)
    (:BACK . 0)
    (:FORWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Snbird_dr>) ostream)
  "Serializes a message object of type '<Snbird_dr>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'strDirec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'strAng)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accDire)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accVal)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Snbird_dr>) istream)
  "Deserializes a message object of type '<Snbird_dr>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'strDirec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'strAng)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accDire)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accVal)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Snbird_dr>)))
  "Returns string type for a message object of type '<Snbird_dr>"
  "snbird_dr/Snbird_dr")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Snbird_dr)))
  "Returns string type for a message object of type 'Snbird_dr"
  "snbird_dr/Snbird_dr")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Snbird_dr>)))
  "Returns md5sum for a message object of type '<Snbird_dr>"
  "0a5f96192a9e0f688db79bb649c89f55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Snbird_dr)))
  "Returns md5sum for a message object of type 'Snbird_dr"
  "0a5f96192a9e0f688db79bb649c89f55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Snbird_dr>)))
  "Returns full string definition for message of type '<Snbird_dr>"
  (cl:format cl:nil "uint8 strDirec~%uint8 strAng~%uint8 accDire~%uint8 accVal~%~%uint8 left = 0~%uint8 right = 1~%uint8 back = 0~%uint8 forward = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Snbird_dr)))
  "Returns full string definition for message of type 'Snbird_dr"
  (cl:format cl:nil "uint8 strDirec~%uint8 strAng~%uint8 accDire~%uint8 accVal~%~%uint8 left = 0~%uint8 right = 1~%uint8 back = 0~%uint8 forward = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Snbird_dr>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Snbird_dr>))
  "Converts a ROS message object to a list"
  (cl:list 'Snbird_dr
    (cl:cons ':strDirec (strDirec msg))
    (cl:cons ':strAng (strAng msg))
    (cl:cons ':accDire (accDire msg))
    (cl:cons ':accVal (accVal msg))
))
