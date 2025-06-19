void intro() {
  
  background(bkg); 
  
  fill(red);
  circle(200,300,25);
  
  fill(blue);
  circle(400,300,25);
  
  fill(purple);
  rect(10,160,580,80);
  textSize(80);
  fill(200, 0, 225);
  textAlign(CENTER, CENTER);
  text("Bounce Brother", 300, 190);
  
  fill(purple);
  rect(100,380,400,60);
  textSize(60);
  fill(200, 0, 225);
  textAlign(CENTER, CENTER);
  text("PRESS TO PLAY", 300, 400);
  
}

void introClicks() {

  mode = GAME;
}
