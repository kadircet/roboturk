#include "SSLPathPlanner.h"

using namespace std;

int main(int argc, char **argv){

	ros::init(argc, argv, "ssl_path_planner");
	ros::NodeHandle n;
	SSLPathPlanner* path_planner = new SSLPathPlanner(n);
	path_planner->Spin();
	return 0;
}
