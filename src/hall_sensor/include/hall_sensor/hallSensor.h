/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: hallSensor.h.                                                  *
*Main function of the actuator node                                    *
***********************************************************************/
#include "hall_sensor_cfg.h"
#include <sys/time.h>

extern float speed;
extern int start;
extern int stop;
extern int whlPul;

/*Function declarations for wheel pulse counter*/
void initHall(void);
int whlPulCnt(int whlPulID);
void whlPulCntReset(int whlPulID);
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
