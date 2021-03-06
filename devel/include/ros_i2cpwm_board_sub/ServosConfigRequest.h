// Generated by gencpp from file ros_i2cpwm_board_sub/ServosConfigRequest.msg
// DO NOT EDIT!


#ifndef ROS_I2CPWM_BOARD_SUB_MESSAGE_SERVOSCONFIGREQUEST_H
#define ROS_I2CPWM_BOARD_SUB_MESSAGE_SERVOSCONFIGREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ros_i2cpwm_board_sub/ServoConfig.h>

namespace ros_i2cpwm_board_sub
{
template <class ContainerAllocator>
struct ServosConfigRequest_
{
  typedef ServosConfigRequest_<ContainerAllocator> Type;

  ServosConfigRequest_()
    : servos()  {
    }
  ServosConfigRequest_(const ContainerAllocator& _alloc)
    : servos(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::ros_i2cpwm_board_sub::ServoConfig_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ros_i2cpwm_board_sub::ServoConfig_<ContainerAllocator> >::other >  _servos_type;
  _servos_type servos;





  typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ServosConfigRequest_

typedef ::ros_i2cpwm_board_sub::ServosConfigRequest_<std::allocator<void> > ServosConfigRequest;

typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::ServosConfigRequest > ServosConfigRequestPtr;
typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::ServosConfigRequest const> ServosConfigRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_i2cpwm_board_sub

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'ros_i2cpwm_board_sub': ['/home/ubuntu/catkin_ws/src/ros_i2cpwmboard_sub/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f9c43713b493f265aec1e926dd292b8";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f9c43713b493f26ULL;
  static const uint64_t static_value2 = 0x5aec1e926dd292b8ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_i2cpwm_board_sub/ServosConfigRequest";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
\n\
ServoConfig[] servos\n\
\n\
================================================================================\n\
MSG: ros_i2cpwm_board_sub/ServoConfig\n\
# the ServoConfig message is used to assign specific configuration\n\
# data to a servo. the data is needed to normalize servos to\n\
# common values to isolate variations from the rest of the user's\n\
# robot motion code. \n\
\n\
int16 servo\n\
int16 center\n\
int16 range\n\
int16 direction\n\
";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.servos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServosConfigRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_i2cpwm_board_sub::ServosConfigRequest_<ContainerAllocator>& v)
  {
    s << indent << "servos[]" << std::endl;
    for (size_t i = 0; i < v.servos.size(); ++i)
    {
      s << indent << "  servos[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ros_i2cpwm_board_sub::ServoConfig_<ContainerAllocator> >::stream(s, indent + "    ", v.servos[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_I2CPWM_BOARD_SUB_MESSAGE_SERVOSCONFIGREQUEST_H
