; Auto-generated. Do not edit!


(cl:in-package my_stepper_package-msg)


;//! \htmlinclude StepperPosition.msg.html

(cl:defclass <StepperPosition> (roslisp-msg-protocol:ros-message)
  ((target_position
    :reader target_position
    :initarg :target_position
    :type cl:integer
    :initform 0))
)

(cl:defclass StepperPosition (<StepperPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepperPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepperPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_stepper_package-msg:<StepperPosition> is deprecated: use my_stepper_package-msg:StepperPosition instead.")))

(cl:ensure-generic-function 'target_position-val :lambda-list '(m))
(cl:defmethod target_position-val ((m <StepperPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_stepper_package-msg:target_position-val is deprecated.  Use my_stepper_package-msg:target_position instead.")
  (target_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepperPosition>) ostream)
  "Serializes a message object of type '<StepperPosition>"
  (cl:let* ((signed (cl:slot-value msg 'target_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepperPosition>) istream)
  "Deserializes a message object of type '<StepperPosition>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepperPosition>)))
  "Returns string type for a message object of type '<StepperPosition>"
  "my_stepper_package/StepperPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepperPosition)))
  "Returns string type for a message object of type 'StepperPosition"
  "my_stepper_package/StepperPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepperPosition>)))
  "Returns md5sum for a message object of type '<StepperPosition>"
  "d6a1d1aa0ffbed71ad4b001fb7a4d9c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepperPosition)))
  "Returns md5sum for a message object of type 'StepperPosition"
  "d6a1d1aa0ffbed71ad4b001fb7a4d9c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepperPosition>)))
  "Returns full string definition for message of type '<StepperPosition>"
  (cl:format cl:nil "int32 target_position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepperPosition)))
  "Returns full string definition for message of type 'StepperPosition"
  (cl:format cl:nil "int32 target_position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepperPosition>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepperPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'StepperPosition
    (cl:cons ':target_position (target_position msg))
))
