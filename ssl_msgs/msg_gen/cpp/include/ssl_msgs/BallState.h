/* Auto-generated by genmsg_cpp for file /home/kadir/interconnection/workspace/robocup/system_design/robocup_ssl/ssl_msgs/msg/BallState.msg */
#ifndef SSL_MSGS_MESSAGE_BALLSTATE_H
#define SSL_MSGS_MESSAGE_BALLSTATE_H
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
struct BallState_ : public ros::Message
{
  typedef BallState_<ContainerAllocator> Type;

  BallState_()
  : confidence(0.0)
  , area(0.0)
  , position()
  , pix_coord()
  {
  }

  BallState_(const ContainerAllocator& _alloc)
  : confidence(0.0)
  , area(0.0)
  , position(_alloc)
  , pix_coord(_alloc)
  {
  }

  typedef float _confidence_type;
  float confidence;

  typedef float _area_type;
  float area;

  typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _position_type;
   ::geometry_msgs::Point32_<ContainerAllocator>  position;

  typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _pix_coord_type;
   ::geometry_msgs::Point32_<ContainerAllocator>  pix_coord;


private:
  static const char* __s_getDataType_() { return "ssl_msgs/BallState"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "8870bc00ea6f636a996e382a802ccc76"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "float32 confidence\n\
float32 area\n\
geometry_msgs/Point32 position\n\
geometry_msgs/Point32 pix_coord\n\
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
    ros::serialization::serialize(stream, confidence);
    ros::serialization::serialize(stream, area);
    ros::serialization::serialize(stream, position);
    ros::serialization::serialize(stream, pix_coord);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, confidence);
    ros::serialization::deserialize(stream, area);
    ros::serialization::deserialize(stream, position);
    ros::serialization::deserialize(stream, pix_coord);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(confidence);
    size += ros::serialization::serializationLength(area);
    size += ros::serialization::serializationLength(position);
    size += ros::serialization::serializationLength(pix_coord);
    return size;
  }

  typedef boost::shared_ptr< ::ssl_msgs::BallState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ssl_msgs::BallState_<ContainerAllocator>  const> ConstPtr;
}; // struct BallState
typedef  ::ssl_msgs::BallState_<std::allocator<void> > BallState;

typedef boost::shared_ptr< ::ssl_msgs::BallState> BallStatePtr;
typedef boost::shared_ptr< ::ssl_msgs::BallState const> BallStateConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ssl_msgs::BallState_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ssl_msgs::BallState_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ssl_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::ssl_msgs::BallState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "8870bc00ea6f636a996e382a802ccc76";
  }

  static const char* value(const  ::ssl_msgs::BallState_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x8870bc00ea6f636aULL;
  static const uint64_t static_value2 = 0x996e382a802ccc76ULL;
};

template<class ContainerAllocator>
struct DataType< ::ssl_msgs::BallState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ssl_msgs/BallState";
  }

  static const char* value(const  ::ssl_msgs::BallState_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ssl_msgs::BallState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float32 confidence\n\
float32 area\n\
geometry_msgs/Point32 position\n\
geometry_msgs/Point32 pix_coord\n\
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

  static const char* value(const  ::ssl_msgs::BallState_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::ssl_msgs::BallState_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ssl_msgs::BallState_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.confidence);
    stream.next(m.area);
    stream.next(m.position);
    stream.next(m.pix_coord);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct BallState_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ssl_msgs::BallState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ssl_msgs::BallState_<ContainerAllocator> & v) 
  {
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
    s << indent << "area: ";
    Printer<float>::stream(s, indent + "  ", v.area);
    s << indent << "position: ";
s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "pix_coord: ";
s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.pix_coord);
  }
};


} // namespace message_operations
} // namespace ros

#endif // SSL_MSGS_MESSAGE_BALLSTATE_H
