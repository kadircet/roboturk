/*
 * SSLSimRobot.h
 *
 *  Created on: Mar 16, 2011
 *      Author: kadir
 */

#ifndef SSLSIMROBOT_H_
#define SSLSIMROBOT_H_

#include "webots/Robot.hpp"
#include "webots/Servo.hpp"

#include "vector"
#include "iostream"
#include "math.h"

#define MAXINT 100000
#define TIME_STEP 32

class SSLSimRobot : public webots::Robot
{
private:

  std::vector<webots::Servo*> motors;
  webots::Receiver* receiver;
  float* packet;

  void setMotorVelocities();
  int sign(float data);

public:
  SSLSimRobot();
  virtual ~SSLSimRobot();
  void Spin();
  void Receive();
};

#endif /* SSLSIMROBOT_H_ */
