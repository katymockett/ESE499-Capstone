
(cl:in-package :asdf)

(defsystem "ros_imu_pub-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "imu_data" :depends-on ("_package_imu_data"))
    (:file "_package_imu_data" :depends-on ("_package"))
  ))