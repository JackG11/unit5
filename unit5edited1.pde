color white = #ffffff;
color black = #000000;

//ball variables
float ballx, bally, balld;
float vx, vy;

//player variables
float x,y, d;
float player1x, player1y, player1d;
float player2x, player2y, player2d;

//keyboard variables
boolean wKey, sKey, aKey, dKey, upKey, downKey, leftKey, rightKey;
 //score
 int points;
 
 
void setup(){
  size(600,600,P2D);
  player1x = width/2;
  player1y = height/2;
  player1d = 100;
  
  player2x = width/2;
  player2y = height/2;
  player2d = 100;
  
  //ballsetup
  ballx = width/2;
  bally = 50;
  balld = 50;
  
  vx = 2;
  vy = 3;
}

void draw(){
  background(white);
  
  //player1
  strokeWeight(5);
  stroke(black);
  fill(white);
  circle(player1x, player1y,player1d);
  
  //player2
   strokeWeight(5);
  stroke(black);
  fill(white);
  circle(player2x, player2y,player2d); 
  
  //ball
  strokeWeight(5);
  stroke(0);
  fill(255, 0,0);
  circle(ballx, bally, balld);
  
    //movement
  ballx = ballx + vx;
  bally = bally + vy;
  
//movement player
if(wKey) player1y -= 5;
if(sKey) player1y += 5;
if(aKey) player1x -=5;
if(aKey) player1x +=5;

if(upKey) player1y -= 5;
if(downKey) player1y += 5;
if(leftKey) player1x -=5;
if(rightKey) player1x +=5;

//bouncingcode
if(bally <=0){//top
vy= vy * -1;
}
if(ball
}

void keyPressed(){
  if(key == 'w') wKey = true;
  if(key == 's') sKey = true;
  if(key == 'a') aKey = true;
  if(key== 'd') dKey = true;
  if(key == 'up') upKey = true;
  if(key == 'down') downKey = true;
  if(key == 'left') leftKey = true;
  if(key == 'right') rightKey = true;
}
void keyReleased(){
  if(key == 'w') wKey = false;
  if(key == 's') sKey = false;
  if(key == 'a') aKey =false;
  if(key== 'd') dKey = false;
  if(key == 'up') upKey = false;
  if(key == 'down') downKey = false;
  if(key == 'left') leftKey = false;
  if(key == 'right') rightKey = false;
}
  
  
