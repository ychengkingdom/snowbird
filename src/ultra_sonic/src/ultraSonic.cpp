/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: ultraSonic.cpp.                                                *
*Main function of the ultraSonic.cpp                                   *
***********************************************************************/
#include <ros/ros.h>
#include "ultraSonic.h"

/*Variables definition for ultra sonic*/
struct timeval tv1;
struct timeval tv2;

long start, stop;
/**************Function definitions for Ultra sonic********************/
void initUS_015(void)
{
   pinMode(TRIG, OUTPUT);
   pinMode(ECHO_1, INPUT);
   pinMode(ECHO_2, INPUT);
}

int disUS_015(int echoID)
{
   float dis;
   digitalWrite(TRIG, HIGH);
   delayMicroseconds(TRIG_TIME);
   digitalWrite(TRIG, LOW);

   while(!(digitalRead(echoID) == 1))
   {
      gettimeofday(&tv1, NULL);
   }
   while(!(digitalRead(echoID) == 0))
   {
      gettimeofday(&tv2, NULL);
   }
   start = tv1.tv_sec * 1000000 + tv1.tv_usec;
   stop  = tv2.tv_sec * 1000000 + tv2.tv_usec;

   dis = (float)(stop - start) / 1000000*34000 / 2;

   return dis;
}
/***********************************************************************
 * Yc, Mar 13, 2020, Add file description and modulize orgnization
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
 * 
 **********************************************************************/
