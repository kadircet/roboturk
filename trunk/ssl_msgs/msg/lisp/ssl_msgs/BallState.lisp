; Auto-generated. Do not edit!


(in-package ssl_msgs-msg)


;//! \htmlinclude BallState.msg.html

(defclass <BallState> (ros-message)
  ((confidence
    :reader confidence-val
    :initarg :confidence
    :type float
    :initform 0.0)
   (area
    :reader area-val
    :initarg :area
    :type float
    :initform 0.0)
   (position
    :reader position-val
    :initarg :position
    :type geometry_msgs-msg:<Point>
    :initform (make-instance 'geometry_msgs-msg:<Point>))
   (pix_coord
    :reader pix_coord-val
    :initarg :pix_coord
    :type geometry_msgs-msg:<Point>
    :initform (make-instance 'geometry_msgs-msg:<Point>)))
)
(defmethod serialize ((msg <BallState>) ostream)
  "Serializes a message object of type '<BallState>"
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'confidence))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'area))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
  (serialize (slot-value msg 'position) ostream)
  (serialize (slot-value msg 'pix_coord) ostream)
)
(defmethod deserialize ((msg <BallState>) istream)
  "Deserializes a message object of type '<BallState>"
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'area) (roslisp-utils:decode-single-float-bits bits)))
  (deserialize (slot-value msg 'position) istream)
  (deserialize (slot-value msg 'pix_coord) istream)
  msg
)
(defmethod ros-datatype ((msg (eql '<BallState>)))
  "Returns string type for a message object of type '<BallState>"
  "ssl_msgs/BallState")
(defmethod md5sum ((type (eql '<BallState>)))
  "Returns md5sum for a message object of type '<BallState>"
  "c26035f166cb53126d759caad6cb7ea9")
(defmethod message-definition ((type (eql '<BallState>)))
  "Returns full string definition for message of type '<BallState>"
  (format nil "float32 confidence~%float32 area~%geometry_msgs/Point position~%geometry_msgs/Point pix_coord~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(defmethod serialization-length ((msg <BallState>))
  (+ 0
     4
     4
     (serialization-length (slot-value msg 'position))
     (serialization-length (slot-value msg 'pix_coord))
))
(defmethod ros-message-to-list ((msg <BallState>))
  "Converts a ROS message object to a list"
  (list '<BallState>
    (cons ':confidence (confidence-val msg))
    (cons ':area (area-val msg))
    (cons ':position (position-val msg))
    (cons ':pix_coord (pix_coord-val msg))
))
