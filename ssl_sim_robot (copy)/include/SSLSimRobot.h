/*
 * SSLSimRobot.h
 *
 *  Created on: Mar 16, 2011
 *      Author: kadir
 */

#ifndef SSLSIMROBOT_H_
#define SSLSIMROBOT_H_

#include "ros/ros.h"
#include "ssl_msgs/MotorCommand.h"

#include "webots/Robot.hpp"
#include "webots/Servo.hpp"

#include "vector"

#define MAXINT 100000
#define TIME_STEP 32

class SSLSimRobot : public webots::Robot
{
private:
  ros::NodeHandle nh;
  bool first_command_arrived;

  std::vector<webots::Servo*> motors;

  ros::Subscriber sub_motor_commands;
  ssl_msgs::MotorCommand actuation_commands;
  void actuationCommandCallback(const ssl_msgs::MotorCommand::ConstPtr &actuation_msg);
  void setMotorVelocities();
  void sign(float data);

public:
  SSLSimRobot(const ros::NodeHandle& n);
  virtual ~SSLSimRobot();
  void Spin();
  void Send();
};

#endif /* SSLSIMROBOT_H_ */