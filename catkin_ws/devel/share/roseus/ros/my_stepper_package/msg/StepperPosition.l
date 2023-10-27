;; Auto-generated. Do not edit!


(when (boundp 'my_stepper_package::StepperPosition)
  (if (not (find-package "MY_STEPPER_PACKAGE"))
    (make-package "MY_STEPPER_PACKAGE"))
  (shadow 'StepperPosition (find-package "MY_STEPPER_PACKAGE")))
(unless (find-package "MY_STEPPER_PACKAGE::STEPPERPOSITION")
  (make-package "MY_STEPPER_PACKAGE::STEPPERPOSITION"))

(in-package "ROS")
;;//! \htmlinclude StepperPosition.msg.html


(defclass my_stepper_package::StepperPosition
  :super ros::object
  :slots (_target_position ))

(defmethod my_stepper_package::StepperPosition
  (:init
   (&key
    ((:target_position __target_position) 0)
    )
   (send-super :init)
   (setq _target_position (round __target_position))
   self)
  (:target_position
   (&optional __target_position)
   (if __target_position (setq _target_position __target_position)) _target_position)
  (:serialization-length
   ()
   (+
    ;; int32 _target_position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _target_position
       (write-long _target_position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _target_position
     (setq _target_position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_stepper_package::StepperPosition :md5sum-) "d6a1d1aa0ffbed71ad4b001fb7a4d9c9")
(setf (get my_stepper_package::StepperPosition :datatype-) "my_stepper_package/StepperPosition")
(setf (get my_stepper_package::StepperPosition :definition-)
      "int32 target_position


")



(provide :my_stepper_package/StepperPosition "d6a1d1aa0ffbed71ad4b001fb7a4d9c9")


