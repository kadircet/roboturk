#include "SSLSimRobot.h"
#include "ros/ros.h"


int main(int argc, char** argv)
{
//  for(int i=0;i<10;i++)
//    if (step(TIME_STEP) == -1) break;

  ros::init(argc, argv, "ssl_sim_robot");
  std::cout<<"ssl_sim_robot is initialized"<<std::endl;
  ros::NodeHandle n;
  SSLSimRobot* robot = new SSLSimRobot(n);
  robot->Spin();

  return 0;
}
