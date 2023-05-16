Kerbi[] myKerbi;
Hamburger[] myHamburger;
Punleu[] myPunleu;

void setup(){
  size(700,700);
  myKerbi = new Kerbi[2];
  for(int i = 0; i < 2; i++){
    myKerbi[i] = new Kerbi(random(width), random(height), random(-5, 5));
  }
  myHamburger = new Hamburger[2];
  for(int i = 0; i < 2; i++){
    myHamburger[i] = new Hamburger(random(width), random(height), random(-5, 5));
  }
  myPunleu = new Punleu[2];
  for(int i = 0; i < 2; i++){
    myPunleu[i] = new Punleu(random(width), random(height), random(-5, 5));
  }
}

void draw(){
  background(220);
  myKerbi[0].display();
  myKerbi[0].move_mouse(); // mouse
  myKerbi[1].display();
  myKerbi[1].move_automatic(); // auto
  myHamburger[0].display();
  myHamburger[0].move_automatic(); // auto
  myHamburger[1].display();
  myHamburger[1].move_automatic(); // auto
  myPunleu[0].display();
  myPunleu[0].move_automatic(); // auto
  myPunleu[1].display();
  myPunleu[1].move_keyboard(); // keyboard
}
