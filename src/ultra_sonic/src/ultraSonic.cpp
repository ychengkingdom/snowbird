/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: ultraSonic.cpp.                                                *
*Main function of the ultraSonic.cpp                                   *
***********************************************************************/
#include <ros/ros.h>
#include "ultraSonic.h"

/**************Function definitions for Ultra sonic********************/

UltraSonic::UltraSonic(int trigPin, int echoPin)
{
  m_trigPin = trigPin;
  m_echoPin = echoPin;
  gettimeofday(&m_tv1, NULL);
  gettimeofday(&m_tv2, NULL);
  m_start = 0;
  m_stop = 0;

  pinMode(m_trigPin, OUTPUT);
  pinMode(m_echoPin, INPUT);
}

UltraSonic::~UltraSonic()
{
}

int UltraSonic::disUS_015()
{
  float dis;
  digitalWrite(m_trigPin, HIGH);
  delayMicroseconds(TRIG_TIME);
  digitalWrite(m_trigPin, LOW);

  while(!(digitalRead(m_echoPin) == 1))
  {
    gettimeofday(&m_tv1, NULL);
  }
  while(!(digitalRead(m_echoPin) == 0))
  {
    gettimeofday(&m_tv2, NULL);
  }
  m_start = m_tv1.tv_sec * 1000000 + m_tv1.tv_usec;
  m_stop  = m_tv2.tv_sec * 1000000 + m_tv2.tv_usec;

  dis = (float)(m_stop - m_start) / 1000000*34000 / 2;

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
