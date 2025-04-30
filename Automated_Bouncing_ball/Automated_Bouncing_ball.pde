float ballx,bally,balld;
float vx,vy;
float ax, ay;

void setup() {
  size(600,600,P2D);
  ballx = width/2;
  bally = height/2;
  balld = 50;
  
  vx = 2;
  vy = 3;
  
  ax = 0;
  ay = 2;  
}

void draw () {
  strokeWeight(5);
  stroke(0);
  fill(255,0,0);
  circle(ballx,bally,balld);
  
  //movement
  ballx = ballx + vx;
  bally = bally + vy;
  
  vx = vx + ax;
  vy = vy + ay;
  
  //bounce code
  if(bally <= 25) {
    vy = vy * -0.95;
  }
  if(bally >= height) {
    vy = vy * -0.95;
  }
  if(ballx <= 0) {
    vx = vx * -0.95;
  }
  if(ballx >= width) {
    vx = vx * -0.95;
  }
}
