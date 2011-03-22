; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude GlobalRobotState.msg.html

(cl:defclass <GlobalRobotState> (roslisp-msg-protocol:ros-message)
  ((confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (team
    :reader team
    :initarg :team
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (pix_coord
    :reader pix_coord
    :initarg :pix_coord
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass GlobalRobotState (<GlobalRobotState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalRobotState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalRobotState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<GlobalRobotState> is deprecated: use ssl_msgs-msg:GlobalRobotState instead.")))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <GlobalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:confidence-val is deprecated.  Use ssl_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GlobalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:id-val is deprecated.  Use ssl_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'team-val :lambda-list '(m))
(cl:defmethod team-val ((m <GlobalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:team-val is deprecated.  Use ssl_msgs-msg:team instead.")
  (team m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GlobalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:state-val is deprecated.  Use ssl_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GlobalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:pose-val is deprecated.  Use ssl_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'pix_coord-val :lambda-list '(m))
(cl:defmethod pix_coord-val ((m <GlobalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:pix_coord-val is deprecated.  Use ssl_msgs-msg:pix_coord instead.")
  (pix_coord m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <GlobalRobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:height-val is deprecated.  Use ssl_msgs-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalRobotState>) ostream)
  "Serializes a message object of type '<GlobalRobotState>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'team)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pix_coord) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalRobotState>) istream)
  "Deserializes a message object of type '<GlobalRobotState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'team)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pix_coord) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalRobotState>)))
  "Returns string type for a message object of type '<GlobalRobotState>"
  "ssl_msgs/GlobalRobotState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalRobotState)))
  "Returns string type for a message object of type 'GlobalRobotState"
  "ssl_msgs/GlobalRobotState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalRobotState>)))
  "Returns md5sum for a message object of type '<GlobalRobotState>"
  "030e1e0e060477ba33c8d00d7d1359dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalRobotState)))
  "Returns md5sum for a message object of type 'GlobalRobotState"
  "030e1e0e060477ba33c8d00d7d1359dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalRobotState>)))
  "Returns full string definition for message of type '<GlobalRobotState>"
  (cl:format cl:nil "float32 confidence 		#confidence of the identification of the robot~%uint8 id 			#robot id~%uint8 team 			#robot's team 0->Blue 1->Yellow (this might be changed later on)~%uint8 state 			#0->out of game/no detection, 1->in game, 2->in game but no move~%geometry_msgs/Pose2D pose 	#robot's pose x,y,theta~%geometry_msgs/Pose2D pix_coord 	#robot's 2D position in the image plane~%float32 height 			#robot's actual height~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalRobotState)))
  "Returns full string definition for message of type 'GlobalRobotState"
  (cl:format cl:nil "float32 confidence 		#confidence of the identification of the robot~%uint8 id 			#robot id~%uint8 team 			#robot's team 0->Blue 1->Yellow (this might be changed later on)~%uint8 state 			#0->out of game/no detection, 1->in game, 2->in game but no move~%geometry_msgs/Pose2D pose 	#robot's pose x,y,theta~%geometry_msgs/Pose2D pix_coord 	#robot's 2D position in the image plane~%float32 height 			#robot's actual height~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalRobotState>))
  (cl:+ 0
     4
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pix_coord))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalRobotState>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalRobotState
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':id (id msg))
    (cl:cons ':team (team msg))
    (cl:cons ':state (state msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':pix_coord (pix_coord msg))
    (cl:cons ':height (height msg))
))
