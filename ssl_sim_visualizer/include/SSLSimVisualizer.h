/*
 * SSLSimVisualizer.h
 *
 *  Created on: Mar 17, 2011
 *      Author: kadir
 */

#ifndef SSLSIMVISUALIZER_H_
#define SSLSIMVISUALIZER_H_

#include "ros/ros.h"
#include <webots/Supervisor.hpp>
//#include <plugins/physics.h>
#include "ssl_msgs/Visualization.h"

#define TIME_STEP 16
#define PI 3.14159265

class SSLSimVisualizer : public webots::Supervisor
{
private:
  webots::Emitter* emitter;

  ros::NodeHandle nh;
  ros::Subscriber sub;
  ssl_msgs::Visualization viz;
  bool first_viz_data_arrived;

  void callback(const ssl_msgs::Visualization::ConstPtr &viz_msg);
public:
  SSLSimVisualizer(const ros::NodeHandle& n);
  void ShowForceVector();
  void Spin();
  virtual ~SSLSimVisualizer();
};

#endif /* SSLSIMVISUALIZER_H_ */
