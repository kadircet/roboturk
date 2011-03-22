; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude TeamCommand.msg.html

(cl:defclass <TeamCommand> (roslisp-msg-protocol:ros-message)
  ((robot_commands
    :reader robot_commands
    :initarg :robot_commands
    :type (cl:vector ssl_msgs-msg:RobotCommand)
   :initform (cl:make-array 0 :element-type 'ssl_msgs-msg:RobotCommand :initial-element (cl:make-instance 'ssl_msgs-msg:RobotCommand))))
)

(cl:defclass TeamCommand (<TeamCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeamCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeamCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<TeamCommand> is deprecated: use ssl_msgs-msg:TeamCommand instead.")))

(cl:ensure-generic-function 'robot_commands-val :lambda-list '(m))
(cl:defmethod robot_commands-val ((m <TeamCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:robot_commands-val is deprecated.  Use ssl_msgs-msg:robot_commands instead.")
  (robot_commands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeamCommand>) ostream)
  "Serializes a message object of type '<TeamCommand>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_commands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robot_commands))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeamCommand>) istream)
  "Deserializes a message object of type '<TeamCommand>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_commands) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_commands)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ssl_msgs-msg:RobotCommand))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeamCommand>)))
  "Returns string type for a message object of type '<TeamCommand>"
  "ssl_msgs/TeamCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeamCommand)))
  "Returns string type for a message object of type 'TeamCommand"
  "ssl_msgs/TeamCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeamCommand>)))
  "Returns md5sum for a message object of type '<TeamCommand>"
  "60fb5b56deb79d428cb90d782d7690c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeamCommand)))
  "Returns md5sum for a message object of type 'TeamCommand"
  "60fb5b56deb79d428cb90d782d7690c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeamCommand>)))
  "Returns full string definition for message of type '<TeamCommand>"
  (cl:format cl:nil "ssl_msgs/RobotCommand[] robot_commands~%~%================================================================================~%MSG: ssl_msgs/RobotCommand~%float32 trans_speed	# always positive, indicates magnitude in m/s w.r.t local frame~%float32 trans_direction	# in radians w.r.t local frame~%float32 rot_speed	# always positive, indicates magnitude in radians w.r.t local frame~%bool rot_direction	# ccw:+, cw:- w.r.t local frame~%float32 dribbler_speed	# always positive, indicates magnitude in rpm~%bool dribbler_direction	# ccw:+, cw:-~%uint8 kicker_speed	# always positive, indicates magnitude between [0,100]	~%bool return_battery	# true if battery level info is requested. false otherwise~%bool return_temp_1	# true if temp_1 level info is requested. false otherwise~%bool return_temp_2	# true if temp_2 level info is requested. false otherwise~%bool return_temp_3	# true if temp_3 level info is requested. false otherwise~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeamCommand)))
  "Returns full string definition for message of type 'TeamCommand"
  (cl:format cl:nil "ssl_msgs/RobotCommand[] robot_commands~%~%================================================================================~%MSG: ssl_msgs/RobotCommand~%float32 trans_speed	# always positive, indicates magnitude in m/s w.r.t local frame~%float32 trans_direction	# in radians w.r.t local frame~%float32 rot_speed	# always positive, indicates magnitude in radians w.r.t local frame~%bool rot_direction	# ccw:+, cw:- w.r.t local frame~%float32 dribbler_speed	# always positive, indicates magnitude in rpm~%bool dribbler_direction	# ccw:+, cw:-~%uint8 kicker_speed	# always positive, indicates magnitude between [0,100]	~%bool return_battery	# true if battery level info is requested. false otherwise~%bool return_temp_1	# true if temp_1 level info is requested. false otherwise~%bool return_temp_2	# true if temp_2 level info is requested. false otherwise~%bool return_temp_3	# true if temp_3 level info is requested. false otherwise~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeamCommand>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeamCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'TeamCommand
    (cl:cons ':robot_commands (robot_commands msg))
))
