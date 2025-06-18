void gameover1(){
background(0);
textSize(50);

fill(255);

text("RIGHT WINNER", 250, 200);

fill(0,255,0);
tactile1(300,325,200,100);
rect(300,325,200,100);
textSize(25);
fill(255);
text("I Accept Defeat", 320,375);

if(mode == GAMEOVER1){
  rightscore = 0;
}
}

void gameover1Clicks(){
    if(mouseX > 300 && mouseX < 500 && mouseY > 325 && mouseY< 425){
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
