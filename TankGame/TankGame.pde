// TJ Bowen | April 14 2026 | TankGame 
PImage bg;
Tank tank1;

void setup() {
  size(750,750);
  bg = loadImage("bg3.png");
  tank1 = new Tank();
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg,0,0);
  tank1.display();
}

void keyPressed() {
  //tank1.move
  if (KeyCode == RIGHT) {
    tank1.move();
}
  if (key == 'w' || key == 'W') {
    tank1.move();
  } else if (key == 's' || key == 'S') {
    tank1.move();
  } else if (key == 'a' || key == 'A') {
    tank1.move();
  } else if (key == 'd' || key == 'D') {
    tank1.move();
  } 
}
