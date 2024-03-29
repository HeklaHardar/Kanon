Kanon Kanon = new Kanon();

ArrayList<Ball> BallList;
PImage Canon;
PVector rotation, friction;
float lastRot, thisRot;

void setup() {
  size(1000, 500);
  frameRate(90);
  BallList = new ArrayList<Ball>();
  
  //rotation viser hvor bold skyder fra. 90 = slutning af kanonmund.X 380 er slutningen af kanonmund.y.
  // 80 og 400 er kanonens position.
 
  rotation = new PVector(121-80,375-400);
  rotation.normalize();
  Canon = loadImage("smallcanon.png");
  friction = new PVector(0,0.2);
}

//83 og 391 til midt af kanon
//Distance = 41.231056
void draw() {
  background(255);
  thisRot = Kanon.angle;

  rotation.set(1,0).rotate(thisRot+PI/-6);
  
  // Vores jord.
  fill(0,255,0);
  translate(0,0);
  rectMode(CORNER);
  rect(0,height-height/8,width,height);
  
  // Kører vores BallList
  for (int i = 0; i < BallList.size(); i++){
    BallList.get(i).update();
  }
  
  //Kører vores Kanon
  Kanon.update();
}
