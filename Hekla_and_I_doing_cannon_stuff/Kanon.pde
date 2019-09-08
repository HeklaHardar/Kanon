class Kanon {
 
  float angle;
  boolean pressingLeft, pressingRight;


void update(){

  // Her bruger vi booleans "pressingLeft" og "pressingRight" som Left og Right keys.
  //  Disse drejer på vores kanon med en vis vinkel.
  if (pressingLeft == true){
    angle -= 0.1;
  }
  if (pressingRight == true){
    angle += 0.1;
  }
  if (angle > 0.4){
    angle = 0.4;
  } else if (angle < -1.1){
    angle = -1.1;
  }
  
  // Her har vi insat vores kanon med vinkel og position "translate".
  pushMatrix();
  translate(80,400);
  rotate(angle);
  imageMode(CENTER);
  image(Canon,0,0);
  popMatrix();
}


}
