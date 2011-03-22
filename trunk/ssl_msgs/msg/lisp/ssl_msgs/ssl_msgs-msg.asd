
(in-package :asdf)

(defsystem "ssl_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
 :roslib-msg
)
  :components ((:file "_package")
    (:file "BallState" :depends-on ("_package"))
    (:file "_package_BallState" :depends-on ("_package"))
    (:file "GameState" :depends-on ("_package"))
    (:file "_package_GameState" :depends-on ("_package"))
    (:file "GlobalRobotState" :depends-on ("_package"))
    (:file "_package_GlobalRobotState" :depends-on ("_package"))
    (:file "GlobalState" :depends-on ("_package"))
    (:file "_package_GlobalState" :depends-on ("_package"))
    (:file "LocalRobotState" :depends-on ("_package"))
    (:file "_package_LocalRobotState" :depends-on ("_package"))
    (:file "LocalState" :depends-on ("_package"))
    (:file "_package_LocalState" :depends-on ("_package"))
    (:file "MotorCommand" :depends-on ("_package"))
    (:file "_package_MotorCommand" :depends-on ("_package"))
    (:file "RobotCommand" :depends-on ("_package"))
    (:file "_package_RobotCommand" :depends-on ("_package"))
    (:file "TeamCommand" :depends-on ("_package"))
    (:file "_package_TeamCommand" :depends-on ("_package"))
    ))
