void pause(){
  background(168,151,245);
  textSize(100);
  fill(255);
 
  text("PAUSED", 230,200);
  rect(300,400,200,100);
  rect(300,250,200,100);
  textSize(25);
  fill(0);
  text("Resume Game", 325,450);
  text("RESTART", 350,300); 


}

void pauseClicks(){
  if(mouseX> 300 && mouseX< 500 && mouseY > 400 && mouseY< 500){
    mode = GAME;

  }
    if(mouseX> 300 && mouseX< 500 && mouseY > 250 && mouseY< 350){
    mode = INTRO;
    leftscore = 0;
    rightscore = 0;
    ballx = width/2;
    bally = height/2;
    AI = false;
    rightx = width;
    righty = height/2;
    lefty = height/2;
    timer = 100;
    timer = timer - 1;
     if(timer<0){
   ballx = ballx + vx;
  bally = bally + vy;
 }

  }
}
