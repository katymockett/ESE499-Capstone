// Generated by gencpp from file ros_i2cpwm_board_sub/IntValueResponse.msg
// DO NOT EDIT!


#ifndef ROS_I2CPWM_BOARD_SUB_MESSAGE_INTVALUERESPONSE_H
#define ROS_I2CPWM_BOARD_SUB_MESSAGE_INTVALUERESPONSE_H


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
struct IntValueResponse_
{
  typedef IntValueResponse_<ContainerAllocator> Type;

  IntValueResponse_()
    : error(0)  {
    }
  IntValueResponse_(const ContainerAllocator& _alloc)
    : error(0)  {
  (void)_alloc;
    }



   typedef int16_t _error_type;
  _error_type error;





  typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> const> ConstPtr;

}; // struct IntValueResponse_

typedef ::ros_i2cpwm_board_sub::IntValueResponse_<std::allocator<void> > IntValueResponse;

typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::IntValueResponse > IntValueResponsePtr;
typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::IntValueResponse const> IntValueResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "62df06fbed46eb687891e363579eb0f0";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x62df06fbed46eb68ULL;
  static const uint64_t static_value2 = 0x7891e363579eb0f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_i2cpwm_board_sub/IntValueResponse";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 error\n\
\n\
\n\
";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.error);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IntValueResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_i2cpwm_board_sub::IntValueResponse_<ContainerAllocator>& v)
  {
    s << indent << "error: ";
    Printer<int16_t>::stream(s, indent + "  ", v.error);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_I2CPWM_BOARD_SUB_MESSAGE_INTVALUERESPONSE_H
