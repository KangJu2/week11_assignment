class Kerbi{
  float x, y, speed;
  
  Kerbi(float startX, float startY, float startSpeed) {
    x = startX;
    y = startY;
    speed = startSpeed;
  }
  
  void display(){
    fill(250,197,237);
    circle(x,y,100);
    fill(34,29,90);
    ellipse(x-15,y-15,15,35); //왼쪽 눈
    ellipse(x+15,y-15,15,35); //오른쪽 눈
    fill(256,256,256);
    ellipse(x-15,y-22.5,10,15); //왼쪽 눈동자
    ellipse(x+15,y-22.5,10,15); //오른쪽 눈동자
    fill(255,124,148);
    ellipse(x-25,y+5,15,5); //왼족 볼
    ellipse(x+25,y+5,15,5); //오른쪽 볼
    fill(256,0,0);
    arc(x,y+10,40,40,0,PI); //입
    fill(250,197,237);
    circle(x-60,y,25); //왼쪽 손
    circle(x+60,y,25); //오른쪽 손
    fill(255,77,122);
    ellipse(x-35,y+50,45,17.5); //왼쪽 발
    ellipse(x+35,y+50,45,17.5); //오른쪽 발
  }
  
  void move_automatic() {
    x += speed;
    if(x > width+50){
      x = -50;}
    else if(x < -50){
     x = width+50; 
    }
    y += speed;
    if (y > height+50) {
      y = -50;
    }    
     else if(y < -50){
     y = height+50; 
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
