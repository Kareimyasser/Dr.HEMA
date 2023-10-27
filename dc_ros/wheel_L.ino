void wheel_L (){
  
  if (w_l > 0){
    analogWrite(IN1_L, d_L);
    digitalWrite(IN2_L, LOW);
  }

  else if (w_l < 0){
    digitalWrite(IN1_L, LOW);
    analogWrite(IN2_L, d_L);
  }

  else if (w_l == 0){
    digitalWrite(IN1_L, LOW);
    digitalWrite(IN2_L, LOW);
  }

}