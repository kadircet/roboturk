/*
 * SSLSimRobot.cpp
 *
 *  Created on: Mar 16, 2011
 *      Author: kadir
 */

#include "SSLSimRobot.h"

int SSLSimRobot::sign(float data){
        if(data >= 0)
                return 1;
        else
                return -1;
}

void SSLSimRobot::setMotorVelocities(){
  motors[0]->setPosition(sign(actuation_commands.robot[0].wheel_1)*MAXINT);
  motors[1]->setPosition(sign(actuation_commands.robot[0].wheel_2)*MAXINT);
  motors[2]->setPosition(sign(actuation_commands.robot[0].wheel_3)*MAXINT);
  motors[3]->setPosition(sign(actuation_commands.robot[0].wheel_4)*MAXINT);

  motors[0]->setVelocity(abs(actuation_commands.robot[0].wheel_1));
  motors[1]->setVelocity(abs(actuation_commands.robot[0].wheel_2));
  motors[2]->setVelocity(abs(actuation_commands.robot[0].wheel_3));
  motors[3]->setVelocity(abs(actuation_commands.robot[0].wheel_4));
}

void SSLSimRobot::actuationCommandCallback(const ssl_msgs::MotorCommand::ConstPtr &actuation_msg)
{
  if (!first_command_arrived)
    first_command_arrived = true;
  actuation_commands = *actuation_msg;
}

SSLSimRobot::SSLSimRobot(const ros::NodeHandle& n) :
  nh(n)
{
  first_command_arrived = false;
  motors.push_back(getServo("wheel1"));
  motors.push_back(getServo("wheel2"));
  motors.push_back(getServo("wheel3"));
  motors.push_back(getServo("wheel4"));
  for(unsigned int i=0;i<motors.size();i++)
            motors[i]->enablePosition(TIME_STEP);

  sub_motor_commands =
      nh.subscribe("motor_command",
                   1000,
                   &SSLSimRobot::actuationCommandCallback,
                   this);
}

SSLSimRobot::~SSLSimRobot()
{
  // TODO Auto-generated destructor stub
}

void SSLSimRobot::Spin(){
  while(!first_command_arrived && nh.ok()){
    ros::spinOnce();
    if (step(TIME_STEP) == -1) break;
  }

  while(nh.ok()){

    setMotorVelocities();
    ros::spinOnce();
    if (step(TIME_STEP) == -1) break;
  }
}