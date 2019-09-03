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
  if (thisRot == lastRot-0.1){
    rotation.rotate(-0.1);
  }
  if (thisRot == lastRot+0.1){
    rotation.rotate(+0.1);
  }
  lastRot = Kanon.angle;
  
  fill(0,255,0);
  rect(0,height-height/8,width,height);
  for (int i = 0; i < BallList.size(); i++){
    BallList.get(i).update();
  }
  Kanon.update();
}
