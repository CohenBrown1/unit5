 color white = #FFFFFF;
 color black = #000000;
 color red = #FF0000;
 color blue = #001BFF;
 
 //player variables
 float x,y,d,x2,y2,d2;
 
 //key board variables
 boolean wKey,aKey,sKey,dKey,upKey,leftKey,downKey,rightKey;
 
 void setup () {
   size(600,600,P2D);
   x = width/2;
   y = height/2;
   d = 50;
   
   x2 = width/2;
   y2 = height/2;
   d2 = 50;
 }
 
 void draw() {
   background(white);
   
   //p1
   strokeWeight(2);
   stroke(black);
   fill(red);
   circle(x,y,d);
   
   if(wKey) y = y - 5;
   if(sKey) y = y + 5;
   if(aKey) x = x - 5;
   if(dKey) x = x + 5;
   
   strokeWeight(2);
   stroke(black);
   fill(blue);
   circle(x2,y2,d2);
   
   if(upKey) y2 = y2 - 5;
   if(downKey) y2 = y2 + 5;
   if(leftKey) x2 = x2 - 5;
   if(rightKey) x2 = x2 + 5;
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
   
   
   
