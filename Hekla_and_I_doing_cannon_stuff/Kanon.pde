class Kanon {
 
  float angle;
  boolean pressingLeft, pressingRight;
  
void update(){
   
  if (pressingLeft == true){
    angle -= 0.1;
  }
  if (pressingRight == true){
    angle += 0.1;
  }
  if (angle > 0.3){
    angle = 0.3;
  } else if (angle < -0.65){
    angle = -0.65;
  }
  pushMatrix();
  translate(80,400);
  rotate(angle);
  imageMode(CENTER);
  image(Canon,0,0);
  popMatrix();
}


}
