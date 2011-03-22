; Auto-generated. Do not edit!


(in-package ssl_msgs-msg)


;//! \htmlinclude LocalState.msg.html

(defclass <LocalState> (ros-message)
  ((robots
    :reader robots-val
    :initarg :robots
    :type (vector ssl_msgs-msg:<LocalRobotState>)
   :initform (make-array 0 :element-type 'ssl_msgs-msg:<LocalRobotState> :initial-element (make-instance 'ssl_msgs-msg:<LocalRobotState>))))
)
(defmethod serialize ((msg <LocalState>) ostream)
  "Serializes a message object of type '<LocalState>"
  (let ((__ros_arr_len (length (slot-value msg 'robots))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (serialize ele ostream))
    (slot-value msg 'robots))
)
(defmethod deserialize ((msg <LocalState>) istream)
  "Deserializes a message object of type '<LocalState>"
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'robots) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'robots)))
      (dotimes (i __ros_arr_len)
        (setf (aref vals i) (make-instance 'ssl_msgs-msg:<LocalRobotState>))
(deserialize (aref vals i) istream))))
  msg
)
(defmethod ros-datatype ((msg (eql '<LocalState>)))
  "Returns string type for a message object of type '<LocalState>"
  "ssl_msgs/LocalState")
(defmethod md5sum ((type (eql '<LocalState>)))
  "Returns md5sum for a message object of type '<LocalState>"
  "e095c880d9c27373afe05b462a5a392d")
(defmethod message-definition ((type (eql '<LocalState>)))
  "Returns full string definition for message of type '<LocalState>"
  (format nil "ssl_msgs/LocalRobotState[] robots #includes robots' local states~%~%================================================================================~%MSG: ssl_msgs/LocalRobotState~%bool ball_possesion 	#true if it possess, false otherwise~%uint8 battery		#battery level of the robot changes between [0-100]~%float32 temp1 		#dummy~%float32 temp2 		#dummy~%float32 temp3 		#dummy~%~%~%"))
(defmethod serialization-length ((msg <LocalState>))
  (+ 0
     4 (reduce #'+ (slot-value msg 'robots) :key #'(lambda (ele) (declare (ignorable ele)) (+ (serialization-length ele))))
))
(defmethod ros-message-to-list ((msg <LocalState>))
  "Converts a ROS message object to a list"
  (list '<LocalState>
    (cons ':robots (robots-val msg))
))
