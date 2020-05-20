; Auto-generated. Do not edit!


(cl:in-package snbird-msg)


;//! \htmlinclude Whls_vel.msg.html

(cl:defclass <Whls_vel> (roslisp-msg-protocol:ros-message)
  ((fl
    :reader fl
    :initarg :fl
    :type cl:float
    :initform 0.0)
   (fr
    :reader fr
    :initarg :fr
    :type cl:float
    :initform 0.0)
   (rl
    :reader rl
    :initarg :rl
    :type cl:float
    :initform 0.0)
   (rr
    :reader rr
    :initarg :rr
    :type cl:float
    :initform 0.0))
)

(cl:defclass Whls_vel (<Whls_vel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Whls_vel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Whls_vel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name snbird-msg:<Whls_vel> is deprecated: use snbird-msg:Whls_vel instead.")))

(cl:ensure-generic-function 'fl-val :lambda-list '(m))
(cl:defmethod fl-val ((m <Whls_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader snbird-msg:fl-val is deprecated.  Use snbird-msg:fl instead.")
  (fl m))

(cl:ensure-generic-function 'fr-val :lambda-list '(m))
(cl:defmethod fr-val ((m <Whls_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader snbird-msg:fr-val is deprecated.  Use snbird-msg:fr instead.")
  (fr m))

(cl:ensure-generic-function 'rl-val :lambda-list '(m))
(cl:defmethod rl-val ((m <Whls_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader snbird-msg:rl-val is deprecated.  Use snbird-msg:rl instead.")
  (rl m))

(cl:ensure-generic-function 'rr-val :lambda-list '(m))
(cl:defmethod rr-val ((m <Whls_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader snbird-msg:rr-val is deprecated.  Use snbird-msg:rr instead.")
  (rr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Whls_vel>) ostream)
  "Serializes a message object of type '<Whls_vel>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Whls_vel>) istream)
  "Deserializes a message object of type '<Whls_vel>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fl) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'rl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rr) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Whls_vel>)))
  "Returns string type for a message object of type '<Whls_vel>"
  "snbird/Whls_vel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Whls_vel)))
  "Returns string type for a message object of type 'Whls_vel"
  "snbird/Whls_vel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Whls_vel>)))
  "Returns md5sum for a message object of type '<Whls_vel>"
  "291d0a1bb554e9cecb818a219ca75ef0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Whls_vel)))
  "Returns md5sum for a message object of type 'Whls_vel"
  "291d0a1bb554e9cecb818a219ca75ef0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Whls_vel>)))
  "Returns full string definition for message of type '<Whls_vel>"
  (cl:format cl:nil "float32 fl~%float32 fr~%float32 rl~%float32 rr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Whls_vel)))
  "Returns full string definition for message of type 'Whls_vel"
  (cl:format cl:nil "float32 fl~%float32 fr~%float32 rl~%float32 rr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Whls_vel>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Whls_vel>))
  "Converts a ROS message object to a list"
  (cl:list 'Whls_vel
    (cl:cons ':fl (fl msg))
    (cl:cons ':fr (fr msg))
    (cl:cons ':rl (rl msg))
    (cl:cons ':rr (rr msg))
))
