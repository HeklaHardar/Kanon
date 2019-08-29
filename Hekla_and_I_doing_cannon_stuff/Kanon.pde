class Kanon {
 
  int angle;
  boolean pressingLeft, pressingRight;
  
void update(){
   
  if (pressingLeft == true){
    angle -= 1;
  }
  if (pressingRight == true){
    angle += 1;
  }
  if (angle > 30){
    angle = 30;
  } else if (angle < -65){
    angle = -65;
  }
  pushMatrix();
  translate(80,400);
  rotate(radians(angle));
  imageMode(CENTER);
  image(Canon,0,0);
  popMatrix();
}


}
