/*
 * SSLSimTransceiver.cpp
 *
 *  Created on: Mar 15, 2011
 *      Author: kadir
 */

#include "SSLSimTransceiver.h"

void SSLSimTransceiver::teamCommandCallback(const ssl_msgs::TeamCommand::ConstPtr &target_msg)
{
  if (!first_command_arrived)
    first_command_arrived = true;
  team_command = *target_msg;
}

SSLSimTransceiver::SSLSimTransceiver(const ros::NodeHandle& n) :
  nh(n)
{
  first_command_arrived = false;
  pub_actuation_command =
      nh.advertise<ssl_msgs::MotorCommand>("motor_command",1000);
  sub_command =
      nh.subscribe("team_command",1000,&SSLSimTransceiver::teamCommandCallback, this);
}

SSLSimTransceiver::~SSLSimTransceiver()
{
}

void SSLSimTransceiver::SetMotorVelocities(float speed_of_movement, float direction_of_movement)
{
  float v_z = speed_of_movement * cos(direction_of_movement);
  float v_x = speed_of_movement * sin(direction_of_movement);

  if (actuation_commands.robot.size() > 0)
    actuation_commands.robot.pop_back();
  actuation_commands.robot.clear();
  actuation_commands.robot.resize(1);

  actuation_commands.robot[0].wheel_1 = sin(60.0 * PI / 180.0) * v_z - cos(60.0 * PI / 180.0) * v_x /*- 100*de_perturbance*/;
  actuation_commands.robot[0].wheel_2 = sin(45.0 * PI / 180.0) * v_z + cos(45.0 * PI / 180.0) * v_x /*- 100*de_perturbance*/;
  actuation_commands.robot[0].wheel_3 = -sin(45.0 * PI / 180.0) * v_z + cos(45.0 * PI / 180.0) * v_x /*- 100*de_perturbance*/;
  actuation_commands.robot[0].wheel_4 = -sin(60.0 * PI / 180.0) * v_z - cos(60.0 * PI / 180.0) * v_x /*- 100*de_perturbance*/;
}

void SSLSimTransceiver::GenerateActuatorCommands()
{
  float trans_speed = team_command.robot_commands[0].trans_speed;
  float trans_direction = team_command.robot_commands[0].trans_direction;
  SetMotorVelocities(trans_speed, trans_direction);
}
void SSLSimTransceiver::Send()
{
  if (pub_actuation_command.getNumSubscribers() > 0)
    pub_actuation_command.publish(actuation_commands);
}

bool SSLSimTransceiver::Spin()
{
  while(!first_command_arrived && nh.ok())
    ros::spinOnce();

  while (nh.ok())
  {
    GenerateActuatorCommands();
    Send();
    ros::spinOnce();
  }
  return true;
}
