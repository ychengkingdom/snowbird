/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: hallSensor.h.                                                  *
*Main function of the actuator node                                    *
***********************************************************************/
#include "hall_sensor_cfg.h"
#include <sys/time.h>

extern int speed;
extern int start;
extern int stop;
extern bool flag;
/*Function declarations for wheel pulse counter*/
void initHall(void);
int whlPulCnt(int whlPulID);
void whlSpeed(void);
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
