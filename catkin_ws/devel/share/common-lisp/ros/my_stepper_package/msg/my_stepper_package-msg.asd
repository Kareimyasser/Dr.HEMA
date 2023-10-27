
(cl:in-package :asdf)

(defsystem "my_stepper_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StepperPosition" :depends-on ("_package_StepperPosition"))
    (:file "_package_StepperPosition" :depends-on ("_package"))
  ))