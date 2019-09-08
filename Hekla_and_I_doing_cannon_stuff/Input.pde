
//Giver programmet evnen til at bruge de nævnte keys trykket.
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

//Giver programmet evnen til at bruge de nævnte keys released.
void keyReleased(){
  if (key == CODED){
    if (keyCode == LEFT){
      Kanon.pressingLeft = false;
    } else if (keyCode == RIGHT){
      Kanon.pressingRight = false;
    }
  }
}
