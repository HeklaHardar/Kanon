class Ball {
  
  PVector pos, vel, grav;

  
  
  Ball(PVector velocity) {
   vel = velocity.copy();
   pos = new PVector(83, 391);
   pos.add(rotation.copy().mult(41.231056));
   grav = new PVector(0,0.1);
  }

  void update(){
    vel.add(grav);
    pos.add(vel);
    fill(0);
    ellipse(pos.x, pos.y, 25, 25);
  }
}
