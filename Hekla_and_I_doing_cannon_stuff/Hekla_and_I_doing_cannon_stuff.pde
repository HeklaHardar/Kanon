cannon cannon1;
boolean keyUp = true;

PImage Kanon;

void setup() {
  size(1000, 500);
 
  cannon1 = new cannon(color(0, 0, 0), 0, 0, 1.13);
  Kanon = loadImage("smallcanon.png");
}
void draw() {
  background(255);
  fill(224, 155, 80);
  rect(0, 500, 2000, 80);
  fill(0);
  
  pushMatrix();
  translate(20,400);
  image(Kanon,0,0);
  popMatrix();
  
  
  /*
  cannon1.display();
  if (keyPressed == true) {
    if (key == CODED && keyCode == LEFT) {
      println("key left");
      cannon1.angle = cannon1.angle - 0.025;
      if (cannon1.angle <= 0) {
        cannon1.angle = cannon1.angle + 0.025;
      }
    }
    if (key == CODED && keyCode == RIGHT) {
      println("key right");
      cannon1.angle = cannon1.angle + 0.025;
      if (cannon1.angle >= PI/2) {
        cannon1.angle = cannon1.angle - 0.025;
      }
     }
    }
}
void keyReleased() {
  keyUp = true;
}
class cannon {
  color c;
  float xpos;
  float ypos;
  float angle; 
 
  cannon(color tempC, float tempXpos, float tempYpos, float tempAngle) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    angle = tempAngle;
  }
  void display() {
    PImage K;
    stroke(0);
    translate(40, height - 40);
    rotate(angle);
    rectMode(CENTER);
    rect(xpos, ypos, 7, 21);
    fill(255,255,0);
  }
}
