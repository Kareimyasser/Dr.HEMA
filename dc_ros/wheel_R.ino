void wheel_R (){

  if (w_r > 0){
    digitalWrite(IN1_R, LOW);
    analogWrite(IN2_R, d_R);
  }

  else if (w_r < 0){
    analogWrite(IN1_R, d_R);
    digitalWrite(IN2_R, LOW);
  }

  else if (w_r == 0){
    digitalWrite(IN1_R, LOW);
    digitalWrite(IN2_R, LOW);
  }

}