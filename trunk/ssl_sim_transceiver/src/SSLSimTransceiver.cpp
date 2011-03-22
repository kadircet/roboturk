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

SSLSimTransceiver::SSLSimTransceiver(const ros::NodeHandle& n) :  nh(n)
{
  emitter=getEmitter("emitter");

  first_command_arrived = false;
  sub_command =
      nh.subscribe("team_command",1000,&SSLSimTransceiver::teamCommandCallback, this);
}

SSLSimTransceiver::~SSLSimTransceiver()
{
}

void SSLSimTransceiver::SetMotorVelocities()
{
  for(unsigned int i =0;i<team_command.robot_commands.size();i++){
    float trans_speed = team_command.robot_commands[i].trans_speed;
    float trans_direction = team_command.robot_commands[i].trans_direction;
    float v_z = trans_speed*cos(trans_direction);
    float v_x = trans_speed*sin(trans_direction);

    //std::cout<<"v_z: "<<v_z<<"\t"<<"v_x: "<<v_x<<std::endl;

    float actuation_commands[4];

    actuation_commands[0] =  sin(60.0 * PI / 180.0) * v_z - cos(60.0 * PI / 180.0) * v_x /*- 100*de_perturbance*/;
    actuation_commands[1] =  sin(45.0 * PI / 180.0) * v_z + cos(45.0 * PI / 180.0) * v_x /*- 100*de_perturbance*/;
    actuation_commands[2] = -sin(45.0 * PI / 180.0) * v_z + cos(45.0 * PI / 180.0) * v_x /*- 100*de_perturbance*/;
    actuation_commands[3] = -sin(60.0 * PI / 180.0) * v_z - cos(60.0 * PI / 180.0) * v_x /*- 100*de_perturbance*/;

    while(team_actuation_commands.size() > 0)
      team_actuation_commands.pop_back();
    team_actuation_commands.clear();
    team_actuation_commands.push_back(actuation_commands);

//    for(unsigned int i =0;i<team_command.robot_commands.size();i++)
//      std::cout
//          <<"w1:"<<team_actuation_commands[i][0]
//          <<" w2:"<<team_actuation_commands[i][1]
//          <<" w3:"<<team_actuation_commands[i][2]
//          <<" w4:"<<team_actuation_commands[i][3]<<std::endl;
  }
}

void SSLSimTransceiver::Send()
{
  const unsigned int size = team_actuation_commands.size()*4;
  float* tmp = new float[4];

//  for(unsigned int i=0;i<team_actuation_commands.size();i++)
//    for(int j=0;j<4;j++)
//      tmp[i*4+j]=team_actuation_commands[i][j];

  for(int j=0;j<4;j++)
    tmp[j]=team_actuation_commands[0][j];

  for(unsigned int i =0;i<4;i++)
    std::cout
        <<"w1:"<<tmp[0]
        <<" w2:"<<tmp[1]
        <<" w3:"<<tmp[2]
        <<" w4:"<<tmp[3]<<std::endl;

  emitter->send(tmp,4*(sizeof(float)));
  delete[] tmp;
}

bool SSLSimTransceiver::Spin()
{
  while(!first_command_arrived && nh.ok()){
    ros::spinOnce();
    if (step(TIME_STEP) == -1)
      break;
  }

  while (nh.ok() && step(TIME_STEP) != -1)
  {
    ros::spinOnce();
    SetMotorVelocities();
    Send();
  }
  return true;
}
