#include "webots/Robot.hpp"
#include "webots/Receiver.hpp"
#include "ros/ros.h"

#include "iostream"
#include "string"

#define TIME_STEP 32

class DemoController : public webots::Robot{
private:
  webots::Receiver* receiver;
  ros::NodeHandle nh;

public:
  DemoController(const ros::NodeHandle& n):nh(n){
    receiver = getReceiver("receiver");
    receiver->enable(TIME_STEP/2);
  }
  void Receive(){
    if(receiver->getQueueLength() > 0){
      int* msg = (int*)receiver->getData();
      std::cout<<*msg<<std::endl;
      receiver->nextPacket();
    }
  }
  void Spin(){
    while(nh.ok()){
      Receive();
      ros::spinOnce();
      if (step(TIME_STEP) == -1) break;
    }
  }
};

int main(int argc, char** argv){

  ros::init(argc, argv, "demo_controller");
  ros::NodeHandle n;
  DemoController* controller = new DemoController(n);
  controller->Spin();

  return 0;
}
