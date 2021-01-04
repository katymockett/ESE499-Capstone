// Generated by gencpp from file ros_i2cpwm_board_sub/DriveModeRequest.msg
// DO NOT EDIT!


#ifndef ROS_I2CPWM_BOARD_SUB_MESSAGE_DRIVEMODEREQUEST_H
#define ROS_I2CPWM_BOARD_SUB_MESSAGE_DRIVEMODEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ros_i2cpwm_board_sub/Position.h>

namespace ros_i2cpwm_board_sub
{
template <class ContainerAllocator>
struct DriveModeRequest_
{
  typedef DriveModeRequest_<ContainerAllocator> Type;

  DriveModeRequest_()
    : mode()
    , rpm(0.0)
    , radius(0.0)
    , track(0.0)
    , scale(0.0)
    , servos()  {
    }
  DriveModeRequest_(const ContainerAllocator& _alloc)
    : mode(_alloc)
    , rpm(0.0)
    , radius(0.0)
    , track(0.0)
    , scale(0.0)
    , servos(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _mode_type;
  _mode_type mode;

   typedef float _rpm_type;
  _rpm_type rpm;

   typedef float _radius_type;
  _radius_type radius;

   typedef float _track_type;
  _track_type track;

   typedef float _scale_type;
  _scale_type scale;

   typedef std::vector< ::ros_i2cpwm_board_sub::Position_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ros_i2cpwm_board_sub::Position_<ContainerAllocator> >::other >  _servos_type;
  _servos_type servos;





  typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DriveModeRequest_

typedef ::ros_i2cpwm_board_sub::DriveModeRequest_<std::allocator<void> > DriveModeRequest;

typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::DriveModeRequest > DriveModeRequestPtr;
typedef boost::shared_ptr< ::ros_i2cpwm_board_sub::DriveModeRequest const> DriveModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8696ff83760d5f4079edcd8ccb545ea0";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8696ff83760d5f40ULL;
  static const uint64_t static_value2 = 0x79edcd8ccb545ea0ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_i2cpwm_board_sub/DriveModeRequest";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
string mode\n\
float32 rpm\n\
float32 radius\n\
float32 track\n\
float32 scale\n\
Position[] servos\n\
\n\
================================================================================\n\
MSG: ros_i2cpwm_board_sub/Position\n\
# the position message is used when configuring drive mode to\n\
# assign a  servo to a specific wheel positon in the drive system\n\
# postions are specific toe the desired drive mode\n\
# ackerman has only one position\n\
# 1 = drive\n\
# differential has two positons\n\
# 1 = left, 2 = right\n\
# mecanum has four positions\n\
# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right\n\
# multiple servos/motors may be used for each positon\n\
\n\
int16 servo\n\
int16 position\n\
";
  }

  static const char* value(const ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
      stream.next(m.rpm);
      stream.next(m.radius);
      stream.next(m.track);
      stream.next(m.scale);
      stream.next(m.servos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DriveModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_i2cpwm_board_sub::DriveModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mode);
    s << indent << "rpm: ";
    Printer<float>::stream(s, indent + "  ", v.rpm);
    s << indent << "radius: ";
    Printer<float>::stream(s, indent + "  ", v.radius);
    s << indent << "track: ";
    Printer<float>::stream(s, indent + "  ", v.track);
    s << indent << "scale: ";
    Printer<float>::stream(s, indent + "  ", v.scale);
    s << indent << "servos[]" << std::endl;
    for (size_t i = 0; i < v.servos.size(); ++i)
    {
      s << indent << "  servos[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ros_i2cpwm_board_sub::Position_<ContainerAllocator> >::stream(s, indent + "    ", v.servos[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_I2CPWM_BOARD_SUB_MESSAGE_DRIVEMODEREQUEST_H