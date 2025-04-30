float ballx, bally, balld;

float vx, vy;

float ax, ay;

//keyboard variables
boolean wKey, sKey, aKey, dKey, upKey, downKey, leftKey, rightKey;

void setup(){
 size(600,600,P2D);
 ballx = width/2;
 bally = height/2;
 balld = 50;
 
 vx = 8;
 vy = -4;
 
 ax = 3;
 ay = 2;
}

void draw(){
  strokeWeight(5);
  stroke(0);
  fill(25,56,90);
  circle(ballx,bally,balld);
  
  //movement
  ballx = ballx + vx;
  bally = bally + vy;
  
  //movement player
  if(wKey) player1y -=5;
  
  
  
  
  
  
  //gravity
  vx = vx + ax;
  vy = vy + ay;
  
  //bouncing code
  if (bally<=0){//top
  vy = vy*-0.95;
  }
  if (bally>= height){//bottom
  vy = vy* -0.95;
  }
    if (ballx<= 0){
  vx = vx* -0.95;
  }
      if (ballx>= width){
  vx = vx* -0.95;
  }
}
