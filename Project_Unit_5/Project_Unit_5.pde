//Cohen Brown Unit 5

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

void draw() {
  //y=600;
  //a=0;
  background(bkg);

  fill(purple);
  stroke(purple);
  rect(0,0,600,80);
  rect(0,0,80,600);
  rect(0,520,600,80);
  rect(520,0,80,600);
  
  
  //DEATHBALLZ 1
 

  //walls
  //p1
  if (player1x <= 90) {
    player1x = 93;
  }

  if (player1x >= 510) {
    player1x = 507;
  }

  if (player1y <= 90) {
    player1y = 93;
  }

  if (player1y >= 510) {
    player1y = 507;
  }

  //p2
  if (player2x <= 90) {
    player2x = 93;
  }

  if (player2x >= 510) {
    player2x = 507;
  }

  if (player2y <= 90) {
    player2y = 93;
  }

  if (player2y >= 510) {
    player2y = 507;
  }

  //p1
  strokeWeight(2);
  stroke(black);
  fill(red);
  circle(player1x, player1y, player1d);

  if (wKey) player1y = player1y -= 5;
  if (sKey) player1y = player1y += 5;
  if (aKey) player1x = player1x -= 5;
  if (dKey) player1x = player1x += 5;

  //p2
  strokeWeight(2);
  stroke(black);
  fill(blue);
  circle(player2x, player2y, player2d);

  if (upKey) player2y = player2y -= 5;
  if (downKey) player2y = player2y += 5;
  if (leftKey) player2x = player2x -= 5;
  if (rightKey) player2x = player2x += 5;

  //collision
  if (dist(player1x, player1y, player2x, player2y) <= player1d/2 + player2d/2) {
    player1x += (player1x - player2x)/4;
    player1y += (player1y - player2y)/4;

    player2x += (player2x - player1x)/4;
    player2y += (player2y - player1y)/4;
  }

  //Ball movment
  ball1x += vx;
  if (ball1x <= 50) vx = vx * -1.1;
  if (ball1x >= 550) vx = vx * -1.1;
  
  ball1y += vy;
  if (ball1y <= 50) vy = vy * -1.1;
  if (ball1y >= 550) vy = vy * -1.1;
  
  deathball(ball1x, ball1y);
 
  vx = constrain(vx, -10, 10);  
  vy = constrain(vy, -11, 11);
  //speed cap
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
  //ballbkg = get();
}

void keyPressed() {
  if (key == 'w') wKey = true;
  if (key == 's') sKey = true;
  if (key == 'd') dKey = true;
  if (key == 'a') aKey = true;

  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == RIGHT) rightKey = true;
  if (keyCode == LEFT) leftKey = true;
}

void keyReleased() {
  if (key == 'w') wKey = false;
  if (key == 's') sKey = false;
  if (key == 'd') dKey = false;
  if (key == 'a') aKey = false;

  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
  if (keyCode == RIGHT) rightKey = false;
  if (keyCode == LEFT) leftKey = false;
}
