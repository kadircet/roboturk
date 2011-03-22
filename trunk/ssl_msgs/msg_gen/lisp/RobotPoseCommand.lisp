; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude RobotPoseCommand.msg.html

(cl:defclass <RobotPoseCommand> (roslisp-msg-protocol:ros-message)
  ((target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass RobotPoseCommand (<RobotPoseCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotPoseCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotPoseCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<RobotPoseCommand> is deprecated: use ssl_msgs-msg:RobotPoseCommand instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <RobotPoseCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:target_pose-val is deprecated.  Use ssl_msgs-msg:target_pose instead.")
  (target_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotPoseCommand>) ostream)
  "Serializes a message object of type '<RobotPoseCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotPoseCommand>) istream)
  "Deserializes a message object of type '<RobotPoseCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotPoseCommand>)))
  "Returns string type for a message object of type '<RobotPoseCommand>"
  "ssl_msgs/RobotPoseCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotPoseCommand)))
  "Returns string type for a message object of type 'RobotPoseCommand"
  "ssl_msgs/RobotPoseCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotPoseCommand>)))
  "Returns md5sum for a message object of type '<RobotPoseCommand>"
  "80b130a384062a7ab02c42399d5fceca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotPoseCommand)))
  "Returns md5sum for a message object of type 'RobotPoseCommand"
  "80b130a384062a7ab02c42399d5fceca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotPoseCommand>)))
  "Returns full string definition for message of type '<RobotPoseCommand>"
  (cl:format cl:nil "geometry_msgs/Pose2D target_pose 	#robot's target pose x,y,theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotPoseCommand)))
  "Returns full string definition for message of type 'RobotPoseCommand"
  (cl:format cl:nil "geometry_msgs/Pose2D target_pose 	#robot's target pose x,y,theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotPoseCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotPoseCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotPoseCommand
    (cl:cons ':target_pose (target_pose msg))
))
