#include "ros/ros.h"
#include "ssl_msgs/GlobalState.h"

int main(int argc, char **argv)
{
	ros::init(argc, argv, "ssl_vision");
	ros::NodeHandle n;
	ros::Publisher chatter_pub = n.advertise<ssl_msgs::GlobalState>("global_state", 1000);
	ros::Rate loop_rate(10);

	ssl_msgs::GlobalState gs;
	while (ros::ok())
	{
		chatter_pub.publish(gs);
		ros::spinOnce();
		loop_rate.sleep();
	}


	return 0;
}