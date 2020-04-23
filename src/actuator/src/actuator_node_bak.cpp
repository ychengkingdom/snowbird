#include <ros/ros.h>
#include "actuator_cfg.h"
#include "actuator_node.h"
#include <sys/time.h>

#define ECHO 5    /*P24*/
#define TRIG 4    /*P23*/

#define WHLPUL1 6 /*P25*/

void initUS_015(void)
{
   pinMode(4, OUTPUT);
   pinMode(5, INPUT);
}

void initHall(void)
{
   pinMode(WHLPUL1, INPUT);
}

int whlPulCnt(void)
{   
   int whlPul1 = 0;
   bool whlst = 1;
   
   if ((digitalRead(WHLPUL1) == 0)&&(whlst == 1))
   {
      whlPul1++;
      whlst = 0;
   }
   else if (digitalRead(WHLPUL1) == 1)
   {
      whlst = 1;
   }
   else
   {
   }
   return whlPul1;

   ROS_INFO("wheel pulse: %d", whlPul1);
}

int main (int argc, char** argv)
{
   /*Init ROS Node: actuator_node*/
   ros::init(argc, argv, "actuator");
   ros::NodeHandle n;
   ros::Rate loop_rate(20);
   
    wiringPiSetup();
#if 0
    pinMode(PIN_EPS, PWM_OUTPUT);
    pinMode(PIN_VCU, PWM_OUTPUT);
    pwmSetMode(PWM_MODE_MS);
    pwmSetClock(PWM_CLK_DIV);
    pwmSetRange(PWM_MAX_RANGE);
    pwmWrite(PIN_EPS, 0);
    pwmWrite(PIN_VCU, 0);
#endif
#if 1
   initUS_015();
   struct timeval tv1;
   struct timeval tv2;
   
   long start, stop;
   float dis;
   
  
   int count = 0;
   while (ros::ok())
   {

    #if 0
    digitalWrite(4, HIGH);
    delayMicroseconds(10);
    digitalWrite(4, LOW);
    
    while(!(digitalRead(ECHO) == 1))
    {
       gettimeofday(&tv1, NULL);
    }
    while(!(digitalRead(ECHO) == 0))
    {
       gettimeofday(&tv2, NULL);
    }
    start = tv1.tv_sec * 1000000 + tv1.tv_usec;
    stop  = tv2.tv_sec * 1000000 + tv2.tv_usec;
    
    dis = (float)(stop - start) / 1000000*34000 / 2;    
   ROS_INFO("start: %d; stop: %d; dis: %0.2f", start, stop, dis);
    #endif    
    
    #if 1
    if ((digitalRead(WHLPUL1) == 0)&&(whlst == 1))
    {
       whlPul1++;
       whlst = 0;
    }
    else if (digitalRead(WHLPUL1) == 1)
    {
       whlst = 1;
    }
    else
    {
    }
    ROS_INFO("wheel pulse: %d", whlPul1);
    #endif
    
    

   loop_rate.sleep();
   }
#endif
   return 0;
}

