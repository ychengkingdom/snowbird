/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: hall_sensor_node.cpp.                                          *
*Main function of the hall sensor node                                 *
***********************************************************************/
#include <ros/ros.h>
#include "wheels.h"

#define HALL_LOOP_RATE 500

typedef enum WhlsID
{
   FL = 0,
   FR,
   RL,
   RR,
   WHLMAX
};
int main (int argc, char** argv)
{
   int count = 0;
   int duration;
   int iWhl = 0;
   int tickDiv = 2;
   float speed[WHLMAX] = {0};
   float avgSpd = 0;
   /*Init ROS Node: actuator_node*/
   ros::init(argc, argv, "hallSensor");
   ros::NodeHandle n;
   ros::Rate loop_rate(HALL_LOOP_RATE);

   /*Init wiringPi for GPIO*/
   wiringPiSetup();

   /*Init wheel pulse*/
   Wheels whl[WHLMAX] = {Wheels(WHLPUL_FL), Wheels(WHLPUL_FR),
   			 Wheels(WHLPUL_RL), Wheels(WHLPUL_RR)};

   while (ros::ok())
   {
      count++;
      /*Update the pulse counter for 4 wheels*/
      for (iWhl = 0; iWhl < WHLMAX; iWhl++)
      {
         whl[iWhl].whlPulCnt();
      }
      /*tick the calculation of the wheel speed in every 0.5ms*/
      if(count >= HALL_LOOP_RATE/tickDiv)
      {
         count = 0;
         for (iWhl = 0; iWhl < WHLMAX; iWhl++)
	 {
            ROS_INFO("wheel speed [%d]: %.2f",iWhl, whl[iWhl].getSpeed(tickDiv));
	    whl[iWhl].whlPulCntReset();
	 }
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
