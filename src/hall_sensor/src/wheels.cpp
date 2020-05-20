/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: hallSensor.cpp.                                                *
*Main function of the hallSensor                                       *
***********************************************************************/
#include "wheels.h"
#include <ros/ros.h>

Wheels::Wheels(int pin)
{
  m_speed = 0;
  m_whlPul = 0;
  m_whlSt = 1;
  m_pin = pin;
  pinMode(m_pin, INPUT);
}

Wheels::~Wheels()
{

}
#if 0
void Wheels::initHall(int whlPulID)
{
  pinMode(m_pin, INPUT);
}
#endif
int Wheels::whlPulCnt()
{
  if ((digitalRead(m_pin) == 0)&&(m_whlSt == 1))
  {
    m_whlPul++;
    m_whlSt = 0;
  }
  else if (digitalRead(m_pin) == 1)
  {
    m_whlSt = 1;
  }
  else
  {
  }
  return m_whlPul;
}

void Wheels::whlPulCntReset()
{
  m_whlPul = 0;
}

void Wheels::updateSpeed(int tick)
{
  m_speed = tick * m_whlPul * WHLSPEED_FACTOR *3.14 * 0.001;
}
float Wheels::getSpeed()
{
  return m_speed;
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
