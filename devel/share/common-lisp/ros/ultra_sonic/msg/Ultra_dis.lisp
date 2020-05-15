; Auto-generated. Do not edit!


(cl:in-package ultra_sonic-msg)


;//! \htmlinclude Ultra_dis.msg.html

(cl:defclass <Ultra_dis> (roslisp-msg-protocol:ros-message)
  ((fr
    :reader fr
    :initarg :fr
    :type cl:float
    :initform 0.0)
   (re
    :reader re
    :initarg :re
    :type cl:float
    :initform 0.0))
)

(cl:defclass Ultra_dis (<Ultra_dis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ultra_dis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ultra_dis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ultra_sonic-msg:<Ultra_dis> is deprecated: use ultra_sonic-msg:Ultra_dis instead.")))

(cl:ensure-generic-function 'fr-val :lambda-list '(m))
(cl:defmethod fr-val ((m <Ultra_dis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultra_sonic-msg:fr-val is deprecated.  Use ultra_sonic-msg:fr instead.")
  (fr m))

(cl:ensure-generic-function 're-val :lambda-list '(m))
(cl:defmethod re-val ((m <Ultra_dis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultra_sonic-msg:re-val is deprecated.  Use ultra_sonic-msg:re instead.")
  (re m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ultra_dis>) ostream)
  "Serializes a message object of type '<Ultra_dis>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 're))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ultra_dis>) istream)
  "Deserializes a message object of type '<Ultra_dis>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 're) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ultra_dis>)))
  "Returns string type for a message object of type '<Ultra_dis>"
  "ultra_sonic/Ultra_dis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ultra_dis)))
  "Returns string type for a message object of type 'Ultra_dis"
  "ultra_sonic/Ultra_dis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ultra_dis>)))
  "Returns md5sum for a message object of type '<Ultra_dis>"
  "2ee497f682fbf9bc21a5c9d264d23864")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ultra_dis)))
  "Returns md5sum for a message object of type 'Ultra_dis"
  "2ee497f682fbf9bc21a5c9d264d23864")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ultra_dis>)))
  "Returns full string definition for message of type '<Ultra_dis>"
  (cl:format cl:nil "float32 fr~%float32 re~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ultra_dis)))
  "Returns full string definition for message of type 'Ultra_dis"
  (cl:format cl:nil "float32 fr~%float32 re~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ultra_dis>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ultra_dis>))
  "Converts a ROS message object to a list"
  (cl:list 'Ultra_dis
    (cl:cons ':fr (fr msg))
    (cl:cons ':re (re msg))
))
