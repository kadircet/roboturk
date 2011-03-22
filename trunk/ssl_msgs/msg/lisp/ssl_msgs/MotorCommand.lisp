; Auto-generated. Do not edit!


(in-package ssl_msgs-msg)


;//! \htmlinclude MotorCommand.msg.html

(defclass <MotorCommand> (ros-message)
  ((temp1
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
(defmethod serialize ((msg <MotorCommand>) ostream)
  "Serializes a message object of type '<MotorCommand>"
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
(defmethod deserialize ((msg <MotorCommand>) istream)
  "Deserializes a message object of type '<MotorCommand>"
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
(defmethod ros-datatype ((msg (eql '<MotorCommand>)))
  "Returns string type for a message object of type '<MotorCommand>"
  "ssl_msgs/MotorCommand")
(defmethod md5sum ((type (eql '<MotorCommand>)))
  "Returns md5sum for a message object of type '<MotorCommand>"
  "fa5a84b1c8bb12b4999d77912044d8dd")
(defmethod message-definition ((type (eql '<MotorCommand>)))
  "Returns full string definition for message of type '<MotorCommand>"
  (format nil "float32 temp1 		#dummy~%float32 temp2 		#dummy~%float32 temp3 		#dummy~%~%~%"))
(defmethod serialization-length ((msg <MotorCommand>))
  (+ 0
     4
     4
     4
))
(defmethod ros-message-to-list ((msg <MotorCommand>))
  "Converts a ROS message object to a list"
  (list '<MotorCommand>
    (cons ':temp1 (temp1-val msg))
    (cons ':temp2 (temp2-val msg))
    (cons ':temp3 (temp3-val msg))
))
