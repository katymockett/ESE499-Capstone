# Install script for directory: /home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/i2cpwm_board/msg" TYPE FILE FILES
    "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/msg/Servo.msg"
    "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/msg/ServoArray.msg"
    "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/msg/ServoConfig.msg"
    "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/msg/ServoConfigArray.msg"
    "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/msg/Position.msg"
    "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/msg/PositionArray.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/i2cpwm_board/srv" TYPE FILE FILES
    "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/srv/IntValue.srv"
    "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/srv/ServosConfig.srv"
    "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/srv/DriveMode.srv"
    "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/srv/StopServos.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/i2cpwm_board/cmake" TYPE FILE FILES "/home/ubuntu/catkin_ws/build/ros-i2cpwmboard_sub/catkin_generated/installspace/i2cpwm_board-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/devel/include/i2cpwm_board")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/devel/share/roseus/ros/i2cpwm_board")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/devel/share/common-lisp/ros/i2cpwm_board")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/devel/share/gennodejs/ros/i2cpwm_board")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/ubuntu/catkin_ws/devel/lib/python2.7/dist-packages/i2cpwm_board")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/devel/lib/python2.7/dist-packages/i2cpwm_board")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/catkin_ws/build/ros-i2cpwmboard_sub/catkin_generated/installspace/i2cpwm_board.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/i2cpwm_board/cmake" TYPE FILE FILES "/home/ubuntu/catkin_ws/build/ros-i2cpwmboard_sub/catkin_generated/installspace/i2cpwm_board-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/i2cpwm_board/cmake" TYPE FILE FILES
    "/home/ubuntu/catkin_ws/build/ros-i2cpwmboard_sub/catkin_generated/installspace/i2cpwm_boardConfig.cmake"
    "/home/ubuntu/catkin_ws/build/ros-i2cpwmboard_sub/catkin_generated/installspace/i2cpwm_boardConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/i2cpwm_board" TYPE FILE FILES "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/i2cpwm_board/i2cpwm_board" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/i2cpwm_board/i2cpwm_board")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/i2cpwm_board/i2cpwm_board"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/i2cpwm_board" TYPE EXECUTABLE FILES "/home/ubuntu/catkin_ws/devel/lib/i2cpwm_board/i2cpwm_board")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/i2cpwm_board/i2cpwm_board" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/i2cpwm_board/i2cpwm_board")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/i2cpwm_board/i2cpwm_board"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/i2cpwm_board/i2cpwm_board")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/i2cpwm_board" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/include/i2cpwm_board/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/i2cpwm_board/launch" TYPE DIRECTORY FILES "/home/ubuntu/catkin_ws/src/ros-i2cpwmboard_sub/launch/")
endif()

