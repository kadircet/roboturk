; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude TeamPoseCommand.msg.html

(cl:defclass <TeamPoseCommand> (roslisp-msg-protocol:ros-message)
  ((target_poses
    :reader target_poses
    :initarg :target_poses
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D))))
)

(cl:defclass TeamPoseCommand (<TeamPoseCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeamPoseCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeamPoseCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<TeamPoseCommand> is deprecated: use ssl_msgs-msg:TeamPoseCommand instead.")))

(cl:ensure-generic-function 'target_poses-val :lambda-list '(m))
(cl:defmethod target_poses-val ((m <TeamPoseCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:target_poses-val is deprecated.  Use ssl_msgs-msg:target_poses instead.")
  (target_poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeamPoseCommand>) ostream)
  "Serializes a message object of type '<TeamPoseCommand>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'target_poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeamPoseCommand>) istream)
  "Deserializes a message object of type '<TeamPoseCommand>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeamPoseCommand>)))
  "Returns string type for a message object of type '<TeamPoseCommand>"
  "ssl_msgs/TeamPoseCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeamPoseCommand)))
  "Returns string type for a message object of type 'TeamPoseCommand"
  "ssl_msgs/TeamPoseCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeamPoseCommand>)))
  "Returns md5sum for a message object of type '<TeamPoseCommand>"
  "18a79bb622b74b8f2b6ba9bacc51773d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeamPoseCommand)))
  "Returns md5sum for a message object of type 'TeamPoseCommand"
  "18a79bb622b74b8f2b6ba9bacc51773d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeamPoseCommand>)))
  "Returns full string definition for message of type '<TeamPoseCommand>"
  (cl:format cl:nil "geometry_msgs/Pose2D[] target_poses 	#robots' target pose x,y,theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeamPoseCommand)))
  "Returns full string definition for message of type 'TeamPoseCommand"
  (cl:format cl:nil "geometry_msgs/Pose2D[] target_poses 	#robots' target pose x,y,theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeamPoseCommand>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeamPoseCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'TeamPoseCommand
    (cl:cons ':target_poses (target_poses msg))
))
