; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude GameState.msg.html

(cl:defclass <GameState> (roslisp-msg-protocol:ros-message)
  ((temp1
    :reader temp1
    :initarg :temp1
    :type cl:float
    :initform 0.0)
   (temp2
    :reader temp2
    :initarg :temp2
    :type cl:float
    :initform 0.0)
   (temp3
    :reader temp3
    :initarg :temp3
    :type cl:float
    :initform 0.0))
)

(cl:defclass GameState (<GameState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<GameState> is deprecated: use ssl_msgs-msg:GameState instead.")))

(cl:ensure-generic-function 'temp1-val :lambda-list '(m))
(cl:defmethod temp1-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:temp1-val is deprecated.  Use ssl_msgs-msg:temp1 instead.")
  (temp1 m))

(cl:ensure-generic-function 'temp2-val :lambda-list '(m))
(cl:defmethod temp2-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:temp2-val is deprecated.  Use ssl_msgs-msg:temp2 instead.")
  (temp2 m))

(cl:ensure-generic-function 'temp3-val :lambda-list '(m))
(cl:defmethod temp3-val ((m <GameState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:temp3-val is deprecated.  Use ssl_msgs-msg:temp3 instead.")
  (temp3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameState>) ostream)
  "Serializes a message object of type '<GameState>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameState>) istream)
  "Deserializes a message object of type '<GameState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameState>)))
  "Returns string type for a message object of type '<GameState>"
  "ssl_msgs/GameState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameState)))
  "Returns string type for a message object of type 'GameState"
  "ssl_msgs/GameState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameState>)))
  "Returns md5sum for a message object of type '<GameState>"
  "fa5a84b1c8bb12b4999d77912044d8dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameState)))
  "Returns md5sum for a message object of type 'GameState"
  "fa5a84b1c8bb12b4999d77912044d8dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameState>)))
  "Returns full string definition for message of type '<GameState>"
  (cl:format cl:nil "float32 temp1 		#dummy~%float32 temp2 		#dummy~%float32 temp3 		#dummy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameState)))
  "Returns full string definition for message of type 'GameState"
  (cl:format cl:nil "float32 temp1 		#dummy~%float32 temp2 		#dummy~%float32 temp3 		#dummy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameState>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameState>))
  "Converts a ROS message object to a list"
  (cl:list 'GameState
    (cl:cons ':temp1 (temp1 msg))
    (cl:cons ':temp2 (temp2 msg))
    (cl:cons ':temp3 (temp3 msg))
))
