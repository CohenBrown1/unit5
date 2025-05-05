//Cohen Brown Unit 5

color red = #FF0000;
color blue = #001BFF;
color white = #FFFFFF;
color black = #000000;
color ground = #483A3A;

//while loop
float y=600;
int a=0;

//player variables
float player1x,player1y,player1d;
float player2x,player2y,player2d;

//ball variables
float ball1x,ball1y,ball1d;
float ball2x,ball2y,ball2d;
float vx,vy;

//key board variables 
boolean wKey,aKey,sKey,dKey,upKey,leftKey,downKey,rightKey;

void setup () {
  size(600,600,P2D);
  
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
  vy = 3;
}

void draw() {
  
  while(y>=0){
  fill(random(0,225));
  rect(a,a,y,y);
  y=y-80;
  a=a+40;
  }
  
  //p1
  strokeWeight(2);
  stroke(black);
  fill(red);
  circle(player1x,player1y,player1d);
   
  if(wKey) player1y = player1y -= 5;
  if(sKey) player1y = player1y += 5;
  if(aKey) player1x = player1x -= 5;
  if(dKey) player1x = player1x += 5;
 
  //p2
  strokeWeight(2);
  stroke(black);
  fill(blue);
  circle(player2x,player2y,player2d);
   
  if(upKey) player2y = player2y -= 5;
  if(downKey) player2y = player2y += 5;
  if(leftKey) player2x = player2x -= 5;
  if(rightKey) player2x = player2x += 5;
}

void keyPressed() {
  if(key == 'w') wKey = true;
  if(key == 's') sKey = true;
  if(key == 'd') dKey = true;
  if(key == 'a') aKey = true;
   
  if(keyCode == UP) upKey = true;
  if(keyCode == DOWN) downKey = true;
  if(keyCode == RIGHT) rightKey = true;
  if(keyCode == LEFT) leftKey = true;
}
  
void keyReleased() {
  if(key == 'w') wKey = false;
  if(key == 's') sKey = false;
  if(key == 'd') dKey = false;
  if(key == 'a') aKey = false;
    
  if(keyCode == UP) upKey = false;
  if(keyCode == DOWN) downKey = false;
  if(keyCode == RIGHT) rightKey = false;
  if(keyCode == LEFT) leftKey = false;
}
