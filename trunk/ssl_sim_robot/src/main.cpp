#include "SSLSimRobot.h"


int main(int argc, char** argv)
{
  std::cout<<"receiver started"<<std::endl;
  SSLSimRobot* robot = new SSLSimRobot();
  robot->Spin();

  return 0;
}
