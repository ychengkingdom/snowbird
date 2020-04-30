/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: ultra_sonic_node.cpp.                                          *
*Main function of the ultra_sonic_node                                 *
***********************************************************************/
#include <ros/ros.h>
#include "ultraSonic.h"
int main(int argc, char** argv)
{
   float dis_fr = 0;
   float dis_re = 0;

   /*Init ROS Node: actuator_node*/
   ros::init(argc, argv, "ultraSonic");
   ros::NodeHandle n;
   ros::Rate loop_rate(5);

   /*Init wiringPi for GPIO*/
   wiringPiSetup();
   /*Init ultra sonic*/
   UltraSonic frUltra(TRIG, ECHO_1);
   //UltraSonic reUltra(TRIG, ECHO_2);

   while (ros::ok())
   {
      /*Implementation of ultra sonic*/
      dis_fr = frUltra.disUS_015();
      //dis_re = reUltra.disUS_015();
      ROS_INFO("front dis: %0.2f; rear dis: %0.2f", dis_fr, dis_re);
      /*gurantee the refresh period*/
      loop_rate.sleep();
   }

   return 0;
}
/***********************************************************************
 * Yc, Mar 13, 2020, Add file description and modulize orgnization
 * Yc, Mar 14, 2020, Disable the ECHO_2 ultrasonic;
 *                   fix bug, add loop_rate.sleep() for the while loop
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
