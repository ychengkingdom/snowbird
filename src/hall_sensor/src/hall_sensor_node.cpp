/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: hall_sensor_node.cpp.                                          *
*Main function of the hall sensor node                                 *
***********************************************************************/
#include <ros/ros.h>
#include "hallSensor.h"

int speed = 0;
int stop = 0.00001;
int start = 0;

int main (int argc, char** argv)
{
   int count = 0;
   int duration;

   /*Init ROS Node: actuator_node*/
   ros::init(argc, argv, "hallSensor");
   ros::NodeHandle n;
   ros::Rate loop_rate(50);

   /*Init wiringPi for GPIO*/
   wiringPiSetup();

   /*Implementation of ultra sonic and wheel pulse*/
   int whlPulFL = 0;
   int whlPulFR = 0;
   int whlPulRR = 0;
   int whlPulRL = 0;
   /*Init wheel pulse*/
   initHall();

   while (ros::ok())
   {
      /*Implementation of wheel pulse*/
      whlPulRR = whlPulCnt(WHLPUL_RR);
      #if 0
      whlPulFL = whlPulCnt(WHLPUL_FL);
      whlPulFR = whlPulCnt(WHLPUL_FR);
      whlPulRL = whlPulCnt(WHLPUL_RL);
      #endif
      ROS_INFO("wheel pulse:[ FL = %d, FR = %d, RR = %d, RL = %d", 
               whlPulFL, whlPulFR, whlPulRR, whlPulRL);

      wiringPiISR(WHLPUL_RR, INT_EDGE_FALLING, whlSpeed);

      duration = stop - start;/*duration systime since last interruption*/
      ROS_INFO("duration: %d", duration);
      if (duration == 0)
      {
         speed = 0;
      }
      else
      {
         speed = 1000 * WHLSPEED_FACTOR * 3.14 / duration; /*speed in m/s*/
      }
      ROS_INFO("wheel speed: %d", speed);
      start = stop;
      /*gurantee the refresh period*/
      loop_rate.sleep();
   }
   return 0;
}
/***********************************************************************
 * Yc, Mar 13, 2020, Add file description and modulize orgnization
 * Yc, Mar 14, 2020, Disable the FR, RR, RL wheel pulse
 * Yc, Mar 15, 2020, Re-config the FR, RR wheel pulse
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 **********************************************************************/
