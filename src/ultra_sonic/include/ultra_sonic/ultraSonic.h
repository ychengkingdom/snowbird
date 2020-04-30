/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: ultraSonic.h.                                                  *
*Main function of the ultra sonic                                      *
***********************************************************************/
#ifndef ULTRASONIC_H_
#define ULTRASONIC_H_

#include <sys/time.h>
#include "ultra_sonic_cfg.h"

class UltraSonic
{
  public:
    UltraSonic(int trigPin, int echoPin);
    virtual ~UltraSonic();
  private:
    int m_trigPin;
    int m_echoPin;
    struct timeval m_tv1;
    struct timeval m_tv2;
    long m_start;
    long m_stop;
  public:
    /*Function declarations for ultral sonic*/
    int disUS_015();
};
#endif
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
