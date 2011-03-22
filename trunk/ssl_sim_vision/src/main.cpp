//#include "ssl_sim_vision.h"
#include "SSLSimVision.h"
#include "iostream"

#include <signal.h>
#include <errno.h>

int main(int argc, char **argv)
{
//	// check if roslaunch is properly installed
//	if (system("which roslaunch > /dev/null")!=0) {
//		std::cerr<<"Cannot find roslaunch in PATH. "
//		"Please check that ROS is properly installed.\n"<<std::endl;
//		return 0;
//	}
//
//	// launch the joy ROS node
//	int roslaunch=fork();
//	if (roslaunch==0) { // child process
//		execlp("roslaunch","roslaunch","joy.launch",NULL);
//		return 0;
//	}

	ros::init(argc, argv, "ssl_sim_vision");
	cout<<"ssl_sim_vision is initialized"<<endl;
	ros::NodeHandle n;
	SSLSimVision* server = new SSLSimVision(n);

	cout<<"running vision server"<<endl;
	server->Run();
	return 0;
}
