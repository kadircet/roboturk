; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude LocalRobotState.msg.html

(cl:defclass <LocalRobotState> (roslisp-msg-protocol:ros-message)
  ((ball_possesion
    :reader ball_possesion
    :initarg :ball_possesion
    :type cl:boolean
    :initform cl:nil)
   (battery
    :reader battery
    :initarg :battery
    :type cl:fixnum
    :initform 0)
   (temp1
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

(cl:defclass LocalRobotState (<LocalRobotState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalRobotState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalRobotState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<LocalRobotState> is deprecated: use ssl_msgs-msg:LocalRobotState instead.")))

(cl:ensure-generic-function 'ball_possesion-val :lambda-list '(m))
(cl:defmethod ball_possesion-val ((m <LocalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:ball_possesion-val is deprecated.  Use ssl_msgs-msg:ball_possesion instead.")
  (ball_possesion m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <LocalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:battery-val is deprecated.  Use ssl_msgs-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'temp1-val :lambda-list '(m))
(cl:defmethod temp1-val ((m <LocalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:temp1-val is deprecated.  Use ssl_msgs-msg:temp1 instead.")
  (temp1 m))

(cl:ensure-generic-function 'temp2-val :lambda-list '(m))
(cl:defmethod temp2-val ((m <LocalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:temp2-val is deprecated.  Use ssl_msgs-msg:temp2 instead.")
  (temp2 m))

(cl:ensure-generic-function 'temp3-val :lambda-list '(m))
(cl:defmethod temp3-val ((m <LocalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:temp3-val is deprecated.  Use ssl_msgs-msg:temp3 instead.")
  (temp3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalRobotState>) ostream)
  "Serializes a message object of type '<LocalRobotState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ball_possesion) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalRobotState>) istream)
  "Deserializes a message object of type '<LocalRobotState>"
    (cl:setf (cl:slot-value msg 'ball_possesion) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalRobotState>)))
  "Returns string type for a message object of type '<LocalRobotState>"
  "ssl_msgs/LocalRobotState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalRobotState)))
  "Returns string type for a message object of type 'LocalRobotState"
  "ssl_msgs/LocalRobotState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalRobotState>)))
  "Returns md5sum for a message object of type '<LocalRobotState>"
  "91ec796323133e006b0a572e6a364407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalRobotState)))
  "Returns md5sum for a message object of type 'LocalRobotState"
  "91ec796323133e006b0a572e6a364407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalRobotState>)))
  "Returns full string definition for message of type '<LocalRobotState>"
  (cl:format cl:nil "bool ball_possesion 	#true if it possess, false otherwise~%uint8 battery		#battery level of the robot changes between [0-100]~%float32 temp1 		#dummy~%float32 temp2 		#dummy~%float32 temp3 		#dummy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalRobotState)))
  "Returns full string definition for message of type 'LocalRobotState"
  (cl:format cl:nil "bool ball_possesion 	#true if it possess, false otherwise~%uint8 battery		#battery level of the robot changes between [0-100]~%float32 temp1 		#dummy~%float32 temp2 		#dummy~%float32 temp3 		#dummy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalRobotState>))
  (cl:+ 0
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalRobotState>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalRobotState
    (cl:cons ':ball_possesion (ball_possesion msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':temp1 (temp1 msg))
    (cl:cons ':temp2 (temp2 msg))
    (cl:cons ':temp3 (temp3 msg))
))
