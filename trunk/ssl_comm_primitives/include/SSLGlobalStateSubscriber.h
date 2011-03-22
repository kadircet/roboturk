/*
 * SSLGlobalStateSubscriber.h
 *
 *  Created on: Mar 14, 2011
 *      Author: kadir
 */

#ifndef SSLGLOBALSTATESUBSCRIBER_H_
#define SSLGLOBALSTATESUBSCRIBER_H_

#include "ssl_msgs/GlobalState.h"
#include "ros/ros.h"

#include "iostream"
#include "iomanip"

using namespace std;

enum TeamColor{
	YELLOW,
	BLUE
};

enum RobotGameState{
  OUT_OF_FOV,//out of field of view
  NO_MOVE, //sth fishy going on...
  INSIDE_FIELD,
  OUTSIDE_FIELD
};

//TODO: there could be a templated ssl::Subscriber class that contains
//ros::Subscriber sub;
//void callback(const T::ConstPtr &msg);
//Subsriber(ros::NodeHandle& n, string topic_name);
//T data;
//virtual void Print();
//Then different subscribers can be derived from this class
//e.g. GlobalStateSubscriber, LocalStateSubscriber, GameStateSubscriber

class SSLGlobalStateSubscriber {
protected:
	ros::Subscriber sub;
	ssl_msgs::GlobalState global_state;
	bool first_global_data_arrived;

	void callback(const ssl_msgs::GlobalState::ConstPtr &global_msg);
        void printTeam(TeamColor team);
        void printBall();

public:
	void Print();
	ssl_msgs::GlobalState GetGlobalState();
	SSLGlobalStateSubscriber(ros::NodeHandle& nh);
	virtual ~SSLGlobalStateSubscriber();
};

#endif /* SSLGLOBALSTATESUBSCRIBER_H_ */
