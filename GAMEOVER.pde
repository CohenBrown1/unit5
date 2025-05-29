void gameOverRed() {
  stroke(black);
  fill(black);
  rect(0,0,600,600);
  textSize(32);
  fill(255, 0, 0);
  textAlign(CENTER, CENTER);
  text("GAME OVER BROTHER", width / 2, height / 2);
  noLoop(); // Stop the game
}

void gameOverBlue() {
  stroke(black);
  fill(black);
  rect(0,0,600,600);
  textSize(32);
  fill(0, 0, 225);
  textAlign(CENTER, CENTER);
  text("GAME OVER BROTHER", width / 2, height / 2);
  noLoop(); // Stop the game
}

void gameOverClicks() {
}
