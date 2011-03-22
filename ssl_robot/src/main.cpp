#include "ros/ros.h"
#include "string"
#include "sstream"

#include "ssl_msgs/LocalRobotState.h"
#include "ssl_msgs/MotorCommand.h"

using namespace std;

void chatterCallback(const ssl_msgs::MotorCommand & msg)
{
//  ROS_INFO("I heard: [%s]", msg->data.c_str());
}

void chatterCallback2(const ssl_msgs::LocalRobotState & msg)
{
//  ROS_INFO("I heard: [%s]", msg->data.c_str());
}


int main(int argc, char **argv)
{
	char c[1];
	c[0]=*argv[1]; 
	int robot_id = atoi(c);
	//cout<<*argv[1]<<endl;
	string name = "ssl_robot_";
	stringstream ss;
	ss<< robot_id;
	name.append(ss.str());
	cout<<name<<endl;
	
	ros::init(argc, argv, name);
	ros::NodeHandle n;
	ros::Publisher chatter_pub2 = n.advertise<ssl_msgs::LocalRobotState>("local_robot_state", 1000);

	ros::Subscriber sub = n.subscribe("motor_command", 1000, chatterCallback);

	ros::Rate loop_rate(10);

	ssl_msgs::LocalRobotState gs2;

	while (ros::ok())
	{
		chatter_pub2.publish(gs2);
		ros::spinOnce();
		loop_rate.sleep();
	}


	return 0;
}
