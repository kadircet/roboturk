; Auto-generated. Do not edit!


(in-package ssl_msgs-msg)


;//! \htmlinclude GlobalRobotState.msg.html

(defclass <GlobalRobotState> (ros-message)
  ((confidence
    :reader confidence-val
    :initarg :confidence
    :type float
    :initform 0.0)
   (id
    :reader id-val
    :initarg :id
    :type fixnum
    :initform 0)
   (team
    :reader team-val
    :initarg :team
    :type fixnum
    :initform 0)
   (state
    :reader state-val
    :initarg :state
    :type fixnum
    :initform 0)
   (pose
    :reader pose-val
    :initarg :pose
    :type geometry_msgs-msg:<Pose2D>
    :initform (make-instance 'geometry_msgs-msg:<Pose2D>))
   (pix_coord
    :reader pix_coord-val
    :initarg :pix_coord
    :type geometry_msgs-msg:<Pose2D>
    :initform (make-instance 'geometry_msgs-msg:<Pose2D>))
   (height
    :reader height-val
    :initarg :height
    :type float
    :initform 0.0))
)
(defmethod serialize ((msg <GlobalRobotState>) ostream)
  "Serializes a message object of type '<GlobalRobotState>"
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'confidence))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
    (write-byte (ldb (byte 8 0) (slot-value msg 'id)) ostream)
    (write-byte (ldb (byte 8 0) (slot-value msg 'team)) ostream)
    (write-byte (ldb (byte 8 0) (slot-value msg 'state)) ostream)
  (serialize (slot-value msg 'pose) ostream)
  (serialize (slot-value msg 'pix_coord) ostream)
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'height))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
)
(defmethod deserialize ((msg <GlobalRobotState>) istream)
  "Deserializes a message object of type '<GlobalRobotState>"
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  (setf (ldb (byte 8 0) (slot-value msg 'id)) (read-byte istream))
  (setf (ldb (byte 8 0) (slot-value msg 'team)) (read-byte istream))
  (setf (ldb (byte 8 0) (slot-value msg 'state)) (read-byte istream))
  (deserialize (slot-value msg 'pose) istream)
  (deserialize (slot-value msg 'pix_coord) istream)
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(defmethod ros-datatype ((msg (eql '<GlobalRobotState>)))
  "Returns string type for a message object of type '<GlobalRobotState>"
  "ssl_msgs/GlobalRobotState")
(defmethod md5sum ((type (eql '<GlobalRobotState>)))
  "Returns md5sum for a message object of type '<GlobalRobotState>"
  "030e1e0e060477ba33c8d00d7d1359dd")
(defmethod message-definition ((type (eql '<GlobalRobotState>)))
  "Returns full string definition for message of type '<GlobalRobotState>"
  (format nil "float32 confidence 		#confidence of the identification of the robot~%uint8 id 			#robot id~%uint8 team 			#robot's team 0->Blue 1->Yellow (this might be changed later on)~%uint8 state 			#0->out of game/no detection, 1->in game, 2->in game but no move~%geometry_msgs/Pose2D pose 	#robot's pose x,y,theta~%geometry_msgs/Pose2D pix_coord 	#robot's 2D position in the image plane~%float32 height 			#robot's actual height~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(defmethod serialization-length ((msg <GlobalRobotState>))
  (+ 0
     4
     1
     1
     1
     (serialization-length (slot-value msg 'pose))
     (serialization-length (slot-value msg 'pix_coord))
     4
))
(defmethod ros-message-to-list ((msg <GlobalRobotState>))
  "Converts a ROS message object to a list"
  (list '<GlobalRobotState>
    (cons ':confidence (confidence-val msg))
    (cons ':id (id-val msg))
    (cons ':team (team-val msg))
    (cons ':state (state-val msg))
    (cons ':pose (pose-val msg))
    (cons ':pix_coord (pix_coord-val msg))
    (cons ':height (height-val msg))
))
