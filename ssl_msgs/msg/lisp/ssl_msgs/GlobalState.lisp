; Auto-generated. Do not edit!


(in-package ssl_msgs-msg)


;//! \htmlinclude GlobalState.msg.html

(defclass <GlobalState> (ros-message)
  ((header
    :reader header-val
    :initarg :header
    :type roslib-msg:<Header>
    :initform (make-instance 'roslib-msg:<Header>))
   (robots_blue
    :reader robots_blue-val
    :initarg :robots_blue
    :type (vector ssl_msgs-msg:<GlobalRobotState>)
   :initform (make-array 0 :element-type 'ssl_msgs-msg:<GlobalRobotState> :initial-element (make-instance 'ssl_msgs-msg:<GlobalRobotState>)))
   (robots_yellow
    :reader robots_yellow-val
    :initarg :robots_yellow
    :type (vector ssl_msgs-msg:<GlobalRobotState>)
   :initform (make-array 0 :element-type 'ssl_msgs-msg:<GlobalRobotState> :initial-element (make-instance 'ssl_msgs-msg:<GlobalRobotState>)))
   (balls
    :reader balls-val
    :initarg :balls
    :type (vector ssl_msgs-msg:<BallState>)
   :initform (make-array 0 :element-type 'ssl_msgs-msg:<BallState> :initial-element (make-instance 'ssl_msgs-msg:<BallState>))))
)
(defmethod serialize ((msg <GlobalState>) ostream)
  "Serializes a message object of type '<GlobalState>"
  (serialize (slot-value msg 'header) ostream)
  (let ((__ros_arr_len (length (slot-value msg 'robots_blue))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (serialize ele ostream))
    (slot-value msg 'robots_blue))
  (let ((__ros_arr_len (length (slot-value msg 'robots_yellow))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (serialize ele ostream))
    (slot-value msg 'robots_yellow))
  (let ((__ros_arr_len (length (slot-value msg 'balls))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (serialize ele ostream))
    (slot-value msg 'balls))
)
(defmethod deserialize ((msg <GlobalState>) istream)
  "Deserializes a message object of type '<GlobalState>"
  (deserialize (slot-value msg 'header) istream)
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'robots_blue) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'robots_blue)))
      (dotimes (i __ros_arr_len)
        (setf (aref vals i) (make-instance 'ssl_msgs-msg:<GlobalRobotState>))
(deserialize (aref vals i) istream))))
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'robots_yellow) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'robots_yellow)))
      (dotimes (i __ros_arr_len)
        (setf (aref vals i) (make-instance 'ssl_msgs-msg:<GlobalRobotState>))
(deserialize (aref vals i) istream))))
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'balls) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'balls)))
      (dotimes (i __ros_arr_len)
        (setf (aref vals i) (make-instance 'ssl_msgs-msg:<BallState>))
(deserialize (aref vals i) istream))))
  msg
)
(defmethod ros-datatype ((msg (eql '<GlobalState>)))
  "Returns string type for a message object of type '<GlobalState>"
  "ssl_msgs/GlobalState")
(defmethod md5sum ((type (eql '<GlobalState>)))
  "Returns md5sum for a message object of type '<GlobalState>"
  "1ede7917c00561d05dc382e5191b7945")
(defmethod message-definition ((type (eql '<GlobalState>)))
  "Returns full string definition for message of type '<GlobalState>"
  (format nil "Header header~%ssl_msgs/GlobalRobotState[] robots_blue~%ssl_msgs/GlobalRobotState[] robots_yellow~%ssl_msgs/BallState[] balls~%~%================================================================================~%MSG: roslib/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ssl_msgs/GlobalRobotState~%float32 confidence 		#confidence of the identification of the robot~%uint8 id 			#robot id~%uint8 team 			#robot's team 0->Blue 1->Yellow (this might be changed later on)~%uint8 state 			#0->out of game/no detection, 1->in game, 2->in game but no move~%geometry_msgs/Pose2D pose 	#robot's pose x,y,theta~%geometry_msgs/Pose2D pix_coord 	#robot's 2D position in the image plane~%float32 height 			#robot's actual height~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: ssl_msgs/BallState~%float32 confidence~%float32 area~%geometry_msgs/Point position~%geometry_msgs/Point pix_coord~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(defmethod serialization-length ((msg <GlobalState>))
  (+ 0
     (serialization-length (slot-value msg 'header))
     4 (reduce #'+ (slot-value msg 'robots_blue) :key #'(lambda (ele) (declare (ignorable ele)) (+ (serialization-length ele))))
     4 (reduce #'+ (slot-value msg 'robots_yellow) :key #'(lambda (ele) (declare (ignorable ele)) (+ (serialization-length ele))))
     4 (reduce #'+ (slot-value msg 'balls) :key #'(lambda (ele) (declare (ignorable ele)) (+ (serialization-length ele))))
))
(defmethod ros-message-to-list ((msg <GlobalState>))
  "Converts a ROS message object to a list"
  (list '<GlobalState>
    (cons ':header (header-val msg))
    (cons ':robots_blue (robots_blue-val msg))
    (cons ':robots_yellow (robots_yellow-val msg))
    (cons ':balls (balls-val msg))
))
