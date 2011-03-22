; Auto-generated. Do not edit!


(in-package ssl_msgs-msg)


;//! \htmlinclude LocalRobotState.msg.html

(defclass <LocalRobotState> (ros-message)
  ((ball_possesion
    :reader ball_possesion-val
    :initarg :ball_possesion
    :type boolean
    :initform nil)
   (battery
    :reader battery-val
    :initarg :battery
    :type fixnum
    :initform 0)
   (temp1
    :reader temp1-val
    :initarg :temp1
    :type float
    :initform 0.0)
   (temp2
    :reader temp2-val
    :initarg :temp2
    :type float
    :initform 0.0)
   (temp3
    :reader temp3-val
    :initarg :temp3
    :type float
    :initform 0.0))
)
(defmethod serialize ((msg <LocalRobotState>) ostream)
  "Serializes a message object of type '<LocalRobotState>"
    (write-byte (ldb (byte 8 0) (if (slot-value msg 'ball_possesion) 1 0)) ostream)
    (write-byte (ldb (byte 8 0) (slot-value msg 'battery)) ostream)
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'temp1))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'temp2))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'temp3))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
)
(defmethod deserialize ((msg <LocalRobotState>) istream)
  "Deserializes a message object of type '<LocalRobotState>"
  (setf (slot-value msg 'ball_possesion) (not (zerop (read-byte istream))))
  (setf (ldb (byte 8 0) (slot-value msg 'battery)) (read-byte istream))
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'temp1) (roslisp-utils:decode-single-float-bits bits)))
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'temp2) (roslisp-utils:decode-single-float-bits bits)))
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'temp3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(defmethod ros-datatype ((msg (eql '<LocalRobotState>)))
  "Returns string type for a message object of type '<LocalRobotState>"
  "ssl_msgs/LocalRobotState")
(defmethod md5sum ((type (eql '<LocalRobotState>)))
  "Returns md5sum for a message object of type '<LocalRobotState>"
  "91ec796323133e006b0a572e6a364407")
(defmethod message-definition ((type (eql '<LocalRobotState>)))
  "Returns full string definition for message of type '<LocalRobotState>"
  (format nil "bool ball_possesion 	#true if it possess, false otherwise~%uint8 battery		#battery level of the robot changes between [0-100]~%float32 temp1 		#dummy~%float32 temp2 		#dummy~%float32 temp3 		#dummy~%~%~%"))
(defmethod serialization-length ((msg <LocalRobotState>))
  (+ 0
     1
     1
     4
     4
     4
))
(defmethod ros-message-to-list ((msg <LocalRobotState>))
  "Converts a ROS message object to a list"
  (list '<LocalRobotState>
    (cons ':ball_possesion (ball_possesion-val msg))
    (cons ':battery (battery-val msg))
    (cons ':temp1 (temp1-val msg))
    (cons ':temp2 (temp2-val msg))
    (cons ':temp3 (temp3-val msg))
))
