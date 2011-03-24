/* Auto-generated by genmsg_cpp for file /home/kadir/interconnection/workspace/robocup/system_design/robocup_ssl/ssl_msgs/msg/RobotPoseCommand.msg */
#ifndef SSL_MSGS_MESSAGE_ROBOTPOSECOMMAND_H
#define SSL_MSGS_MESSAGE_ROBOTPOSECOMMAND_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "geometry_msgs/Pose2D.h"

namespace ssl_msgs
{
template <class ContainerAllocator>
struct RobotPoseCommand_ : public ros::Message
{
  typedef RobotPoseCommand_<ContainerAllocator> Type;

  RobotPoseCommand_()
  : target_pose()
  {
  }

  RobotPoseCommand_(const ContainerAllocator& _alloc)
  : target_pose(_alloc)
  {
  }

  typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _target_pose_type;
   ::geometry_msgs::Pose2D_<ContainerAllocator>  target_pose;


private:
  static const char* __s_getDataType_() { return "ssl_msgs/RobotPoseCommand"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "80b130a384062a7ab02c42399d5fceca"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "geometry_msgs/Pose2D target_pose 	#robot's target pose x,y,theta\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, target_pose);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, target_pose);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(target_pose);
    return size;
  }

  typedef boost::shared_ptr< ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ssl_msgs::RobotPoseCommand_<ContainerAllocator>  const> ConstPtr;
}; // struct RobotPoseCommand
typedef  ::ssl_msgs::RobotPoseCommand_<std::allocator<void> > RobotPoseCommand;

typedef boost::shared_ptr< ::ssl_msgs::RobotPoseCommand> RobotPoseCommandPtr;
typedef boost::shared_ptr< ::ssl_msgs::RobotPoseCommand const> RobotPoseCommandConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ssl_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> > {
  static const char* value() 
  {
    return "80b130a384062a7ab02c42399d5fceca";
  }

  static const char* value(const  ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x80b130a384062a7aULL;
  static const uint64_t static_value2 = 0xb02c42399d5fcecaULL;
};

template<class ContainerAllocator>
struct DataType< ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ssl_msgs/RobotPoseCommand";
  }

  static const char* value(const  ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> > {
  static const char* value() 
  {
    return "geometry_msgs/Pose2D target_pose 	#robot's target pose x,y,theta\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
";
  }

  static const char* value(const  ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.target_pose);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct RobotPoseCommand_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ssl_msgs::RobotPoseCommand_<ContainerAllocator> & v) 
  {
    s << indent << "target_pose: ";
s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.target_pose);
  }
};


} // namespace message_operations
} // namespace ros

#endif // SSL_MSGS_MESSAGE_ROBOTPOSECOMMAND_H
