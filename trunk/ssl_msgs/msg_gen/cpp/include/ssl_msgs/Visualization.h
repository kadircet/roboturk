/* Auto-generated by genmsg_cpp for file /home/kadir/interconnection/workspace/robocup/system_design/robocup_ssl/ssl_msgs/msg/Visualization.msg */
#ifndef SSL_MSGS_MESSAGE_VISUALIZATION_H
#define SSL_MSGS_MESSAGE_VISUALIZATION_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Point32.h"

namespace ssl_msgs
{
template <class ContainerAllocator>
struct Visualization_ : public ros::Message
{
  typedef Visualization_<ContainerAllocator> Type;

  Visualization_()
  : robot_position()
  , force_vector()
  {
  }

  Visualization_(const ContainerAllocator& _alloc)
  : robot_position(_alloc)
  , force_vector(_alloc)
  {
  }

  typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _robot_position_type;
   ::geometry_msgs::Point32_<ContainerAllocator>  robot_position;

  typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _force_vector_type;
   ::geometry_msgs::Point32_<ContainerAllocator>  force_vector;


private:
  static const char* __s_getDataType_() { return "ssl_msgs/Visualization"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "1fffa6ca883aaeeeccdc951a2d04f5f6"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "geometry_msgs/Point32 robot_position\n\
geometry_msgs/Point32 force_vector\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point32\n\
# This contains the position of a point in free space(with 32 bits of precision).\n\
# It is recommeded to use Point wherever possible instead of Point32.  \n\
# \n\
# This recommendation is to promote interoperability.  \n\
#\n\
# This message is designed to take up less space when sending\n\
# lots of points at once, as in the case of a PointCloud.  \n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, robot_position);
    ros::serialization::serialize(stream, force_vector);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, robot_position);
    ros::serialization::deserialize(stream, force_vector);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(robot_position);
    size += ros::serialization::serializationLength(force_vector);
    return size;
  }

  typedef boost::shared_ptr< ::ssl_msgs::Visualization_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ssl_msgs::Visualization_<ContainerAllocator>  const> ConstPtr;
}; // struct Visualization
typedef  ::ssl_msgs::Visualization_<std::allocator<void> > Visualization;

typedef boost::shared_ptr< ::ssl_msgs::Visualization> VisualizationPtr;
typedef boost::shared_ptr< ::ssl_msgs::Visualization const> VisualizationConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ssl_msgs::Visualization_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ssl_msgs::Visualization_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ssl_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::ssl_msgs::Visualization_<ContainerAllocator> > {
  static const char* value() 
  {
    return "1fffa6ca883aaeeeccdc951a2d04f5f6";
  }

  static const char* value(const  ::ssl_msgs::Visualization_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x1fffa6ca883aaeeeULL;
  static const uint64_t static_value2 = 0xccdc951a2d04f5f6ULL;
};

template<class ContainerAllocator>
struct DataType< ::ssl_msgs::Visualization_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ssl_msgs/Visualization";
  }

  static const char* value(const  ::ssl_msgs::Visualization_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ssl_msgs::Visualization_<ContainerAllocator> > {
  static const char* value() 
  {
    return "geometry_msgs/Point32 robot_position\n\
geometry_msgs/Point32 force_vector\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point32\n\
# This contains the position of a point in free space(with 32 bits of precision).\n\
# It is recommeded to use Point wherever possible instead of Point32.  \n\
# \n\
# This recommendation is to promote interoperability.  \n\
#\n\
# This message is designed to take up less space when sending\n\
# lots of points at once, as in the case of a PointCloud.  \n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const  ::ssl_msgs::Visualization_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::ssl_msgs::Visualization_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ssl_msgs::Visualization_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.robot_position);
    stream.next(m.force_vector);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Visualization_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ssl_msgs::Visualization_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ssl_msgs::Visualization_<ContainerAllocator> & v) 
  {
    s << indent << "robot_position: ";
s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.robot_position);
    s << indent << "force_vector: ";
s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.force_vector);
  }
};


} // namespace message_operations
} // namespace ros

#endif // SSL_MSGS_MESSAGE_VISUALIZATION_H
