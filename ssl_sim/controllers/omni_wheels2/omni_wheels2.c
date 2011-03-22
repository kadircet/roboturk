/*
 * File:        omni_wheels.c
 * Date:        May 25, 2010
 * Description: Demo of a three-omni-wheels robot
 * Author:      Mehdi Ghanavati, Shahid Chamran University
 * Adapted by:  Yvan Bourquin - www.cyberbotics.com
 */

#include <stdio.h>

#include "webots/robot.h"
#include <webots/servo.h>

static WbDeviceTag wheels[4];
double v[4] = {0,0,0,0};
/*double A[4][3] = {
{-0.866,	0.5,	0.09},
{-0.7071,	-0.7071,0.09},
{0.7071,	0.7071, 0.09},
{0.866,		0.5,	0.09}
};
*/
double A[4][3] = {
{0.866,	-0.5,	0.09},
{0.7071,	0.7071,0.09},
{-0.7071,	0.7071, 0.09},
{-0.866,	-0.5,	0.09}
};

double** calculateWheelVelocities(double V[3]){
	int i=0;
	int j=0;

	for(i=0;i<4;i++)
		v[i]=0;	

	for(i=0;i<4;i++)
		for(j=0;j<3;j++)
			v[i]+=A[i][j]*V[j];
	
}

static double cmd[5][3] = {
  { 1,  0,  0 },
  { -1,  0, 0 },
  {  0, 1, 0 },
  {  0, -1,  0 },
  {  0,  0,  0 },
};

static double SPEED_FACTOR = 20.0;

int main() {
  int i, j, k;
  
printf("hobaliii\n");
  // initialize Webots
  wb_robot_init();

  for (i = 0; i < 4; i++) {
    char name[64];
    sprintf(name, "wheel%d", i+1);
    wheels[i] = wb_robot_get_device(name);
    wb_servo_set_position(wheels[i], INFINITY);
  }

  while (1) {

    for (i = 0; i < 4; i++) {
	calculateWheelVelocities(cmd[i]);
      for (j = 0; j < 4; j++)
        wb_servo_set_velocity(wheels[j],v[j]*SPEED_FACTOR );

/*	
	wb_servo_set_velocity(wheels[0],0 );
	wb_servo_set_velocity(wheels[1],0 );
	wb_servo_set_velocity(wheels[2],0 );
	wb_servo_set_velocity(wheels[3],10 );
  */    
      for (k = 0; k < 100; k++)
        wb_robot_step(8);
    }
  }

  return 0;
}
