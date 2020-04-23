/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: actuatorPWM.cpp.                                           *
*Processing the basic sensors' signal from hardware                    *
***********************************************************************/
#include <actuatorPWM.h>

/***********Function definitions for lateral and longitude*************/
void initPWM(void)
{
   pinMode(PIN_EPS, PWM_OUTPUT);
   pinMode(PIN_VCU, PWM_OUTPUT);
   pwmSetMode(PWM_MODE_MS);
   pwmSetClock(PWM_CLK_DIV);
   pwmSetRange(PWM_MAX_RANGE);
}
void setStrAngle(char angle)
{
   pwmWrite(PIN_EPS, angle);
}
void setAccBrake(char accbrk)
{
   pwmWrite(PIN_VCU, accbrk);
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
