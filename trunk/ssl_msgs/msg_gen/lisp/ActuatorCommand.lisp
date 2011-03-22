; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude ActuatorCommand.msg.html

(cl:defclass <ActuatorCommand> (roslisp-msg-protocol:ros-message)
  ((wheel_1
    :reader wheel_1
    :initarg :wheel_1
    :type cl:float
    :initform 0.0)
   (wheel_2
    :reader wheel_2
    :initarg :wheel_2
    :type cl:float
    :initform 0.0)
   (wheel_3
    :reader wheel_3
    :initarg :wheel_3
    :type cl:float
    :initform 0.0)
   (wheel_4
    :reader wheel_4
    :initarg :wheel_4
    :type cl:float
    :initform 0.0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (velocity_mag
    :reader velocity_mag
    :initarg :velocity_mag
    :type cl:float
    :initform 0.0)
   (velocity_ang
    :reader velocity_ang
    :initarg :velocity_ang
    :type cl:float
    :initform 0.0)
   (dribbler
    :reader dribbler
    :initarg :dribbler
    :type cl:float
    :initform 0.0)
   (kicker
    :reader kicker
    :initarg :kicker
    :type cl:float
    :initform 0.0)
   (chip_kicker
    :reader chip_kicker
    :initarg :chip_kicker
    :type cl:float
    :initform 0.0))
)

(cl:defclass ActuatorCommand (<ActuatorCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<ActuatorCommand> is deprecated: use ssl_msgs-msg:ActuatorCommand instead.")))

(cl:ensure-generic-function 'wheel_1-val :lambda-list '(m))
(cl:defmethod wheel_1-val ((m <ActuatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:wheel_1-val is deprecated.  Use ssl_msgs-msg:wheel_1 instead.")
  (wheel_1 m))

(cl:ensure-generic-function 'wheel_2-val :lambda-list '(m))
(cl:defmethod wheel_2-val ((m <ActuatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:wheel_2-val is deprecated.  Use ssl_msgs-msg:wheel_2 instead.")
  (wheel_2 m))

(cl:ensure-generic-function 'wheel_3-val :lambda-list '(m))
(cl:defmethod wheel_3-val ((m <ActuatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:wheel_3-val is deprecated.  Use ssl_msgs-msg:wheel_3 instead.")
  (wheel_3 m))

(cl:ensure-generic-function 'wheel_4-val :lambda-list '(m))
(cl:defmethod wheel_4-val ((m <ActuatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:wheel_4-val is deprecated.  Use ssl_msgs-msg:wheel_4 instead.")
  (wheel_4 m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ActuatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:pose-val is deprecated.  Use ssl_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity_mag-val :lambda-list '(m))
(cl:defmethod velocity_mag-val ((m <ActuatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:velocity_mag-val is deprecated.  Use ssl_msgs-msg:velocity_mag instead.")
  (velocity_mag m))

(cl:ensure-generic-function 'velocity_ang-val :lambda-list '(m))
(cl:defmethod velocity_ang-val ((m <ActuatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:velocity_ang-val is deprecated.  Use ssl_msgs-msg:velocity_ang instead.")
  (velocity_ang m))

(cl:ensure-generic-function 'dribbler-val :lambda-list '(m))
(cl:defmethod dribbler-val ((m <ActuatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:dribbler-val is deprecated.  Use ssl_msgs-msg:dribbler instead.")
  (dribbler m))

(cl:ensure-generic-function 'kicker-val :lambda-list '(m))
(cl:defmethod kicker-val ((m <ActuatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:kicker-val is deprecated.  Use ssl_msgs-msg:kicker instead.")
  (kicker m))

(cl:ensure-generic-function 'chip_kicker-val :lambda-list '(m))
(cl:defmethod chip_kicker-val ((m <ActuatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:chip_kicker-val is deprecated.  Use ssl_msgs-msg:chip_kicker instead.")
  (chip_kicker m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorCommand>) ostream)
  "Serializes a message object of type '<ActuatorCommand>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_mag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_ang))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dribbler))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kicker))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'chip_kicker))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorCommand>) istream)
  "Deserializes a message object of type '<ActuatorCommand>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_4) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_mag) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_ang) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dribbler) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kicker) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'chip_kicker) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorCommand>)))
  "Returns string type for a message object of type '<ActuatorCommand>"
  "ssl_msgs/ActuatorCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorCommand)))
  "Returns string type for a message object of type 'ActuatorCommand"
  "ssl_msgs/ActuatorCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorCommand>)))
  "Returns md5sum for a message object of type '<ActuatorCommand>"
  "df4087748bcf3e3c6af91932c8b968e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorCommand)))
  "Returns md5sum for a message object of type 'ActuatorCommand"
  "df4087748bcf3e3c6af91932c8b968e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorCommand>)))
  "Returns full string definition for message of type '<ActuatorCommand>"
  (cl:format cl:nil "float32 wheel_1~%float32 wheel_2~%float32 wheel_3~%float32 wheel_4~%geometry_msgs/Pose2D pose#temporary~%float32 velocity_mag #temporary~%float32 velocity_ang #temporary (w.r.t robot!)~%float32 dribbler~%float32 kicker~%float32 chip_kicker~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorCommand)))
  "Returns full string definition for message of type 'ActuatorCommand"
  (cl:format cl:nil "float32 wheel_1~%float32 wheel_2~%float32 wheel_3~%float32 wheel_4~%geometry_msgs/Pose2D pose#temporary~%float32 velocity_mag #temporary~%float32 velocity_ang #temporary (w.r.t robot!)~%float32 dribbler~%float32 kicker~%float32 chip_kicker~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorCommand>))
  (cl:+ 0
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorCommand
    (cl:cons ':wheel_1 (wheel_1 msg))
    (cl:cons ':wheel_2 (wheel_2 msg))
    (cl:cons ':wheel_3 (wheel_3 msg))
    (cl:cons ':wheel_4 (wheel_4 msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity_mag (velocity_mag msg))
    (cl:cons ':velocity_ang (velocity_ang msg))
    (cl:cons ':dribbler (dribbler msg))
    (cl:cons ':kicker (kicker msg))
    (cl:cons ':chip_kicker (chip_kicker msg))
))
