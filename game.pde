void game(){
  background(0);
  
  // drawpaddle
  circle(rightx, righty, rightd);
  circle(leftx, lefty, leftd);
  
//centerline
strokeWeight(5);
stroke(255);
line(width/2, 0, width/2, height);

//scoreboard
textSize(50);
fill(255);
text(leftscore, width/4, 100);
fill(255);
text(rightscore, 3*width/4, 100);
//text(timer, 3*width/4, 550);
timer = timer - 1;


//movepaddles
if(wkey == true) lefty = lefty - 5;
if(skey == true) lefty = lefty + 5;
if(upkey == true) righty = righty - 5;
if(downkey == true) righty = righty + 5;
  
 //move paddles 
  if(wkey == true) lefty = lefty - 5;
if(skey == true) lefty = lefty + 5;

  if(AI == false){
    if(upkey == true) righty = righty -5;
    if(downkey == true) righty = righty + 5;
  }else{
   if(bally<300){
     righty = righty - 8;

  }else{
    if(bally>300){
      righty = righty + 8;
    }
  }
  }
  

//movement
 if(timer<0){
   ballx = ballx + vx;
  bally = bally + vy;
 }
  
    //ball
  circle(ballx,bally,balld);
  
 
  //collision
 if(dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2){
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
  }
  if(dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2){
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
  }
  
  //scoring
  if(ballx < 0){
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }
  if(ballx > width){
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }

  //ballRestriction
  if(bally <= 25){
    vy = vy *-1;
    bally = 25;
  }
  
  if(bally >= height-25){
    vy = vy * -1;
    bally = height-25;
  }
  
  //paddleRestriction
 if(lefty < 100){
   lefty = 100;
 }
if(lefty > 500){
  lefty = 500;
}
if(righty<100){
  righty = 100;
}
if(righty > 500){
  righty = 500;
}
  
//winner
if(rightscore>5){
  mode = GAMEOVER1;
}

if(leftscore>5){
  mode = GAMEOVER;
}

}

void gameClicks(){
  
}
