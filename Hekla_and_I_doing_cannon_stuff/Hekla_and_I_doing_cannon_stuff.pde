ball[] CannonBall = new ball[1];
cannon cannon1;
boolean keyUp = true;

PImage Kanon;

void setup() {
  size(1000, 500);
  // Parameters go inside the parentheses when the object is constructed.
  CannonBall[0] = new ball(color(0, 0, 0), 40, 460, PI/4, 0);
  cannon1 = new cannon(color(0, 0, 0), 0, 0, 1.13);
  Kanon=loadImage("smallcanon.png");
}
void draw() {
  background(255);
  fill(204, 102, 0);
  rect(0, 500, 2000, 80);
  fill(0);
  image(Kanon,20,400);  
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
   
      // Random shit jeg har skrevet "Klaus"
      /*if (keyPressed){
        if (key == 'left' || key == 'LEFT');
      }else{
        key LEFT = false;
      }*/
     }
    }
  
  for (int i = 0; i < CannonBall.length; i++) {
    CannonBall[i].display();
    if (keyPressed == true && key == ' ') {
      ball b = new ball(color(0, 0, 0), 40, 460, cannon1.angle, 0); 
      CannonBall = (ball[]) append(CannonBall, b);
      keyUp = false;
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
    fill(c);
  }
}
class ball { 
  color c;
  float xpos;
  float ypos;
  float v;
  float currT;
  float angle;
 
  // The Constructor is defined with arguments.
  ball(color tempC, float tempXpos, float tempYpos, float tempAngle, float tempCurrT) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    v = 75;
    currT = tempCurrT;
    angle = tempAngle;
  }
 
  void display() {
    stroke(0);
    fill(c);
    ellipse(xpos, ypos, 5, 5);
    currT = currT + .1;
    xpos = (v * currT * cos(angle)) + 40;
    ypos = 500 - ((v * currT * sin(angle)) - (0.5 * (9.8 * (sq(currT))))) - 40;
  }
}
