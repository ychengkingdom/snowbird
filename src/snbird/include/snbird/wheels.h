/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: hallSensor.h.                                                  *
*Main function of the actuator node                                    *
***********************************************************************/
#ifndef WHEELS_H_
#define WHEELS_H_

#include "snbird_cfg.h"

class Wheels
{
 public:
  Wheels(int pin);
  virtual ~Wheels();
 private:
  float m_speed;
  int m_whlPul;
  bool m_whlSt;
  int m_pin;
 public:
  /*Function declarations for wheel pulse counter*/
  int whlPulCnt();
  void whlPulCntReset();
  void updateSpeed(int tick);
  float getSpeed();
};

#endif

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
