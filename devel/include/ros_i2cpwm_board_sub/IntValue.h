// Generated by gencpp from file ros_i2cpwm_board_sub/IntValue.msg
// DO NOT EDIT!


#ifndef ROS_I2CPWM_BOARD_SUB_MESSAGE_INTVALUE_H
#define ROS_I2CPWM_BOARD_SUB_MESSAGE_INTVALUE_H

#include <ros/service_traits.h>


#include <ros_i2cpwm_board_sub/IntValueRequest.h>
#include <ros_i2cpwm_board_sub/IntValueResponse.h>


namespace ros_i2cpwm_board_sub
{

struct IntValue
{

typedef IntValueRequest Request;
typedef IntValueResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct IntValue
} // namespace ros_i2cpwm_board_sub


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_i2cpwm_board_sub::IntValue > {
  static const char* value()
  {
    return "0f0a503a6dfd41f41ab6b6db4044064a";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::IntValue&) { return value(); }
};

template<>
struct DataType< ::ros_i2cpwm_board_sub::IntValue > {
  static const char* value()
  {
    return "ros_i2cpwm_board_sub/IntValue";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::IntValue&) { return value(); }
};


// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::IntValueRequest> should match 
// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::IntValue > 
template<>
struct MD5Sum< ::ros_i2cpwm_board_sub::IntValueRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_i2cpwm_board_sub::IntValue >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::IntValueRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_i2cpwm_board_sub::IntValueRequest> should match 
// service_traits::DataType< ::ros_i2cpwm_board_sub::IntValue > 
template<>
struct DataType< ::ros_i2cpwm_board_sub::IntValueRequest>
{
  static const char* value()
  {
    return DataType< ::ros_i2cpwm_board_sub::IntValue >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::IntValueRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::IntValueResponse> should match 
// service_traits::MD5Sum< ::ros_i2cpwm_board_sub::IntValue > 
template<>
struct MD5Sum< ::ros_i2cpwm_board_sub::IntValueResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_i2cpwm_board_sub::IntValue >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::IntValueResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_i2cpwm_board_sub::IntValueResponse> should match 
// service_traits::DataType< ::ros_i2cpwm_board_sub::IntValue > 
template<>
struct DataType< ::ros_i2cpwm_board_sub::IntValueResponse>
{
  static const char* value()
  {
    return DataType< ::ros_i2cpwm_board_sub::IntValue >::value();
  }
  static const char* value(const ::ros_i2cpwm_board_sub::IntValueResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_I2CPWM_BOARD_SUB_MESSAGE_INTVALUE_H
