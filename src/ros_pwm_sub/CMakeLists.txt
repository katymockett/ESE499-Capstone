cmake_minimum_required(VERSION 2.8.3)
project(ros_pwm_sub)

find_package(catkin REQUIRED COMPONENTS roscpp std_msgs message_generation)


add_message_files(DIRECTORY msg FILES Servo.msg ServoArray.msg)
# add_service_files()

generate_messages(DEPENDENCIES std_msgs)


catkin_package(CATKIN_DEPENDS roscpp std_msgs message_runtime)


include_directories(include  ${catkin_INCLUDE_DIRS})
link_directories(${catkin_LIBRARY_DIRS})


# add_executable(i2cpwm_board src/i2cpwm_controller.cpp)
# target_link_libraries(i2cpwm_board ${catkin_LIBRARIES})
# add_dependencies(ros_pwm_sub ros_pwm_sub_generate_messages_cpp)

