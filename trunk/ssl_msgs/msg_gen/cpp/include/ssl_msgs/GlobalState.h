/* Auto-generated by genmsg_cpp for file /home/kadir/interconnection/workspace/robocup/system_design/robocup_ssl/ssl_msgs/msg/GlobalState.msg */
#ifndef SSL_MSGS_MESSAGE_GLOBALSTATE_H
#define SSL_MSGS_MESSAGE_GLOBALSTATE_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "std_msgs/Header.h"
#include "ssl_msgs/GlobalRobotState.h"
#include "ssl_msgs/GlobalRobotState.h"
#include "ssl_msgs/BallState.h"

namespace ssl_msgs
{
template <class ContainerAllocator>
struct GlobalState_ : public ros::Message
{
  typedef GlobalState_<ContainerAllocator> Type;

  GlobalState_()
  : header()
  , robots_blue()
  , robots_yellow()
  , balls()
  {
  }

  GlobalState_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , robots_blue(_alloc)
  , robots_yellow(_alloc)
  , balls(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::vector< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> >::other >  _robots_blue_type;
  std::vector< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> >::other >  robots_blue;

  typedef std::vector< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> >::other >  _robots_yellow_type;
  std::vector< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> >::other >  robots_yellow;

  typedef std::vector< ::ssl_msgs::BallState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::BallState_<ContainerAllocator> >::other >  _balls_type;
  std::vector< ::ssl_msgs::BallState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::BallState_<ContainerAllocator> >::other >  balls;


  ROS_DEPRECATED uint32_t get_robots_blue_size() const { return (uint32_t)robots_blue.size(); }
  ROS_DEPRECATED void set_robots_blue_size(uint32_t size) { robots_blue.resize((size_t)size); }
  ROS_DEPRECATED void get_robots_blue_vec(std::vector< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> >::other > & vec) const { vec = this->robots_blue; }
  ROS_DEPRECATED void set_robots_blue_vec(const std::vector< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> >::other > & vec) { this->robots_blue = vec; }
  ROS_DEPRECATED uint32_t get_robots_yellow_size() const { return (uint32_t)robots_yellow.size(); }
  ROS_DEPRECATED void set_robots_yellow_size(uint32_t size) { robots_yellow.resize((size_t)size); }
  ROS_DEPRECATED void get_robots_yellow_vec(std::vector< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> >::other > & vec) const { vec = this->robots_yellow; }
  ROS_DEPRECATED void set_robots_yellow_vec(const std::vector< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> >::other > & vec) { this->robots_yellow = vec; }
  ROS_DEPRECATED uint32_t get_balls_size() const { return (uint32_t)balls.size(); }
  ROS_DEPRECATED void set_balls_size(uint32_t size) { balls.resize((size_t)size); }
  ROS_DEPRECATED void get_balls_vec(std::vector< ::ssl_msgs::BallState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::BallState_<ContainerAllocator> >::other > & vec) const { vec = this->balls; }
  ROS_DEPRECATED void set_balls_vec(const std::vector< ::ssl_msgs::BallState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::BallState_<ContainerAllocator> >::other > & vec) { this->balls = vec; }
private:
  static const char* __s_getDataType_() { return "ssl_msgs/GlobalState"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "ff5ed60cc23474d8e2b4dd790d960277"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "Header header\n\
ssl_msgs/GlobalRobotState[] robots_blue\n\
ssl_msgs/GlobalRobotState[] robots_yellow\n\
ssl_msgs/BallState[] balls\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: ssl_msgs/GlobalRobotState\n\
float32 confidence 		#confidence of the identification of the robot\n\
uint8 id 			#robot id\n\
uint8 team 			#robot's team 0->Blue 1->Yellow (this might be changed later on)\n\
uint8 state 			#0->out of game/no detection, 1->in game, 2->in game but no move\n\
geometry_msgs/Pose2D pose 	#robot's pose x,y,theta\n\
geometry_msgs/Pose2D pix_coord 	#robot's 2D position in the image plane\n\
float32 height 			#robot's actual height\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
================================================================================\n\
MSG: ssl_msgs/BallState\n\
float32 confidence\n\
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
    ros::serialization::serialize(stream, header);
    ros::serialization::serialize(stream, robots_blue);
    ros::serialization::serialize(stream, robots_yellow);
    ros::serialization::serialize(stream, balls);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, header);
    ros::serialization::deserialize(stream, robots_blue);
    ros::serialization::deserialize(stream, robots_yellow);
    ros::serialization::deserialize(stream, balls);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(header);
    size += ros::serialization::serializationLength(robots_blue);
    size += ros::serialization::serializationLength(robots_yellow);
    size += ros::serialization::serializationLength(balls);
    return size;
  }

  typedef boost::shared_ptr< ::ssl_msgs::GlobalState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ssl_msgs::GlobalState_<ContainerAllocator>  const> ConstPtr;
}; // struct GlobalState
typedef  ::ssl_msgs::GlobalState_<std::allocator<void> > GlobalState;

typedef boost::shared_ptr< ::ssl_msgs::GlobalState> GlobalStatePtr;
typedef boost::shared_ptr< ::ssl_msgs::GlobalState const> GlobalStateConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ssl_msgs::GlobalState_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ssl_msgs::GlobalState_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ssl_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::ssl_msgs::GlobalState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ff5ed60cc23474d8e2b4dd790d960277";
  }

  static const char* value(const  ::ssl_msgs::GlobalState_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xff5ed60cc23474d8ULL;
  static const uint64_t static_value2 = 0xe2b4dd790d960277ULL;
};

template<class ContainerAllocator>
struct DataType< ::ssl_msgs::GlobalState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ssl_msgs/GlobalState";
  }

  static const char* value(const  ::ssl_msgs::GlobalState_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ssl_msgs::GlobalState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
ssl_msgs/GlobalRobotState[] robots_blue\n\
ssl_msgs/GlobalRobotState[] robots_yellow\n\
ssl_msgs/BallState[] balls\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: ssl_msgs/GlobalRobotState\n\
float32 confidence 		#confidence of the identification of the robot\n\
uint8 id 			#robot id\n\
uint8 team 			#robot's team 0->Blue 1->Yellow (this might be changed later on)\n\
uint8 state 			#0->out of game/no detection, 1->in game, 2->in game but no move\n\
geometry_msgs/Pose2D pose 	#robot's pose x,y,theta\n\
geometry_msgs/Pose2D pix_coord 	#robot's 2D position in the image plane\n\
float32 height 			#robot's actual height\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
================================================================================\n\
MSG: ssl_msgs/BallState\n\
float32 confidence\n\
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

  static const char* value(const  ::ssl_msgs::GlobalState_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::ssl_msgs::GlobalState_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::ssl_msgs::GlobalState_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ssl_msgs::GlobalState_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.robots_blue);
    stream.next(m.robots_yellow);
    stream.next(m.balls);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GlobalState_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ssl_msgs::GlobalState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ssl_msgs::GlobalState_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "robots_blue[]" << std::endl;
    for (size_t i = 0; i < v.robots_blue.size(); ++i)
    {
      s << indent << "  robots_blue[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> >::stream(s, indent + "    ", v.robots_blue[i]);
    }
    s << indent << "robots_yellow[]" << std::endl;
    for (size_t i = 0; i < v.robots_yellow.size(); ++i)
    {
      s << indent << "  robots_yellow[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ssl_msgs::GlobalRobotState_<ContainerAllocator> >::stream(s, indent + "    ", v.robots_yellow[i]);
    }
    s << indent << "balls[]" << std::endl;
    for (size_t i = 0; i < v.balls.size(); ++i)
    {
      s << indent << "  balls[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ssl_msgs::BallState_<ContainerAllocator> >::stream(s, indent + "    ", v.balls[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // SSL_MSGS_MESSAGE_GLOBALSTATE_H

