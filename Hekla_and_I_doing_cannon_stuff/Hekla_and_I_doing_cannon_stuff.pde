Kanon Kanon = new Kanon();
PImage Canon;

void setup() {
  size(1000, 500);
  
  Canon = loadImage("smallcanon.png");
}

void draw() {
  background(255);
  fill(224, 155, 80);
  rect(0, 500, 2000, 80);
  fill(0);
  
  Kanon.update();
}
