; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude Visualization.msg.html

(cl:defclass <Visualization> (roslisp-msg-protocol:ros-message)
  ((robot_position
    :reader robot_position
    :initarg :robot_position
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (force_vector
    :reader force_vector
    :initarg :force_vector
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass Visualization (<Visualization>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Visualization>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Visualization)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<Visualization> is deprecated: use ssl_msgs-msg:Visualization instead.")))

(cl:ensure-generic-function 'robot_position-val :lambda-list '(m))
(cl:defmethod robot_position-val ((m <Visualization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:robot_position-val is deprecated.  Use ssl_msgs-msg:robot_position instead.")
  (robot_position m))

(cl:ensure-generic-function 'force_vector-val :lambda-list '(m))
(cl:defmethod force_vector-val ((m <Visualization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:force_vector-val is deprecated.  Use ssl_msgs-msg:force_vector instead.")
  (force_vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Visualization>) ostream)
  "Serializes a message object of type '<Visualization>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force_vector) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Visualization>) istream)
  "Deserializes a message object of type '<Visualization>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force_vector) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Visualization>)))
  "Returns string type for a message object of type '<Visualization>"
  "ssl_msgs/Visualization")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Visualization)))
  "Returns string type for a message object of type 'Visualization"
  "ssl_msgs/Visualization")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Visualization>)))
  "Returns md5sum for a message object of type '<Visualization>"
  "1fffa6ca883aaeeeccdc951a2d04f5f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Visualization)))
  "Returns md5sum for a message object of type 'Visualization"
  "1fffa6ca883aaeeeccdc951a2d04f5f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Visualization>)))
  "Returns full string definition for message of type '<Visualization>"
  (cl:format cl:nil "geometry_msgs/Point32 robot_position~%geometry_msgs/Point32 force_vector~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Visualization)))
  "Returns full string definition for message of type 'Visualization"
  (cl:format cl:nil "geometry_msgs/Point32 robot_position~%geometry_msgs/Point32 force_vector~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Visualization>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force_vector))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Visualization>))
  "Converts a ROS message object to a list"
  (cl:list 'Visualization
    (cl:cons ':robot_position (robot_position msg))
    (cl:cons ':force_vector (force_vector msg))
))
