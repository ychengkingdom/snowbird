/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: actuator_node.cpp.                                             *
*Main function of the actuator node                                    *
***********************************************************************/
#include <ros/ros.h>
#include <actuatorPWM.h>

int main (int argc, char** argv)
{
   int count = 0;

   /*Init ROS Node: actuator_node*/
   ros::init(argc, argv, "actuator");
   ros::NodeHandle n;
   ros::Rate loop_rate(20);

   /*Init wiringPi for GPIO*/
   wiringPiSetup();

#if 0   /*Implementation of steering angle and motion*/
   initPWM();
   setStrAngle(90);
   setAccBrake(90);
#endif

   while (ros::ok())
   {

      /*gurantee the refresh period*/
      loop_rate.sleep();
   }
   return 0;
}
/***********************************************************************
 * Yc, Mar 13, 2020, Add file description and modulize orgnization
 * Yc, Mar 14, 2020, Disable the PWM output.
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
