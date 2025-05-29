//Cohen Brown Unit 5
float bounceFactor = 3;

int mode;
final int INTRO = 1;
final int GAME  = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

color red = #FF0000;
color blue = #001BFF;
color white = #FFFFFF;
color black = #000000;
color purple = #6700A7;
color ground = #483A3A;

//while loop
float y=600;
float x=600;
int a=0;

//player variables
float player1x, player1y, player1d;
float player2x, player2y, player2d;

//ball variables
float ball1x, ball1y, ball1d;
float ball2x, ball2y, ball2d;
float vx, vy;
float deathball;

//key board variables
boolean wKey, aKey, sKey, dKey, upKey, leftKey, downKey, rightKey;

PImage bkg;

void setup () {
  size(600, 600, P2D);
  
  mode = INTRO;
  
  player1x = width/2;
  player1y = height/2;
  player1d = 25;

  player2x = width/2;
  player2y = height/2;
  player2d = 25;

  ball1x = width/2;
  ball1y = 50;
  ball1d = 50;

  ball2x = width/2;
  ball2y = 50;
  ball2d = 50;

  vx = 2;
  vy = 2;

  

  
  while (y>=0) {
    fill(random(0, 225));
    rect(a, a, y, y);
    y=y-80;
    a=a+40;
  }
  bkg = get(0, 0, width, height);
  
}

void deathball(float x, float y) {
  pushMatrix();
  translate(x, y);
  ball();
  popMatrix();
}

void ball() {
  x=100;
  noStroke();
  while (x>=0) {
    fill( map(x, 100, 10, 255, 0), 0, map(x, 100, 10, 255, 0) );
    ellipse(0, 0, x, x);
    x=x-10;
  }
}

void draw() {
  println(wKey, aKey, sKey, dKey);
  
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameOverBlue();
  } else if (mode == GAMEOVER) {
    gameOverRed();
  }
}
