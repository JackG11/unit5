color white = #ffffff;
color black = #000000;


//player variables
float x,y, d;

void setup(){
  size(600,600,P2D);
  x = width/2;
  y = height/2;
  d = 100;
}

void draw(){
  background(white);
  //player1
  circle(x,y,d);
  
}
  
