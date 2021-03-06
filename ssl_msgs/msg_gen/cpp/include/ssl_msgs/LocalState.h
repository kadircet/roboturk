/* Auto-generated by genmsg_cpp for file /home/kadir/interconnection/workspace/robocup/system_design/robocup_ssl/ssl_msgs/msg/LocalState.msg */
#ifndef SSL_MSGS_MESSAGE_LOCALSTATE_H
#define SSL_MSGS_MESSAGE_LOCALSTATE_H
#include <string>
#include <vector>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/message.h"
#include "ros/time.h"

#include "ssl_msgs/LocalRobotState.h"

namespace ssl_msgs
{
template <class ContainerAllocator>
struct LocalState_ : public ros::Message
{
  typedef LocalState_<ContainerAllocator> Type;

  LocalState_()
  : robots()
  {
  }

  LocalState_(const ContainerAllocator& _alloc)
  : robots(_alloc)
  {
  }

  typedef std::vector< ::ssl_msgs::LocalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::LocalRobotState_<ContainerAllocator> >::other >  _robots_type;
  std::vector< ::ssl_msgs::LocalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::LocalRobotState_<ContainerAllocator> >::other >  robots;


  ROS_DEPRECATED uint32_t get_robots_size() const { return (uint32_t)robots.size(); }
  ROS_DEPRECATED void set_robots_size(uint32_t size) { robots.resize((size_t)size); }
  ROS_DEPRECATED void get_robots_vec(std::vector< ::ssl_msgs::LocalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::LocalRobotState_<ContainerAllocator> >::other > & vec) const { vec = this->robots; }
  ROS_DEPRECATED void set_robots_vec(const std::vector< ::ssl_msgs::LocalRobotState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ssl_msgs::LocalRobotState_<ContainerAllocator> >::other > & vec) { this->robots = vec; }
private:
  static const char* __s_getDataType_() { return "ssl_msgs/LocalState"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "e095c880d9c27373afe05b462a5a392d"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "ssl_msgs/LocalRobotState[] robots #includes robots' local states\n\
\n\
================================================================================\n\
MSG: ssl_msgs/LocalRobotState\n\
bool ball_possesion 	#true if it possess, false otherwise\n\
uint8 battery		#battery level of the robot changes between [0-100]\n\
float32 temp1 		#dummy\n\
float32 temp2 		#dummy\n\
float32 temp3 		#dummy\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, robots);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, robots);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(robots);
    return size;
  }

  typedef boost::shared_ptr< ::ssl_msgs::LocalState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ssl_msgs::LocalState_<ContainerAllocator>  const> ConstPtr;
}; // struct LocalState
typedef  ::ssl_msgs::LocalState_<std::allocator<void> > LocalState;

typedef boost::shared_ptr< ::ssl_msgs::LocalState> LocalStatePtr;
typedef boost::shared_ptr< ::ssl_msgs::LocalState const> LocalStateConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ssl_msgs::LocalState_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ssl_msgs::LocalState_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ssl_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator>
struct MD5Sum< ::ssl_msgs::LocalState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "e095c880d9c27373afe05b462a5a392d";
  }

  static const char* value(const  ::ssl_msgs::LocalState_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xe095c880d9c27373ULL;
  static const uint64_t static_value2 = 0xafe05b462a5a392dULL;
};

template<class ContainerAllocator>
struct DataType< ::ssl_msgs::LocalState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ssl_msgs/LocalState";
  }

  static const char* value(const  ::ssl_msgs::LocalState_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ssl_msgs::LocalState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ssl_msgs/LocalRobotState[] robots #includes robots' local states\n\
\n\
================================================================================\n\
MSG: ssl_msgs/LocalRobotState\n\
bool ball_possesion 	#true if it possess, false otherwise\n\
uint8 battery		#battery level of the robot changes between [0-100]\n\
float32 temp1 		#dummy\n\
float32 temp2 		#dummy\n\
float32 temp3 		#dummy\n\
\n\
";
  }

  static const char* value(const  ::ssl_msgs::LocalState_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ssl_msgs::LocalState_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.robots);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct LocalState_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ssl_msgs::LocalState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ssl_msgs::LocalState_<ContainerAllocator> & v) 
  {
    s << indent << "robots[]" << std::endl;
    for (size_t i = 0; i < v.robots.size(); ++i)
    {
      s << indent << "  robots[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ssl_msgs::LocalRobotState_<ContainerAllocator> >::stream(s, indent + "    ", v.robots[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // SSL_MSGS_MESSAGE_LOCALSTATE_H

