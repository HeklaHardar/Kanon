void keyPressed(){
  if (key == CODED){
    if (keyCode == LEFT){
      Kanon.pressingLeft = true;
    } else if (keyCode == RIGHT){
      Kanon.pressingRight = true;
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
