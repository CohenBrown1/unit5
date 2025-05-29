void game() {
  
  background(bkg);

  fill(purple);
  stroke(purple);
  rect(0,0,600,80);
  rect(0,0,80,600);
  rect(0,520,600,80);
  rect(520,0,80,600);

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
    player1x += (player1x - player2x)/bounceFactor;
    player1y += (player1y - player2y)/bounceFactor;

    player2x += (player2x - player1x)/bounceFactor;
    player2y += (player2y - player1y)/bounceFactor;
  }

  //Ball movment
  ball1x += vx;
  if (ball1x <= 50) vx = vx * -1.1;
  if (ball1x >= 550) vx = vx * -1.1;
  
  ball1y += vy;
  if (ball1y <= 50) vy = vy * -1.1;
  if (ball1y >= 550) vy = vy * -1.1;
  
  deathball(ball1x, ball1y);
  
  //speedcap
  vx = constrain(vx, -10, 10);  
  vy = constrain(vy, -11, 11);
  

  //game over que
    if (dist(player1x, player1y, ball1x, ball1y) <= (player1d/2 + ball1d)) {
    gameOverRed();
  }
  
  if (dist(player2x, player2y, ball1x, ball1y) <= (player2d/2 + ball1d)) {
    gameOverBlue();
  }
}

void gameClicks() {
  
}
