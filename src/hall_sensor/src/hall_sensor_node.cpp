/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: hall_sensor_node.cpp.                                          *
*Main function of the hall sensor node                                 *
***********************************************************************/
#include <ros/ros.h>
#include <hallSensor.h>

#define HALL_LOOP_RATE 500
float speed = 0;
int stop = 0.00001;
int start = 0;

int main (int argc, char** argv)
{
   int count = 0;
   int duration;

   /*Init ROS Node: actuator_node*/
   ros::init(argc, argv, "hallSensor");
   ros::NodeHandle n;
   ros::Rate loop_rate(HALL_LOOP_RATE);

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

      count++;

      if(count >= HALL_LOOP_RATE/2)
      {
         count = 0;
         ROS_INFO("wheel pulse:[ FL = %d, FR = %d, RR = %d, RL = %d", 
               whlPulFL, whlPulFR, whlPulRR, whlPulRL);
         speed = 2 * whlPulRR * WHLSPEED_FACTOR * 3.14 * 0.001;
         whlPulCntReset(whlPulRR);
         ROS_INFO("wheel speed: %.2f", speed);
      }
      /*gurantee the refresh period*/
      loop_rate.sleep();
   }
   return 0;
}
/***********************************************************************
 * Yc, Mar 13, 2020, Add file description and modulize orgnization
 * Yc, Mar 14, 2020, Disable the FR, RR, RL wheel pulse
 * Yc, Mar 15, 2020, Re-config the FR, RR wheel pulse
 * Yc, Apr 23, 2020, Add the wheel speed calculation
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
