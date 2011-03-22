; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude LocalState.msg.html

(cl:defclass <LocalState> (roslisp-msg-protocol:ros-message)
  ((robots
    :reader robots
    :initarg :robots
    :type (cl:vector ssl_msgs-msg:LocalRobotState)
   :initform (cl:make-array 0 :element-type 'ssl_msgs-msg:LocalRobotState :initial-element (cl:make-instance 'ssl_msgs-msg:LocalRobotState))))
)

(cl:defclass LocalState (<LocalState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<LocalState> is deprecated: use ssl_msgs-msg:LocalState instead.")))

(cl:ensure-generic-function 'robots-val :lambda-list '(m))
(cl:defmethod robots-val ((m <LocalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:robots-val is deprecated.  Use ssl_msgs-msg:robots instead.")
  (robots m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalState>) ostream)
  "Serializes a message object of type '<LocalState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalState>) istream)
  "Deserializes a message object of type '<LocalState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ssl_msgs-msg:LocalRobotState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalState>)))
  "Returns string type for a message object of type '<LocalState>"
  "ssl_msgs/LocalState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalState)))
  "Returns string type for a message object of type 'LocalState"
  "ssl_msgs/LocalState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalState>)))
  "Returns md5sum for a message object of type '<LocalState>"
  "e095c880d9c27373afe05b462a5a392d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalState)))
  "Returns md5sum for a message object of type 'LocalState"
  "e095c880d9c27373afe05b462a5a392d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalState>)))
  "Returns full string definition for message of type '<LocalState>"
  (cl:format cl:nil "ssl_msgs/LocalRobotState[] robots #includes robots' local states~%~%================================================================================~%MSG: ssl_msgs/LocalRobotState~%bool ball_possesion 	#true if it possess, false otherwise~%uint8 battery		#battery level of the robot changes between [0-100]~%float32 temp1 		#dummy~%float32 temp2 		#dummy~%float32 temp3 		#dummy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalState)))
  "Returns full string definition for message of type 'LocalState"
  (cl:format cl:nil "ssl_msgs/LocalRobotState[] robots #includes robots' local states~%~%================================================================================~%MSG: ssl_msgs/LocalRobotState~%bool ball_possesion 	#true if it possess, false otherwise~%uint8 battery		#battery level of the robot changes between [0-100]~%float32 temp1 		#dummy~%float32 temp2 		#dummy~%float32 temp3 		#dummy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalState>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalState
    (cl:cons ':robots (robots msg))
))
