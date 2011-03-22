#include "ros/ros.h"

#include "ssl_msgs/TeamCommand.h"

#include "ssl_msgs/GameState.h"
#include "ssl_msgs/GlobalState.h"
#include "ssl_msgs/LocalState.h"

#include "SSLGamePlanner.h"

int main(int argc, char **argv)
{
	ros::init(argc, argv, "ssl_game_planner");
	ros::NodeHandle n;
	SSLGamePlanner* game_planner = new SSLGamePlanner(n);
	game_planner->Spin();

	return 0;
}
