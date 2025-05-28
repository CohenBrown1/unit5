void intro() {
  y=600;
  a=0;
  while (y>=0) {
    fill(random(0, 225));
    rect(a, a, y, y);
    y=y-80;
    a=a+40;
  }
  textSize(80);
  fill(200, 0, 225);
  textAlign(CENTER, CENTER);
  text("Bounce Brother", 300, 200);
}

void introClicks() {

  mode = GAME;
}
