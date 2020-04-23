/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: hall_sensor_cfg.cpp.                                           *
*Main function of the actuator node                                    *
***********************************************************************/
#define WIRING_PI

#ifdef WIRING_PI

#include "wiringPi.h"

#if 0
/*Pins Configuration of steering and vcu*/
#define PIN_EPS 1    /*P18*/
#define PIN_VCU 23    /*P13*/

#define PWM_CLK_DIV     880
#define PWM_MAX_RANGE  1000
#endif
#if 0
/*Pins Configuration of 2 US-015 ultra-sonic(front, rear)*/
#define ECHO_1 5    /*P24*/
#define ECHO_2 6    /*P25*/
#define TRIG 4    /*P23*/
#define TRIG_TIME 10
#endif
#if 1
/*Pins Configuration of 4 wheel pulse input pins(4 - Hall input)*/
#define WHLPUL_RR 0 /*FL-P17*/
#define WHLPUL_RL 2 /*FR-P27*/
#define WHLPUL_FL 29 /*RR-P21*/
#define WHLPUL_FR 21 /*RL-P5*/

#define WHL_DIV   5  /*Divider of the wheel speed*/
#define WHL_DIAM  120 /*Wheel diameter in mm*/
#define WHLSPEED_FACTOR WHL_DIAM/WHL_DIV /*Wheel liner speed calculation factor*/
#endif
#endif

#ifdef BCM2835

#include "bcm2835.h"

#define PIN_EPS RPI_GPIO_P1_12
#define PIN_VCU RPI_V2_GPIO_P1_33

#define PWM_CHANNEL_EPS 0
#define PWM_CHANNEL_VCU 1
#define PWM_CLK_DIV     880
#define PWM_MODE_MS     1
#define PWM_MODE_BAL    0
#define PWM_CHANNEL_MODE PWM_MODE_MS

#define PWM_CHANNEL_EN 1
#define PWM_MAX_RANGE  1000

#endif
/***********************************************************************
 * Yc, Mar 13, 2020, Add file description and modulize orgnization
 * Yc, Mar 15, 2020, Re-config the FR, RR wheel pulse
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
