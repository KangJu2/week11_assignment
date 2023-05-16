class Hamburger {
  float x, y, speed;
  
  Hamburger(float startX, float startY, float startSpeed) {
    x = startX;
    y = startY;
    speed = startSpeed;
  }
  
  void display() {
    fill(200, 100, 50);
    ellipse(x, y+25, 200, 90);
    fill(46, 40, 40);
    circle(x, y+10, 5);
    fill(46, 40, 40);
    circle(x+50, y+10, 5);
    fill(40, 40, 40);
    circle(x-60, y+20, 5);
    fill(40, 40, 40);
    circle(x-20, y+30, 5);
    fill(40, 40, 40);
    circle(x+30, y+30, 5);
    fill(255, 255, 0);
    ellipse(x, y+65, 200, 20);
    fill(100, 170, 0);
    ellipse(x, y+80, 180, 20);
    fill(200, 100, 50);
    ellipse(x, y+80, 190, 70);
    fill(255, 0, 0);
    ellipse(x, y+90, 170, 20);
  }
  
  void move_automatic() {
    x += speed;
    if(x > width+100){
    x = -100;}
    else if(x < -100){
     x = width+100; 
    }
    y += speed;
    if (y > height+45) {
      y = -45;
    }
    else if(y < -45){
     y = height+45; 
    }
  }
  
  void move_keyboard() {
    if (keyPressed) {
      if (key == 'a') {
        x -= 3;
      } else if (key == 'd') {
        x += 3;
      } else if (key == 'w') {
        y -= 3;
      } else if (key == 's') {
        y += 3;
      }
    }
  }
  
  void move_mouse(){
   x = mouseX;
   y = mouseY;
  }
}
