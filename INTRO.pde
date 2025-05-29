void intro() {
  
  background(bkg); 
  
  textSize(80);
  fill(200, 0, 225);
  textAlign(CENTER, CENTER);
  text("Bounce Brother", 300, 200);
  
  textSize(60);
  fill(200, 0, 225);
  textAlign(CENTER, CENTER);
  text("PRESS TO PLAY", 300, 400);
  
}

void introClicks() {

  mode = GAME;
}
