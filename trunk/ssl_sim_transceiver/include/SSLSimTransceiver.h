/*
 * SSLSimTransceiver.h
 *
 *  Created on: Mar 15, 2011
 *      Author: kadir
 */

#ifndef SSLSIMTRANSCEIVER_H_
#define SSLSIMTRANSCEIVER_H_

#include "ros/ros.h"
#include "ssl_msgs/MotorCommand.h"
#include "ssl_msgs/TeamCommand.h"
#include "webots/Supervisor.hpp"

#define PI 3.14159265
#define TIME_STEP 32

class SSLSimTransceiver : public webots::Supervisor
{
private:
  webots::Emitter* emitter;

  ros::NodeHandle nh;
  bool first_command_arrived;

  std::vector<float*> team_actuation_commands;

  ros::Subscriber sub_command;
  ssl_msgs::TeamCommand team_command;
  void teamCommandCallback(const ssl_msgs::TeamCommand::ConstPtr &target_msg);

  void SetMotorVelocities();

public:
  SSLSimTransceiver(const ros::NodeHandle& n);
  bool Spin();
  void Send();
  virtual ~SSLSimTransceiver();
};

#endif /* SSLSIMTRANSCEIVER_H_ */
