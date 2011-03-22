; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude RobotCommand.msg.html

(cl:defclass <RobotCommand> (roslisp-msg-protocol:ros-message)
  ((trans_speed
    :reader trans_speed
    :initarg :trans_speed
    :type cl:float
    :initform 0.0)
   (trans_direction
    :reader trans_direction
    :initarg :trans_direction
    :type cl:float
    :initform 0.0)
   (rot_speed
    :reader rot_speed
    :initarg :rot_speed
    :type cl:float
    :initform 0.0)
   (rot_direction
    :reader rot_direction
    :initarg :rot_direction
    :type cl:boolean
    :initform cl:nil)
   (dribbler_speed
    :reader dribbler_speed
    :initarg :dribbler_speed
    :type cl:float
    :initform 0.0)
   (dribbler_direction
    :reader dribbler_direction
    :initarg :dribbler_direction
    :type cl:boolean
    :initform cl:nil)
   (kicker_speed
    :reader kicker_speed
    :initarg :kicker_speed
    :type cl:fixnum
    :initform 0)
   (return_battery
    :reader return_battery
    :initarg :return_battery
    :type cl:boolean
    :initform cl:nil)
   (return_temp_1
    :reader return_temp_1
    :initarg :return_temp_1
    :type cl:boolean
    :initform cl:nil)
   (return_temp_2
    :reader return_temp_2
    :initarg :return_temp_2
    :type cl:boolean
    :initform cl:nil)
   (return_temp_3
    :reader return_temp_3
    :initarg :return_temp_3
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotCommand (<RobotCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<RobotCommand> is deprecated: use ssl_msgs-msg:RobotCommand instead.")))

(cl:ensure-generic-function 'trans_speed-val :lambda-list '(m))
(cl:defmethod trans_speed-val ((m <RobotCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:trans_speed-val is deprecated.  Use ssl_msgs-msg:trans_speed instead.")
  (trans_speed m))

(cl:ensure-generic-function 'trans_direction-val :lambda-list '(m))
(cl:defmethod trans_direction-val ((m <RobotCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:trans_direction-val is deprecated.  Use ssl_msgs-msg:trans_direction instead.")
  (trans_direction m))

(cl:ensure-generic-function 'rot_speed-val :lambda-list '(m))
(cl:defmethod rot_speed-val ((m <RobotCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:rot_speed-val is deprecated.  Use ssl_msgs-msg:rot_speed instead.")
  (rot_speed m))

(cl:ensure-generic-function 'rot_direction-val :lambda-list '(m))
(cl:defmethod rot_direction-val ((m <RobotCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:rot_direction-val is deprecated.  Use ssl_msgs-msg:rot_direction instead.")
  (rot_direction m))

(cl:ensure-generic-function 'dribbler_speed-val :lambda-list '(m))
(cl:defmethod dribbler_speed-val ((m <RobotCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:dribbler_speed-val is deprecated.  Use ssl_msgs-msg:dribbler_speed instead.")
  (dribbler_speed m))

(cl:ensure-generic-function 'dribbler_direction-val :lambda-list '(m))
(cl:defmethod dribbler_direction-val ((m <RobotCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:dribbler_direction-val is deprecated.  Use ssl_msgs-msg:dribbler_direction instead.")
  (dribbler_direction m))

(cl:ensure-generic-function 'kicker_speed-val :lambda-list '(m))
(cl:defmethod kicker_speed-val ((m <RobotCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:kicker_speed-val is deprecated.  Use ssl_msgs-msg:kicker_speed instead.")
  (kicker_speed m))

(cl:ensure-generic-function 'return_battery-val :lambda-list '(m))
(cl:defmethod return_battery-val ((m <RobotCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:return_battery-val is deprecated.  Use ssl_msgs-msg:return_battery instead.")
  (return_battery m))

(cl:ensure-generic-function 'return_temp_1-val :lambda-list '(m))
(cl:defmethod return_temp_1-val ((m <RobotCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:return_temp_1-val is deprecated.  Use ssl_msgs-msg:return_temp_1 instead.")
  (return_temp_1 m))

(cl:ensure-generic-function 'return_temp_2-val :lambda-list '(m))
(cl:defmethod return_temp_2-val ((m <RobotCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:return_temp_2-val is deprecated.  Use ssl_msgs-msg:return_temp_2 instead.")
  (return_temp_2 m))

(cl:ensure-generic-function 'return_temp_3-val :lambda-list '(m))
(cl:defmethod return_temp_3-val ((m <RobotCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:return_temp_3-val is deprecated.  Use ssl_msgs-msg:return_temp_3 instead.")
  (return_temp_3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotCommand>) ostream)
  "Serializes a message object of type '<RobotCommand>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trans_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'trans_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rot_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rot_direction) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dribbler_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dribbler_direction) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'kicker_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'return_battery) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'return_temp_1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'return_temp_2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'return_temp_3) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotCommand>) istream)
  "Deserializes a message object of type '<RobotCommand>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trans_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trans_direction) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rot_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'rot_direction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dribbler_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'dribbler_direction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'kicker_speed)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'return_battery) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'return_temp_1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'return_temp_2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'return_temp_3) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotCommand>)))
  "Returns string type for a message object of type '<RobotCommand>"
  "ssl_msgs/RobotCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotCommand)))
  "Returns string type for a message object of type 'RobotCommand"
  "ssl_msgs/RobotCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotCommand>)))
  "Returns md5sum for a message object of type '<RobotCommand>"
  "f28766d065dcde0dfeee5898a91f2085")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotCommand)))
  "Returns md5sum for a message object of type 'RobotCommand"
  "f28766d065dcde0dfeee5898a91f2085")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotCommand>)))
  "Returns full string definition for message of type '<RobotCommand>"
  (cl:format cl:nil "float32 trans_speed	# always positive, indicates magnitude in m/s w.r.t local frame~%float32 trans_direction	# in radians w.r.t local frame~%float32 rot_speed	# always positive, indicates magnitude in radians w.r.t local frame~%bool rot_direction	# ccw:+, cw:- w.r.t local frame~%float32 dribbler_speed	# always positive, indicates magnitude in rpm~%bool dribbler_direction	# ccw:+, cw:-~%uint8 kicker_speed	# always positive, indicates magnitude between [0,100]	~%bool return_battery	# true if battery level info is requested. false otherwise~%bool return_temp_1	# true if temp_1 level info is requested. false otherwise~%bool return_temp_2	# true if temp_2 level info is requested. false otherwise~%bool return_temp_3	# true if temp_3 level info is requested. false otherwise~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotCommand)))
  "Returns full string definition for message of type 'RobotCommand"
  (cl:format cl:nil "float32 trans_speed	# always positive, indicates magnitude in m/s w.r.t local frame~%float32 trans_direction	# in radians w.r.t local frame~%float32 rot_speed	# always positive, indicates magnitude in radians w.r.t local frame~%bool rot_direction	# ccw:+, cw:- w.r.t local frame~%float32 dribbler_speed	# always positive, indicates magnitude in rpm~%bool dribbler_direction	# ccw:+, cw:-~%uint8 kicker_speed	# always positive, indicates magnitude between [0,100]	~%bool return_battery	# true if battery level info is requested. false otherwise~%bool return_temp_1	# true if temp_1 level info is requested. false otherwise~%bool return_temp_2	# true if temp_2 level info is requested. false otherwise~%bool return_temp_3	# true if temp_3 level info is requested. false otherwise~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotCommand>))
  (cl:+ 0
     4
     4
     4
     1
     4
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotCommand
    (cl:cons ':trans_speed (trans_speed msg))
    (cl:cons ':trans_direction (trans_direction msg))
    (cl:cons ':rot_speed (rot_speed msg))
    (cl:cons ':rot_direction (rot_direction msg))
    (cl:cons ':dribbler_speed (dribbler_speed msg))
    (cl:cons ':dribbler_direction (dribbler_direction msg))
    (cl:cons ':kicker_speed (kicker_speed msg))
    (cl:cons ':return_battery (return_battery msg))
    (cl:cons ':return_temp_1 (return_temp_1 msg))
    (cl:cons ':return_temp_2 (return_temp_2 msg))
    (cl:cons ':return_temp_3 (return_temp_3 msg))
))
