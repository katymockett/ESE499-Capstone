// Generated by gencpp from file ros_i2cpwm_board_sub/StopServosResponse.msg
// DO NOT EDIT!


#ifndef ROS_I2CPWM_BOARD_SUB_MESSAGE_STOPSERVOSRESPONSE_H
#define ROS_I2CPWM_BOARD_SUB_MESSAGE_STOPSERVOSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_i2cpwm_board_sub
{
template <class ContainerAllocator>
struct StopServosResponse_
{
  typedef StopServosResponse_<ContainerAllocator> Type;

  StopServosResponse_()
    {
    }
  StopServosResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StopServosResponse_

typedef ::ros_i2cpwm_board_sub::StopServosResponse_<std::allocator<void> > StopServosResponse;

typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::StopServosResponse > StopServosResponsePtr;
typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::StopServosResponse const> StopServosResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_i2cpwm_board_sub

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'ros_i2cpwm_board_sub': ['/home/ubuntu/catkin_ws/src/ros_i2cpwmboard_sub/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_i2cpwm_board_sub/StopServosResponse";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StopServosResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::ros_i2cpwm_board_sub::StopServosResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROS_I2CPWM_BOARD_SUB_MESSAGE_STOPSERVOSRESPONSE_H
