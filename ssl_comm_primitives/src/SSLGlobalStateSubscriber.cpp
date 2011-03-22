/*
 * SSLGlobalStateSubscriber.cpp
 *
 *  Created on: Mar 14, 2011
 *      Author: kadir
 */

#include "SSLGlobalStateSubscriber.h"

void SSLGlobalStateSubscriber::callback(const ssl_msgs::GlobalState::ConstPtr &global_msg){
	if(!first_global_data_arrived)
		first_global_data_arrived = true;
	global_state = *global_msg;
}

SSLGlobalStateSubscriber::SSLGlobalStateSubscriber(ros::NodeHandle& nh){
	first_global_data_arrived = false;
	sub = nh.subscribe("global_state", 1000,&SSLGlobalStateSubscriber::callback, this);
}

SSLGlobalStateSubscriber::~SSLGlobalStateSubscriber() {
	// TODO Auto-generated destructor stub
}

void SSLGlobalStateSubscriber::Print()
{
  printTeam(YELLOW);
  printTeam(BLUE);
  printBall();
}

void SSLGlobalStateSubscriber::printBall()
{
  for (unsigned int i = 0; i < global_state.balls.size(); i++)
  {
    cout << "ball " << i << ":";
    cout<<"x:"<<setiosflags(ios::fixed) << setprecision(3) << setw(7)<< (float)global_state.balls[i].position.x << "\t";
    cout<<"y:"<<setiosflags(ios::fixed) << setprecision(3) << setw(7)<< (float)global_state.balls[i].position.y << "\t";
    cout<<"conf:"<<setiosflags(ios::fixed) << setprecision(3) << setw(7)<< (float)global_state.balls[i].confidence << "\t";
    cout<<"area:"<<setiosflags(ios::fixed) << setprecision(3) << setw(7)<< (float)global_state.balls[i].area << "\t";
    cout<<"px_x:"<<setiosflags(ios::fixed) << setprecision(3) << setw(7)<< (float)global_state.balls[i].pix_coord.x << "\t";
    cout<<"px_y:"<<setiosflags(ios::fixed) << setprecision(3) << setw(7)<< (float)global_state.balls[i].pix_coord.y << endl;
  }
}

void SSLGlobalStateSubscriber::printTeam(TeamColor team)
{
  std::vector<ssl_msgs::GlobalRobotState> team_state;
  if(team == YELLOW)
    team_state=global_state.robots_yellow;
  else if(team == BLUE)
    team_state=global_state.robots_blue;
  else{
    std::cerr<<"wrong team input. Exiting!"<<std::endl;
    exit(0);
  }
  for(unsigned int i=0; i<team_state.size();i++){
    if(team == YELLOW)
      cout<<"y("<<(int)team_state[i].id<<")"<<"\t";
    else
      cout<<"b("<<(int)team_state[i].id<<")"<<"\t";

    cout<<"x:"<<setiosflags(ios::fixed) << setprecision(3)<< setw(7)<<(float)team_state[i].pose.x<<"\t";
    cout<<"y:"<<setiosflags(ios::fixed) << setprecision(3)<< setw(7)<<(float)team_state[i].pose.y<<"\t";
    cout<<"theta:"<<setiosflags(ios::fixed) << setprecision(3)<< setw(7)<<(float)team_state[i].pose.theta<<"\t";
    cout<<"conf:"<<setiosflags(ios::fixed) << setprecision(3)<< setw(7)<<(float)team_state[i].confidence<<"\t";
    if(team_state[i].state == INSIDE_FIELD)
      cout<<"state:"<<"INSIDE_FIELD"<<endl;
    else if(team_state[i].state == OUTSIDE_FIELD)
      cout<<"state:"<<"OUTSIDE_FIELD"<<endl;
    else if(team_state[i].state == OUT_OF_FOV)
      cout<<"state:"<<"OUT_OF_FOV"<<endl;
    else if(team_state[i].state == NO_MOVE)
      cout<<"state:"<<"NO_MOVE"<<endl;
    else{
      std::cerr<<"wrong game state for a robot. Exiting!"<<std::endl;
      exit(0);
    }
  }
}

ssl_msgs::GlobalState SSLGlobalStateSubscriber::GetGlobalState(){
	return global_state;
}
