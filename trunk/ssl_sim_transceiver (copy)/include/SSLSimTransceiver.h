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

class SSLSimTransceiver {
private:
	ros::Subscriber sub_command;
	ros::Publisher pub_actuation_command;
	ssl_msgs::TeamCommand team_command;

	void team_command_callback(
			const ssl_msgs::TeamCommand::ConstPtr &target_msg);

public:
	SSLSimTransceiver();
	virtual ~SSLSimTransceiver();
};

#endif /* SSLSIMTRANSCEIVER_H_ */
