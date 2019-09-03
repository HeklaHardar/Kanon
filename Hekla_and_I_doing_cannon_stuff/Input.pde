void keyPressed(){
  if (key == CODED){
    if (keyCode == LEFT){
      Kanon.pressingLeft = true;
    } else if (keyCode == RIGHT){
      Kanon.pressingRight = true;
    }else if(keyCode == UP){
      
      // LAV BOLD
        BallList.add(new Ball(rotation.copy().mult(5)));
    }
  }
}


void keyReleased(){
  if (key == CODED){
    if (keyCode == LEFT){
      Kanon.pressingLeft = false;
    } else if (keyCode == RIGHT){
      Kanon.pressingRight = false;
    }
  }
}

void mousePressed(){

  
}
