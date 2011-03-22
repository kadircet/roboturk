; Auto-generated. Do not edit!


(cl:in-package ssl_msgs-msg)


;//! \htmlinclude BallState.msg.html

(cl:defclass <BallState> (roslisp-msg-protocol:ros-message)
  ((confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (area
    :reader area
    :initarg :area
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (pix_coord
    :reader pix_coord
    :initarg :pix_coord
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass BallState (<BallState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BallState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BallState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_msgs-msg:<BallState> is deprecated: use ssl_msgs-msg:BallState instead.")))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <BallState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:confidence-val is deprecated.  Use ssl_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <BallState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:area-val is deprecated.  Use ssl_msgs-msg:area instead.")
  (area m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <BallState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:position-val is deprecated.  Use ssl_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'pix_coord-val :lambda-list '(m))
(cl:defmethod pix_coord-val ((m <BallState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_msgs-msg:pix_coord-val is deprecated.  Use ssl_msgs-msg:pix_coord instead.")
  (pix_coord m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BallState>) ostream)
  "Serializes a message object of type '<BallState>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pix_coord) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BallState>) istream)
  "Deserializes a message object of type '<BallState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'area) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pix_coord) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BallState>)))
  "Returns string type for a message object of type '<BallState>"
  "ssl_msgs/BallState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallState)))
  "Returns string type for a message object of type 'BallState"
  "ssl_msgs/BallState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BallState>)))
  "Returns md5sum for a message object of type '<BallState>"
  "8870bc00ea6f636a996e382a802ccc76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BallState)))
  "Returns md5sum for a message object of type 'BallState"
  "8870bc00ea6f636a996e382a802ccc76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BallState>)))
  "Returns full string definition for message of type '<BallState>"
  (cl:format cl:nil "float32 confidence~%float32 area~%geometry_msgs/Point32 position~%geometry_msgs/Point32 pix_coord~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BallState)))
  "Returns full string definition for message of type 'BallState"
  (cl:format cl:nil "float32 confidence~%float32 area~%geometry_msgs/Point32 position~%geometry_msgs/Point32 pix_coord~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BallState>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pix_coord))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BallState>))
  "Converts a ROS message object to a list"
  (cl:list 'BallState
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':area (area msg))
    (cl:cons ':position (position msg))
    (cl:cons ':pix_coord (pix_coord msg))
))
