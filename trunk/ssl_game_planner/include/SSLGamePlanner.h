/*
 * SSLGamePlanner.h
 *
 *  Created on: Mar 14, 2011
 *      Author: kadir
 */

#ifndef SSLGAMEPLANNER_H_
#define SSLGAMEPLANNER_H_

#include "SSLGlobalStateSubscriber.h"
#include "ssl_msgs/GlobalState.h"
#include "ssl_msgs/TeamPoseCommand.h"
#include "ros/ros.h"

#include "iostream"

using namespace std;

class SSLGamePlanner  : public SSLGlobalStateSubscriber{
private:
	ros::NodeHandle nh;
	ros::Publisher pub;

	ssl_msgs::TeamPoseCommand team_pose_command;

public:
//	SSLGamePlanner(const ros::NodeHandle& n);
	SSLGamePlanner(ros::NodeHandle& n);

	void	PrintTargetPoses();
	void	UpdateTargetPoses();
	bool 	Spin();
	virtual ~SSLGamePlanner();
};

#endif /* SSLGAMEPLANNER_H_ */
