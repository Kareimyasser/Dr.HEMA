#include <ros.h>
#include <geometry_msgs/Twist.h>


#define IN1_L 6
#define IN2_L 7

#define IN1_R 4
#define IN2_R 5

float w_r = 0, w_l = 0, speed_ang = 0, speed_lin = 0, d_R, d_L, wl, wr;
float wheel_rad = 0.0325, wheel_sep = 0.295;

ros::NodeHandle nh;
void messageCb( const geometry_msgs::Twist& msg){
  speed_ang = msg.angular.z;
  speed_lin = msg.linear.x;
  w_r = (speed_lin/wheel_rad) + ((speed_ang*wheel_sep)/(2.0*wheel_rad));
  w_l = (speed_lin/wheel_rad) - ((speed_ang*wheel_sep)/(2.0*wheel_rad));
  wl = constrain(abs(w_r), 0, 5);
  wr = constrain(abs(w_l), 0, 5);
  d_R = map(wl*10, 0, 5*10, 0, 255);
  d_L = map(wr*10, 0, 5*10, 0, 255);
}
ros::Subscriber<geometry_msgs::Twist> sub("cmd_vel", &messageCb );

void setup(){

nh.getHardware()->setBaud(115200);
  digitalWrite(IN1_L, LOW);
  digitalWrite(IN2_L, LOW);
  digitalWrite(IN1_R, LOW);
  digitalWrite(IN2_R, LOW);

  pinMode(IN1_L, OUTPUT);
  pinMode(IN2_L, OUTPUT);
  pinMode(IN1_R, OUTPUT);
  pinMode(IN2_R, OUTPUT);

  nh.initNode();
  nh.subscribe(sub);

}


void loop(){


  nh.spinOnce();
  wheel_L();
  wheel_R();

}






