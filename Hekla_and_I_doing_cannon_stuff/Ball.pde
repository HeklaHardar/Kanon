class Ball {
  
  PVector pos, vel, grav;
  float radius = 12.5, angle;
  
  // Start position for Ball.
  Ball(PVector velocity) {
   vel = velocity.copy();
   pos = new PVector(83, 391);
   pos.add(rotation.copy().mult(41.231056));
   grav = new PVector(0,0.1);
  }

  void update(){
    
    //rotation på Balls
    angle += (PI/128)*vel.x;
    
    vel.add(grav);
    pos.add(vel);

    // Her indsætter vi "Force" som gør at boldene ikke hopper uendeligt.
    if (pos.y + radius> height-height/8){
      pos.y = height-height/8-radius;
      vel.y = -vel.y + 2;
      
      //Procent af hastighed frataget. (-1% hvis *0.99)
      vel.x*= 0.99;
    }
    
    
    // Push pop matrix der gør at rektanglen / kuglen kan rotere.
    fill(0,85,89);
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(angle);
    rectMode(CENTER);
    rect(0, 0, radius*2, radius*2);
    popMatrix();
  }
}
