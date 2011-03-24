/*
 * SSLSimVision.h
 *
 *  Created on: Mar 11, 2011
 *      Author: kadir
 */

#ifndef SSLSIMVISION_H_
#define SSLSIMVISION_H_

#include "ros/ros.h"
#include "ssl_msgs/GlobalState.h"
#include <webots/Supervisor.hpp>

#include "string"
#include "sstream"
#include <iomanip>

#define TIME_STEP 32
#define N_ROBOTS_PER_TEAM 5
#define FIELD_WIDTH 6.050 //in x
#define FIELD_HEIGHT 4.050//in y

using namespace std;

enum TEAM{
	YELLOW,
	BLUE
};

enum RobotGameState{
  OUT_OF_FOV,//out of field of view
  NO_MOVE, //sth fishy going on...
  INSIDE_FIELD,
  OUTSIDE_FIELD
};

class SSLSimVision : public webots::Supervisor{

private:
	ros::NodeHandle nh;
	ros::Publisher  pub;

	int  n_subscribers;

	string getRobotName(const int& robot_index, TEAM team);
	void updateBall(ssl_msgs::GlobalState & global_state);
	void updateTeam(ssl_msgs::GlobalState & global_state,TEAM team);
	void printTeam(const ssl_msgs::GlobalState & global_state,TEAM team);
	void printBall(const ssl_msgs::GlobalState & global_state);
public:

	SSLSimVision(const ros::NodeHandle& n);

	virtual ~SSLSimVision();

	void    Print(const ssl_msgs::GlobalState & global_state);
	void	Update(ssl_msgs::GlobalState & global_state);
	bool	Send(const ssl_msgs::GlobalState& global_state);
	void	Run();
	void	Init(ssl_msgs::GlobalState & global_state);
};

#endif /* SSLSIMVISION_H_ */