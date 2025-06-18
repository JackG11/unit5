void intro(){
  background(0);
  fill(255);
  
  tactile1(200,400,400,100);
  rect(200,400,400,100);
  tactile1(200,290,400,100);
  rect(200,290,400,100);
  textSize(200);
  text("PONG", 140,200);
  fill(0);
  textSize(50);
  text("2 Player", 310, 460);
  text("BOT Player", 290, 350);
  

}

void tactile1(int x, int y, int w, int h) {
  if (mouseX > x && mouseX< x+w && mouseY> y && mouseY< y+h) {
    stroke(255);
  } else {
    stroke(0);
  }
}



void introClicks(){
 if(mouseX > 200 && mouseX < 500 && mouseY > 400 && mouseY < 500){
    mode = GAME;
}
 if(mouseX > 200 && mouseX < 500 && mouseY > 290 && mouseY < 390){
    mode =GAME;
    AI = true;
}
}
