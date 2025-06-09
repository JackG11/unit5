 //Pong!
//JackGao

//modeframework


int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int GAMEOVER1 = 5;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;//paddles
float ballx, bally, balld; //ball
float vx, vy;
boolean AI;

//keyboard variables TRUEFALSE
boolean wkey, skey, upkey, downkey;

//scoring
int leftscore, rightscore, timer;

void setup() {
  size(800, 600);
  mode = GAME;

  //initilize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;

  //initilize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  //INITIlize key board variables
  wkey = skey = upkey = downkey = false;
  
  vx = random(-3,3);
  vy = random(-3,3);
  
  //initialize score
  rightscore = leftscore = 0;
  timer = 100;
  
  //initialize keyboard vars
  wkey = skey = upkey = downkey = false;

  
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  }else if (mode == GAMEOVER1){
    gameover1();
  } else {
    println("Mode error:" + mode);
  }
}
