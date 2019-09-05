class Ball {
  
  PVector pos, vel, grav;
  float radius = 12.5;
  
  
  Ball(PVector velocity) {
   vel = velocity.copy();
   pos = new PVector(83, 391);
   pos.add(rotation.copy().mult(41.231056));
   grav = new PVector(0,0.1);
  }

  void update(){
    vel.add(grav);
    pos.add(vel);
    
    if (pos.y + radius> height-height/8){
      pos.y = height-height/8-radius;
      vel.y = -vel.y + 2;
      vel.x*= 0.99;
    }
    
    fill(0);
    ellipse(pos.x, pos.y, radius*2, radius*2);
  }
}
