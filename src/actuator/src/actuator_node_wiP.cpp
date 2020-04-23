#include <ros/ros.h>
// #include "actuator_cfg.h"
#include "wiringPi.h"
#if 0
void initPWMChannel(char channel)
{
   if (channel == PWM_CHANNEL_EPS)
   {
      bcm2835_gpio_fsel(PIN_EPS, BCM2835_GPIO_FSEL_ALT5);
   }
   else if (channel == PWM_CHANNEL_VCU)
   {
      bcm2835_gpio_fsel(PIN_VCU, BCM2835_GPIO_FSEL_ALT0);
   }
   else
   {
   }
   bcm2835_pwm_set_clock(PWM_CLK_DIV);
   bcm2835_pwm_set_mode(channel, PWM_MODE_MS, 1);
   bcm2835_pwm_set_range(channel, PWM_MAX_RANGE);
}

void setEPSData(char data)
{
   bcm2835_pwm_set_data(PWM_CHANNEL_EPS, data);
}

void setVCUData(char data)
{
   bcm2835_pwm_set_data(PWM_CHANNEL_VCU, data);
}
#endif
int main (int argc, char** argv)
{
   /*Init ROS Node: actuator_node*/
   ros::init(argc, argv, "actuator");
   ros::NodeHandle n;
   ros::Rate loop_rate(1);
#if 0
   /*Init bcm2835 gpio*/
   if (!bcm2835_init())
   {
      return -1;
   }

   /*Init PWM channel for ESP and VCU*/
   initPWMChannel(PWM_CHANNEL_EPS);
   initPWMChannel(PWM_CHANNEL_VCU);

  //setEPSData(120);
    setVCUData(120);
  // bcm2835_delay(1);
  // setVCUData(0);
#endif

    wiringPiSetup();
    pinMode(1, OUTPUT);

    digitalWrite(1, HIGH);
   int count = 0;
   while (ros::ok())
   {

//   setEPSData(90);
   ROS_INFO("snowbird!");
   //setVCUData(120);
      loop_rate.sleep();
   }
   //bcm2835_close();
   return 0;
}

