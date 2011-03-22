; Auto-generated. Do not edit!


(in-package ssl_msgs-msg)


;//! \htmlinclude RobotCommand.msg.html

(defclass <RobotCommand> (ros-message)
  ((trans_speed
    :reader trans_speed-val
    :initarg :trans_speed
    :type float
    :initform 0.0)
   (trans_direction
    :reader trans_direction-val
    :initarg :trans_direction
    :type float
    :initform 0.0)
   (rot_speed
    :reader rot_speed-val
    :initarg :rot_speed
    :type float
    :initform 0.0)
   (rot_direction
    :reader rot_direction-val
    :initarg :rot_direction
    :type boolean
    :initform nil)
   (dribbler_speed
    :reader dribbler_speed-val
    :initarg :dribbler_speed
    :type float
    :initform 0.0)
   (dribbler_direction
    :reader dribbler_direction-val
    :initarg :dribbler_direction
    :type boolean
    :initform nil)
   (kicker_speed
    :reader kicker_speed-val
    :initarg :kicker_speed
    :type fixnum
    :initform 0)
   (return_battery
    :reader return_battery-val
    :initarg :return_battery
    :type boolean
    :initform nil)
   (return_temp_1
    :reader return_temp_1-val
    :initarg :return_temp_1
    :type boolean
    :initform nil)
   (return_temp_2
    :reader return_temp_2-val
    :initarg :return_temp_2
    :type boolean
    :initform nil)
   (return_temp_3
    :reader return_temp_3-val
    :initarg :return_temp_3
    :type boolean
    :initform nil))
)
(defmethod serialize ((msg <RobotCommand>) ostream)
  "Serializes a message object of type '<RobotCommand>"
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'trans_speed))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'trans_direction))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'rot_speed))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
    (write-byte (ldb (byte 8 0) (if (slot-value msg 'rot_direction) 1 0)) ostream)
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'dribbler_speed))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
    (write-byte (ldb (byte 8 0) (if (slot-value msg 'dribbler_direction) 1 0)) ostream)
    (write-byte (ldb (byte 8 0) (slot-value msg 'kicker_speed)) ostream)
    (write-byte (ldb (byte 8 0) (if (slot-value msg 'return_battery) 1 0)) ostream)
    (write-byte (ldb (byte 8 0) (if (slot-value msg 'return_temp_1) 1 0)) ostream)
    (write-byte (ldb (byte 8 0) (if (slot-value msg 'return_temp_2) 1 0)) ostream)
    (write-byte (ldb (byte 8 0) (if (slot-value msg 'return_temp_3) 1 0)) ostream)
)
(defmethod deserialize ((msg <RobotCommand>) istream)
  "Deserializes a message object of type '<RobotCommand>"
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'trans_speed) (roslisp-utils:decode-single-float-bits bits)))
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'trans_direction) (roslisp-utils:decode-single-float-bits bits)))
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'rot_speed) (roslisp-utils:decode-single-float-bits bits)))
  (setf (slot-value msg 'rot_direction) (not (zerop (read-byte istream))))
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'dribbler_speed) (roslisp-utils:decode-single-float-bits bits)))
  (setf (slot-value msg 'dribbler_direction) (not (zerop (read-byte istream))))
  (setf (ldb (byte 8 0) (slot-value msg 'kicker_speed)) (read-byte istream))
  (setf (slot-value msg 'return_battery) (not (zerop (read-byte istream))))
  (setf (slot-value msg 'return_temp_1) (not (zerop (read-byte istream))))
  (setf (slot-value msg 'return_temp_2) (not (zerop (read-byte istream))))
  (setf (slot-value msg 'return_temp_3) (not (zerop (read-byte istream))))
  msg
)
(defmethod ros-datatype ((msg (eql '<RobotCommand>)))
  "Returns string type for a message object of type '<RobotCommand>"
  "ssl_msgs/RobotCommand")
(defmethod md5sum ((type (eql '<RobotCommand>)))
  "Returns md5sum for a message object of type '<RobotCommand>"
  "f28766d065dcde0dfeee5898a91f2085")
(defmethod message-definition ((type (eql '<RobotCommand>)))
  "Returns full string definition for message of type '<RobotCommand>"
  (format nil "float32 trans_speed	# always positive, indicates magnitude in m/s~%float32 trans_direction	# in radians~%float32 rot_speed	# always positive, indicates magnitude in radians~%bool rot_direction	# ccw:+, cw:-~%float32 dribbler_speed	# always positive, indicates magnitude in rpm~%bool dribbler_direction	# ccw:+, cw:-~%uint8 kicker_speed	# always positive, indicates magnitude between [0,100]	~%bool return_battery	# true if battery level info is requested. false otherwise~%bool return_temp_1	# true if temp_1 level info is requested. false otherwise~%bool return_temp_2	# true if temp_2 level info is requested. false otherwise~%bool return_temp_3	# true if temp_3 level info is requested. false otherwise~%~%~%~%"))
(defmethod serialization-length ((msg <RobotCommand>))
  (+ 0
     4
     4
     4
     1
     4
     1
     1
     1
     1
     1
     1
))
(defmethod ros-message-to-list ((msg <RobotCommand>))
  "Converts a ROS message object to a list"
  (list '<RobotCommand>
    (cons ':trans_speed (trans_speed-val msg))
    (cons ':trans_direction (trans_direction-val msg))
    (cons ':rot_speed (rot_speed-val msg))
    (cons ':rot_direction (rot_direction-val msg))
    (cons ':dribbler_speed (dribbler_speed-val msg))
    (cons ':dribbler_direction (dribbler_direction-val msg))
    (cons ':kicker_speed (kicker_speed-val msg))
    (cons ':return_battery (return_battery-val msg))
    (cons ':return_temp_1 (return_temp_1-val msg))
    (cons ':return_temp_2 (return_temp_2-val msg))
    (cons ':return_temp_3 (return_temp_3-val msg))
))
