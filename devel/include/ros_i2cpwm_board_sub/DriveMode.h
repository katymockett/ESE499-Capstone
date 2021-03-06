// Generated by gencpp from file ros_i2cpwm_board_sub/DriveMode.msg
// DO NOT EDIT!


#ifndef ROS_I2CPWM_BOARD_SUB_MESSAGE_DRIVEMODE_H
#define ROS_I2CPWM_BOARD_SUB_MESSAGE_DRIVEMODE_H

#include <ros/service_traits.h>


#include <ros_i2cpwm_board_sub/DriveModeRequest.h>
#include <ros_i2cpwm_board_sub/DriveModeResponse.h>


namespace ros_i2cpwm_board_sub
{

struct DriveMode
{

typedef DriveModeRequest Request;
typedef DriveModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DriveMode
} // namespace ros_i2cpwm_board_sub


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_i2cpwm_board_sub::DriveMode > {
  static const char* value()
  {
    return "e4da47a0d835738660a86a1db5528f89";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::DriveMode&) { return value(); }
};

template<>
struct DataType< ::ros_i2cpwm_board_sub::DriveMode > {
  static const char* value()
  {
    return "ros_i2cpwm_board_sub/DriveMode";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::DriveMode&) { return value(); }
};


// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::DriveModeRequest> should match 
// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::DriveMode > 
template<>
struct MD5Sum< ::ros_i2cpwm_board_sub::DriveModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_i2cpwm_board_sub::DriveMode >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::DriveModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_i2cpwm_board_sub::DriveModeRequest> should match 
// service_traits::DataType< ::ros_i2cpwm_board_sub::DriveMode > 
template<>
struct DataType< ::ros_i2cpwm_board_sub::DriveModeRequest>
{
  static const char* value()
  {
    return DataType< ::ros_i2cpwm_board_sub::DriveMode >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::DriveModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::DriveModeResponse> should match 
// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::DriveMode > 
template<>
struct MD5Sum< ::ros_i2cpwm_board_sub::DriveModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_i2cpwm_board_sub::DriveMode >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::DriveModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_i2cpwm_board_sub::DriveModeResponse> should match 
// service_traits::DataType< ::ros_i2cpwm_board_sub::DriveMode > 
template<>
struct DataType< ::ros_i2cpwm_board_sub::DriveModeResponse>
{
  static const char* value()
  {
    return DataType< ::ros_i2cpwm_board_sub::DriveMode >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::DriveModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_I2CPWM_BOARD_SUB_MESSAGE_DRIVEMODE_H
