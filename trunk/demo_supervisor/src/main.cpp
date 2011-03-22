#include "webots/Supervisor.hpp"
#include "webots/Emitter.hpp"
#include "ros/ros.h"

#include "iostream"
#include "string"

#define TIME_STEP 32

class DemoSupervisor : public webots::Supervisor{
private:
  webots::Emitter* emitter;
  ros::NodeHandle nh;
  int msg;

public:
  DemoSupervisor(const ros::NodeHandle& n):nh(n){
    msg=0;
    emitter = getEmitter("emitter");
  }
  void Send(){
    std::cout<<msg<<std::endl;
    emitter->send(&msg,sizeof(int));
    msg++;
  }
  void Spin(){
    while(nh.ok()){
      Send();
      ros::spinOnce();
      if (step(TIME_STEP) == -1) break;
    }
  }
};

int main(int argc, char** argv){

  ros::init(argc, argv, "demo_supervisor");
  ros::NodeHandle n;
  DemoSupervisor* supervisor = new DemoSupervisor(n);
  supervisor->Spin();

  return 0;
}
