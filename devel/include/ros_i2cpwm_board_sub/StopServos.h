// Generated by gencpp from file ros_i2cpwm_board_sub/StopServos.msg
// DO NOT EDIT!


#ifndef ROS_I2CPWM_BOARD_SUB_MESSAGE_STOPSERVOS_H
#define ROS_I2CPWM_BOARD_SUB_MESSAGE_STOPSERVOS_H

#include <ros/service_traits.h>


#include <ros_i2cpwm_board_sub/StopServosRequest.h>
#include <ros_i2cpwm_board_sub/StopServosResponse.h>


namespace ros_i2cpwm_board_sub
{

struct StopServos
{

typedef StopServosRequest Request;
typedef StopServosResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StopServos
} // namespace ros_i2cpwm_board_sub


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_i2cpwm_board_sub::StopServos > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::StopServos&) { return value(); }
};

template<>
struct DataType< ::ros_i2cpwm_board_sub::StopServos > {
  static const char* value()
  {
    return "ros_i2cpwm_board_sub/StopServos";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::StopServos&) { return value(); }
};


// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::StopServosRequest> should match 
// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::StopServos > 
template<>
struct MD5Sum< ::ros_i2cpwm_board_sub::StopServosRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_i2cpwm_board_sub::StopServos >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::StopServosRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_i2cpwm_board_sub::StopServosRequest> should match 
// service_traits::DataType< ::ros_i2cpwm_board_sub::StopServos > 
template<>
struct DataType< ::ros_i2cpwm_board_sub::StopServosRequest>
{
  static const char* value()
  {
    return DataType< ::ros_i2cpwm_board_sub::StopServos >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::StopServosRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::StopServosResponse> should match 
// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::StopServos > 
template<>
struct MD5Sum< ::ros_i2cpwm_board_sub::StopServosResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_i2cpwm_board_sub::StopServos >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::StopServosResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_i2cpwm_board_sub::StopServosResponse> should match 
// service_traits::DataType< ::ros_i2cpwm_board_sub::StopServos > 
template<>
struct DataType< ::ros_i2cpwm_board_sub::StopServosResponse>
{
  static const char* value()
  {
    return DataType< ::ros_i2cpwm_board_sub::StopServos >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::StopServosResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_I2CPWM_BOARD_SUB_MESSAGE_STOPSERVOS_H
