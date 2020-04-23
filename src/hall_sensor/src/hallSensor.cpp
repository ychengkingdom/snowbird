/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: hallSensor.cpp.                                                *
*Main function of the hallSensor                                       *
***********************************************************************/
#include "hallSensor.h"
#include <ros/ros.h>

/*Variable definitions for wheel pulse*/
int whlPul = 0;
bool whlst = 1;

/**************Functions definition for wheel pulse(Hall sensor)*******/
void initHall(void)
{
   pinMode(WHLPUL_FL, INPUT);
   pinMode(WHLPUL_FR, INPUT);
   pinMode(WHLPUL_RR, INPUT);
   pinMode(WHLPUL_RL, INPUT);
}

int whlPulCnt(int whlPulID)
{
   if ((digitalRead(whlPulID) == 0)&&(whlst == 1))
   {
      whlPul++;
      whlst = 0;
   }
   else if (digitalRead(whlPulID) == 1)
   {
      whlst = 1;
   }
   else
   {
   }
   return whlPul;
}

void whlPulCntReset(int whlPulID)
{
   whlPul = 0;
}

/***********************************************************************
 * Yc, Mar 13, 2020, Add file description and modulize orgnization
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
 * 
 **********************************************************************/
