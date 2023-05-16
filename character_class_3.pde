class Punleu {
  float x, y, speed;
  
  Punleu(float startX, float startY, float startSpeed) {
    x = startX;
    y = startY;
    speed = startSpeed;
  }
  
  void display() {
    fill(0, 0, 255);
    ellipse(x, y+30, 200, 210);
    fill(255);
    // eye
    ellipse(x-40, y, 50, 50);
    ellipse(x+30, y, 50, 50);
    // black eye
    fill(0);
    ellipse(x-40, y, 20, 20);
    ellipse(x+30, y, 20, 20);
    fill(0, 255, 0);
    //mouth
    arc(x, y+75, 80, 50, 0, 3.14);
    fill(0, 255, 0);
  }
  
  void move_automatic() {
    x += speed;
    if(x > width+100){
    x = -100;}
    else if(x < -100){
     x = width+100; 
    }
    y += speed;
    if (y > height+105) {
      y = -105;
    }
    else if(y < -105){
     y = height+105; 
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
