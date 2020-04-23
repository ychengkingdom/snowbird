/***********************************************************************
*Coypright 2020 by Ychengking. All rights reserved.                    *
*@file: ultra_sonic_cfg.h.                                             *
*Main function of the ultra sonic config                               *
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

/*Pins Configuration of 2 US-015 ultra-sonic(front, rear)*/
#define ECHO_1 5    /*P24*/
#define ECHO_2 6    /*P25*/
#define TRIG 4    /*P23*/
#define TRIG_TIME 10

#if 0
/*Pins Configuration of 4 wheel pulse input pins(4 - Hall input)*/
#define WHLPUL1 0 /*FL-P17*/
#define WHLPUL2 2 /*FR-P27*/
#define WHLPUL3 29 /*RR-P21*/
#define WHLPUL4 21 /*RL-P5*/
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

