; Auto-generated. Do not edit!


(in-package ssl_msgs-msg)


;//! \htmlinclude TeamCommand.msg.html

(defclass <TeamCommand> (ros-message)
  ((robot_commands
    :reader robot_commands-val
    :initarg :robot_commands
    :type (vector ssl_msgs-msg:<RobotCommand>)
   :initform (make-array 0 :element-type 'ssl_msgs-msg:<RobotCommand> :initial-element (make-instance 'ssl_msgs-msg:<RobotCommand>))))
)
(defmethod serialize ((msg <TeamCommand>) ostream)
  "Serializes a message object of type '<TeamCommand>"
  (let ((__ros_arr_len (length (slot-value msg 'robot_commands))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (serialize ele ostream))
    (slot-value msg 'robot_commands))
)
(defmethod deserialize ((msg <TeamCommand>) istream)
  "Deserializes a message object of type '<TeamCommand>"
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'robot_commands) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'robot_commands)))
      (dotimes (i __ros_arr_len)
        (setf (aref vals i) (make-instance 'ssl_msgs-msg:<RobotCommand>))
(deserialize (aref vals i) istream))))
  msg
)
(defmethod ros-datatype ((msg (eql '<TeamCommand>)))
  "Returns string type for a message object of type '<TeamCommand>"
  "ssl_msgs/TeamCommand")
(defmethod md5sum ((type (eql '<TeamCommand>)))
  "Returns md5sum for a message object of type '<TeamCommand>"
  "60fb5b56deb79d428cb90d782d7690c5")
(defmethod message-definition ((type (eql '<TeamCommand>)))
  "Returns full string definition for message of type '<TeamCommand>"
  (format nil "ssl_msgs/RobotCommand[] robot_commands~%~%================================================================================~%MSG: ssl_msgs/RobotCommand~%float32 trans_speed	# always positive, indicates magnitude in m/s~%float32 trans_direction	# in radians~%float32 rot_speed	# always positive, indicates magnitude in radians~%bool rot_direction	# ccw:+, cw:-~%float32 dribbler_speed	# always positive, indicates magnitude in rpm~%bool dribbler_direction	# ccw:+, cw:-~%uint8 kicker_speed	# always positive, indicates magnitude between [0,100]	~%bool return_battery	# true if battery level info is requested. false otherwise~%bool return_temp_1	# true if temp_1 level info is requested. false otherwise~%bool return_temp_2	# true if temp_2 level info is requested. false otherwise~%bool return_temp_3	# true if temp_3 level info is requested. false otherwise~%~%~%~%"))
(defmethod serialization-length ((msg <TeamCommand>))
  (+ 0
     4 (reduce #'+ (slot-value msg 'robot_commands) :key #'(lambda (ele) (declare (ignorable ele)) (+ (serialization-length ele))))
))
(defmethod ros-message-to-list ((msg <TeamCommand>))
  "Converts a ROS message object to a list"
  (list '<TeamCommand>
    (cons ':robot_commands (robot_commands-val msg))
))
