; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude GlobalState.msg.html

(cl:defclass <GlobalState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robots_blue
    :reader robots_blue
    :initarg :robots_blue
    :type (cl:vector ssl_msgs-msg:GlobalRobotState)
   :initform (cl:make-array 0 :element-type 'ssl_msgs-msg:GlobalRobotState :initial-element (cl:make-instance 'ssl_msgs-msg:GlobalRobotState)))
   (robots_yellow
    :reader robots_yellow
    :initarg :robots_yellow
    :type (cl:vector ssl_msgs-msg:GlobalRobotState)
   :initform (cl:make-array 0 :element-type 'ssl_msgs-msg:GlobalRobotState :initial-element (cl:make-instance 'ssl_msgs-msg:GlobalRobotState)))
   (balls
    :reader balls
    :initarg :balls
    :type (cl:vector ssl_msgs-msg:BallState)
   :initform (cl:make-array 0 :element-type 'ssl_msgs-msg:BallState :initial-element (cl:make-instance 'ssl_msgs-msg:BallState))))
)

(cl:defclass GlobalState (<GlobalState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<GlobalState> is deprecated: use ssl_msgs-msg:GlobalState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GlobalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:header-val is deprecated.  Use ssl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robots_blue-val :lambda-list '(m))
(cl:defmethod robots_blue-val ((m <GlobalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:robots_blue-val is deprecated.  Use ssl_msgs-msg:robots_blue instead.")
  (robots_blue m))

(cl:ensure-generic-function 'robots_yellow-val :lambda-list '(m))
(cl:defmethod robots_yellow-val ((m <GlobalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:robots_yellow-val is deprecated.  Use ssl_msgs-msg:robots_yellow instead.")
  (robots_yellow m))

(cl:ensure-generic-function 'balls-val :lambda-list '(m))
(cl:defmethod balls-val ((m <GlobalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:balls-val is deprecated.  Use ssl_msgs-msg:balls instead.")
  (balls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalState>) ostream)
  "Serializes a message object of type '<GlobalState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots_blue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots_blue))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots_yellow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots_yellow))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'balls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'balls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalState>) istream)
  "Deserializes a message object of type '<GlobalState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robots_blue) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots_blue)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ssl_msgs-msg:GlobalRobotState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robots_yellow) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots_yellow)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ssl_msgs-msg:GlobalRobotState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'balls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'balls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ssl_msgs-msg:BallState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalState>)))
  "Returns string type for a message object of type '<GlobalState>"
  "ssl_msgs/GlobalState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalState)))
  "Returns string type for a message object of type 'GlobalState"
  "ssl_msgs/GlobalState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalState>)))
  "Returns md5sum for a message object of type '<GlobalState>"
  "ff5ed60cc23474d8e2b4dd790d960277")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalState)))
  "Returns md5sum for a message object of type 'GlobalState"
  "ff5ed60cc23474d8e2b4dd790d960277")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalState>)))
  "Returns full string definition for message of type '<GlobalState>"
  (cl:format cl:nil "Header header~%ssl_msgs/GlobalRobotState[] robots_blue~%ssl_msgs/GlobalRobotState[] robots_yellow~%ssl_msgs/BallState[] balls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ssl_msgs/GlobalRobotState~%float32 confidence 		#confidence of the identification of the robot~%uint8 id 			#robot id~%uint8 team 			#robot's team 0->Blue 1->Yellow (this might be changed later on)~%uint8 state 			#0->out of game/no detection, 1->in game, 2->in game but no move~%geometry_msgs/Pose2D pose 	#robot's pose x,y,theta~%geometry_msgs/Pose2D pix_coord 	#robot's 2D position in the image plane~%float32 height 			#robot's actual height~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: ssl_msgs/BallState~%float32 confidence~%float32 area~%geometry_msgs/Point32 position~%geometry_msgs/Point32 pix_coord~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalState)))
  "Returns full string definition for message of type 'GlobalState"
  (cl:format cl:nil "Header header~%ssl_msgs/GlobalRobotState[] robots_blue~%ssl_msgs/GlobalRobotState[] robots_yellow~%ssl_msgs/BallState[] balls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ssl_msgs/GlobalRobotState~%float32 confidence 		#confidence of the identification of the robot~%uint8 id 			#robot id~%uint8 team 			#robot's team 0->Blue 1->Yellow (this might be changed later on)~%uint8 state 			#0->out of game/no detection, 1->in game, 2->in game but no move~%geometry_msgs/Pose2D pose 	#robot's pose x,y,theta~%geometry_msgs/Pose2D pix_coord 	#robot's 2D position in the image plane~%float32 height 			#robot's actual height~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: ssl_msgs/BallState~%float32 confidence~%float32 area~%geometry_msgs/Point32 position~%geometry_msgs/Point32 pix_coord~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots_blue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots_yellow) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'balls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalState>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalState
    (cl:cons ':header (header msg))
    (cl:cons ':robots_blue (robots_blue msg))
    (cl:cons ':robots_yellow (robots_yellow msg))
    (cl:cons ':balls (balls msg))
))
