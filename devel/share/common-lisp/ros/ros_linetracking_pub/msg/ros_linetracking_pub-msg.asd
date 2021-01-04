
(cl:in-package :asdf)

(defsystem "ros_linetracking_pub-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "linetracking_data" :depends-on ("_package_linetracking_data"))
    (:file "_package_linetracking_data" :depends-on ("_package"))
  ))